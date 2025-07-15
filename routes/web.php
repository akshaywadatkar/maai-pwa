<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Main profile page
Route::get('/', [ProfileController::class, 'index'])->name('home');
Route::get('/profile', [ProfileController::class, 'profile'])->name('profile');
Route::get('/team', [ProfileController::class, 'team'])->name('team');

// PWA specific routes
Route::get('/manifest.json', function () {
    return response()->file(public_path('pwa/manifest.json'))
        ->header('Content-Type', 'application/json');
})->name('manifest');

Route::get('/sw.js', function () {
    return response()->file(public_path('pwa/sw.js'))
        ->header('Content-Type', 'application/javascript');
})->name('service-worker');

// API routes for PWA functionality
Route::prefix('api')->group(function () {
    Route::post('/contact', function () {
        // Handle contact form submissions
        return response()->json(['message' => 'Message sent successfully']);
    });
    
    Route::get('/profile-data', function () {
        // Return profile data as JSON for PWA
        return response()->json([
            'name' => 'Dr. Sindhutai Sapkal',
            'title' => 'Social Worker & Philanthropist',
            'subtitle' => 'Mother of Orphans',
            'stats' => [
                ['label' => 'Children Adopted', 'value' => '1400+'],
                ['label' => 'Years of Service', 'value' => '50+'],
                ['label' => 'Awards Received', 'value' => '200+']
            ],
            'achievements' => [
                [
                    'title' => 'Padma Shri Award',
                    'year' => '2021',
                    'description' => 'India\'s fourth highest civilian honor'
                ],
                [
                    'title' => 'Mother Teresa Award',
                    'year' => '2010',
                    'description' => 'For selfless service to humanity'
                ],
                [
                    'title' => 'Ahilyabai Holkar Award',
                    'year' => '2017',
                    'description' => 'For women\'s empowerment'
                ]
            ]
        ]);
    });
});

// Fallback route for PWA
Route::fallback(function () {
    return view('profile');
});