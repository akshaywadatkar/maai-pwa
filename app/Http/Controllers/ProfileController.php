<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function index()
    {
        return view('profile');
    }

    public function profile()
    {
        return view('profile');
    }

    public function team()
    {
        $teamMembers = [
            [
                'name' => 'Dr. Sindhutai Sapkal',
                'title' => 'Social Worker & Philanthropist',
                'image' => '/pwa/images/maai-pwa.jpg',
                'description' => 'Known as the Mother of Orphans, dedicated her life to caring for abandoned children.',
                'achievements' => [
                    'Padma Shri Award 2021',
                    'Mother Teresa Award',
                    'Ahilyabai Holkar Award',
                    'Over 1400 children adopted'
                ],
                'biography' => 'Born into poverty in Maharashtra, Dr. Sindhutai Sapkal overcame tremendous hardships to become one of India\'s most revered social workers. After being abandoned by her husband while pregnant, she dedicated her life to caring for orphaned and abandoned children. She has been instrumental in establishing numerous orphanages and has personally cared for over 1,400 children, earning her the title "Mother of Orphans". Her life story has inspired millions and has been the subject of several films and documentaries.'
            ]
        ];

        return view('profile', compact('teamMembers'));
    }
}