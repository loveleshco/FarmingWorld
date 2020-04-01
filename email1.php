<?php


  
   include ("conn.php");
   $email=$_POST['email'];
   $mobile=$_POST['mobile'];
   
   $sql="insert into subscription(email,mobile) values('$email','$mobile')";
   mysqli_query($conn,$sql);

   require './PHPMailer/PHPMailerAutoload.php';
   $mail = new PHPMailer(true);
try{
$mail->isSMTP(); 
$mail->SMTPDebug = 1;
$mail->Host = 'smtp.gmail.com'; // Which SMTP server to use.
$mail->Port = 465; // Which port to use, 587 is the default port for TLS security.
$mail->SMTPSecure = 'ssl'; // Which security method to use. TLS is most secure.
$mail->SMTPAuth = true; // Whether you need to login. This is almost always required.
$mail->Username = "loveleshcolaco.18@gmail.com"; // Your Gmail address.
$mail->Password = "sfit@project123"; // Your Gmail login password or App Specific Password.



$mail->setFrom('onlineelectronicstore@example.com', 'YogaStudio'); // Set the sender of the message.
$mail->addAddress($email, $name); // Set the recipient of the message.
$mail->Subject = 'Registration'; // The subject of the message.

$mail->addAddress('loveleshcolaco.12@gmail.com','lovelesh');

// Choose to send either a simple text email...
$mail->Body = 'thanks for registration'; // Set a plain text body.

// ... or send an email with HTML.
//$mail->msgHTML(file_get_contents('contents.html'));
// Optional when using HTML: Set an alternative plain text message for email clients who prefer that.
//$mail->AltBody = 'This is a plain-text message body'; 

// Optional: attach a file
//$mail->addAttachment('images/phpmailer_mini.png');

if ($mail->send()) {
    echo "Your message was sent successfully!";
} else {
    echo "Mailer Error: " . $mail->ErrorInfo;
}
}
catch (Exception $e) {
    echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
}



?>