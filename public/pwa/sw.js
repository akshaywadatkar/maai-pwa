// Service Worker for PWA
const CACHE_NAME = 'sindhutai-profile-v1';
const urlsToCache = [
    '/',
    '/profile',
    '/pwa/css/style.css',
    '/pwa/js/app.js',
    '/pwa/manifest.json',
    'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css'
];

// Install event
self.addEventListener('install', event => {
    console.log('Service Worker installing...');
    event.waitUntil(
        caches.open(CACHE_NAME)
            .then(cache => {
                console.log('Caching files...');
                return cache.addAll(urlsToCache);
            })
            .then(() => {
                console.log('Files cached successfully');
                return self.skipWaiting();
            })
            .catch(error => {
                console.error('Caching failed:', error);
            })
    );
});

// Activate event
self.addEventListener('activate', event => {
    console.log('Service Worker activating...');
    event.waitUntil(
        caches.keys().then(cacheNames => {
            return Promise.all(
                cacheNames.map(cacheName => {
                    if (cacheName !== CACHE_NAME) {
                        console.log('Deleting old cache:', cacheName);
                        return caches.delete(cacheName);
                    }
                })
            );
        }).then(() => {
            console.log('Service Worker activated');
            return self.clients.claim();
        })
    );
});

// Fetch event
self.addEventListener('fetch', event => {
    console.log('Fetching:', event.request.url);
    
    event.respondWith(
        caches.match(event.request)
            .then(response => {
                // Return cached version or fetch from network
                if (response) {
                    console.log('Serving from cache:', event.request.url);
                    return response;
                }
                
                return fetch(event.request)
                    .then(response => {
                        // Check if we received a valid response
                        if (!response || response.status !== 200 || response.type !== 'basic') {
                            return response;
                        }
                        
                        // Clone the response
                        const responseToCache = response.clone();
                        
                        // Add to cache
                        caches.open(CACHE_NAME)
                            .then(cache => {
                                cache.put(event.request, responseToCache);
                            });
                        
                        return response;
                    })
                    .catch(error => {
                        console.error('Fetch failed:', error);
                        
                        // Return offline page or fallback
                        if (event.request.destination === 'document') {
                            return caches.match('/');
                        }
                        
                        // Return placeholder image for failed image requests
                        if (event.request.destination === 'image') {
                            return new Response(
                                '<svg width="400" height="300" viewBox="0 0 400 300" fill="none" xmlns="http://www.w3.org/2000/svg"><rect width="400" height="300" fill="#F0F0F0"/><circle cx="200" cy="120" r="40" fill="#DDD"/><path d="M120 180L160 140L240 220L320 140L380 200V240H20V200L120 180Z" fill="#DDD"/><circle cx="160" cy="100" r="10" fill="#CCC"/><text x="200" y="270" text-anchor="middle" fill="#999" font-family="sans-serif" font-size="14">Image not available</text></svg>',
                                {
                                    headers: {
                                        'Content-Type': 'image/svg+xml',
                                    },
                                }
                            );
                        }
                        
                        throw error;
                    });
            })
    );
});

// Background sync for offline actions
self.addEventListener('sync', event => {
    if (event.tag === 'background-sync') {
        console.log('Background sync triggered');
        event.waitUntil(doBackgroundSync());
    }
});

// Push notifications
self.addEventListener('push', event => {
    console.log('Push received:', event);
    
    const options = {
        body: event.data ? event.data.text() : 'New update available!',
        icon: '/pwa/images/icon-192x192.png',
        badge: '/pwa/images/badge-72x72.png',
        tag: 'profile-update',
        data: {
            url: '/'
        },
        actions: [
            {
                action: 'view',
                title: 'View Profile',
                icon: '/pwa/images/icon-192x192.png'
            },
            {
                action: 'close',
                title: 'Close',
                icon: '/pwa/images/icon-192x192.png'
            }
        ]
    };
    
    event.waitUntil(
        self.registration.showNotification('Dr. Sindhutai Sapkal Profile', options)
    );
});

// Notification click handler
self.addEventListener('notificationclick', event => {
    console.log('Notification clicked:', event);
    
    event.notification.close();
    
    if (event.action === 'view') {
        event.waitUntil(
            clients.openWindow(event.notification.data.url)
        );
    }
});

// Background sync function
async function doBackgroundSync() {
    try {
        // Sync any pending data
        console.log('Performing background sync...');
        
        // Example: Send any cached form submissions
        const cache = await caches.open(CACHE_NAME);
        const requests = await cache.keys();
        
        for (const request of requests) {
            if (request.url.includes('/contact') && request.method === 'POST') {
                try {
                    await fetch(request);
                    await cache.delete(request);
                    console.log('Synced cached request:', request.url);
                } catch (error) {
                    console.error('Failed to sync request:', error);
                }
            }
        }
        
        console.log('Background sync completed');
    } catch (error) {
        console.error('Background sync failed:', error);
    }
}

// Handle cache storage quota
self.addEventListener('quotaexceeded', event => {
    console.log('Storage quota exceeded');
    event.waitUntil(
        caches.keys().then(cacheNames => {
            return Promise.all(
                cacheNames.slice(0, -1).map(cacheName => {
                    console.log('Deleting cache to free space:', cacheName);
                    return caches.delete(cacheName);
                })
            );
        })
    );
});

// Skip waiting when updated
self.addEventListener('message', event => {
    if (event.data && event.data.type === 'SKIP_WAITING') {
        self.skipWaiting();
    }
});

// Preload critical resources
self.addEventListener('install', event => {
    const preloadUrls = [
        '/pwa/css/style.css',
        '/pwa/js/app.js',
        'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css'
    ];
    
    event.waitUntil(
        caches.open(CACHE_NAME)
            .then(cache => cache.addAll(preloadUrls))
    );
});

// Network-first strategy for dynamic content
const networkFirstUrls = ['/api/', '/contact'];

self.addEventListener('fetch', event => {
    const url = new URL(event.request.url);
    
    if (networkFirstUrls.some(pattern => url.pathname.startsWith(pattern))) {
        event.respondWith(
            fetch(event.request)
                .then(response => {
                    const responseClone = response.clone();
                    caches.open(CACHE_NAME)
                        .then(cache => cache.put(event.request, responseClone));
                    return response;
                })
                .catch(() => {
                    return caches.match(event.request);
                })
        );
    }
});