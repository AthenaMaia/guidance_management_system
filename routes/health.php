<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;

// Test route to check application health
Route::get('/health-check', function () {
    try {
        // Check database connection
        DB::connection()->getPdo();
        
        // Check session
        session()->put('test', 'working');
        $sessionTest = session()->get('test');
        
        return response()->json([
            'status' => 'healthy',
            'database' => 'connected',
            'session' => $sessionTest === 'working' ? 'working' : 'failed',
            'environment' => app()->environment(),
            'app_url' => config('app.url'),
            'asset_url' => env('ASSET_URL'),
        ]);
    } catch (\Exception $e) {
        return response()->json([
            'status' => 'error',
            'error' => $e->getMessage(),
            'environment' => app()->environment(),
        ], 500);
    }
});
