<?php
	require_once('email/class.phpmailer.php');
	include("class.smtp.php"); // optional, gets called from within class.phpmailer.php if not already loaded		

	$mail = new PHPMailer();
	$mail->IsSMTP(); // telling the class to use SMTP
	$mail->SMTPDebug  = 0;                     // enables SMTP debug information (for testing)
	$mail->SMTPAuth   = true;                  // enable SMTP authentication
	$mail->SMTPSecure = "ssl";                 // sets the prefix to the servier
	$mail->Host       = "smtp.gmail.com";      // sets GMAIL as the SMTP server
	$mail->Port       = 465;                   // set the SMTP port for the GMAIL server
	$mail->Username   = "spardha.attendance@gmail.com";  // GMAIL username
	$mail->Password   = "9492863910";            // GMAIL password

	$mail->SetFrom('', 'Srkrec Attendance'); // Change the name as you want
	$mail->Subject    = "Your ward is absent today..";
	$mail->Body = "This email is to inform you that, your ward is absent for the particular class today..please take care!! ";
	$mail->AddAddress($email);
	$mail->Send();
	include "footer.php"; ?> 
	
