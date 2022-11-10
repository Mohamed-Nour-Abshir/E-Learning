<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Kaizen IT LTD',
            'email' => 'info@kaizenitbd.com',
            'password' => Hash::make('123456789'),
            'phone' => '01254365478',
            'address' => 'Green Road, Dhaka',
            'designation' => 'Super Admin',
            'image' => 'kaizen.png',
            // 'admission_id' => NULL,
        ]);
    }
}