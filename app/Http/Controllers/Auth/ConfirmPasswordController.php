<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Auth\Events\Verified;
use Illuminate\Support\Facades\Hash;

class ConfirmPasswordController extends Controller
{
    // ...

    public function confirm(Request $request)
    {
        // Example: Find the user by email and perform account confirmation logic
        $email = $request->input('email');
        $user = User::where('email', $email)->first();

        if (!$user) {
            return response()->json(['error' => 'User not found.'], 404);
        }

        if ($user->is_confirmed) {
            return response()->json(['message' => 'Account already confirmed.'], 200);
        }

        // Your account confirmation logic here
        // Update the email_verified_at column with the current timestamp
        $user->email_verified_at = now();
      

        // You may also validate the user's password before confirming
        if (!Hash::check($request->input('password'), $user->password)) {
            return response()->json(['error' => 'Invalid password.'], 422);
        }

        $user->save();

        // Fire the event to indicate that the user has been verified
        event(new Verified($user));

        return redirect()->route('home'); // Example: Redirect to the dashboard
    }
}