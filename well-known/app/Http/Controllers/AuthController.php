<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Auth\Events\PasswordReset;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Str;
use PHPMailer\PHPMailer\PHPMailer;

class AuthController extends Controller
{
    //
    function factoryPassword($uid)
    {
$user=User::find($uid);
$user->password=Hash::make('CleverStaff');
$user->save();
$mailer=new PHPMailer();
$mailer->Body='Your password was reset.Your email is '.$user->email.' and your password is CleverStaff';
$mailer->Subject='Password Reset';
$mailer->setFrom('admin@clevers.ac.ke','Clevers Schools');
$mailer->addAddress($user->email);
$mailer->send();
$mailer->clearAddresses();
$mailer->clearAllRecipients();
return back()->with(['type'=>'success','message'=>'Check email for new credentials','title'=>'Password Reset Successfully']);
    }
    function addStaffRole(Request $request)
    {
        User::find($request->uid)->assignRole($request->role);
        return back();
    }
    function addStaff(Request $request)
    {
        $exists=User::where('email',$request->email)->first();
        if ($exists==null){
            $exists=User::create([
                'name' => $request->name,
                'password' => Hash::make($request->phone),
                'email' => $request->email
            ]);
        }
        $exists->assignRole($request->role);
        $exists->password=Hash::make($request->phone);
        $exists->save();
        $mail=new PHPMailer();
        $mail->setFrom('admin@clevers.ac.ke','Clevers Admin');
        $mail->Subject='New Account Information';
        $mail->Body='Username:'.$request->email.'.Password:'.$request->phone;
        $mail->addAddress($request->email);
        $mail->send();
        $mail->clearAddresses();
        $mail->clearAllRecipients();
        return back();

    }
    function removeRole($id,$role)
    {
        $user=User::find($id);
        $user->removeRole($role);
        $user->save();
        return back();
    }
    function resetPassword(Request $request)
    {
        $request->validate([
            'token' => 'required',
            'email' => 'required|email',
            'password' => 'required|confirmed',
        ]);

        $status = Password::reset(
            $request->only('email', 'password', 'password_confirmation', 'token'),
            function (User $user, string $password) {
                $user->forceFill([
                    'password' => Hash::make($password)
                ])->setRememberToken(Str::random(60));

                $user->save();

                event(new PasswordReset($user));
            }
        );
        return $status === Password::PASSWORD_RESET
            ? redirect('/login')->with('status', __($status))
            : back()->withErrors(['email' => [__($status)]]);

    }
    function forgotPassword(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
        ]);

        $status = Password::sendResetLink(
            $request->only('email')
    );

        return $status === Password::RESET_LINK_SENT
            ? back()->with('status', __($status))
            : back()->withErrors(['email' => __($status)]);

    }

    function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/login');
    }
    function loginUser(Request $request)
    {
        $request->validate([
            'email'=>'required',
            'password'=>'required'
        ]);
        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials, $request->filled('remember'))) {
            $request->session()->regenerate();

            return redirect('/');
        }
        return back()->withErrors([
            'email' => 'The provided credentials do not match our records.',
        ]);

    }
}
