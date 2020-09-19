<?php include "header1.php"; ?> 
Successfully Registered..Check your mail!<br><br>
Please <a href="login.php" >login</a>..!

<?php
	$fname=$_POST["fname"];
	$lname=$_POST["lname"];
	$phno=$_POST["phno"];
	$email=$_POST["email"];
	$crepass=$_POST["crepass"];
	$conpass=$_POST["conpass"];
	$s_id=$_POST["s_id"];
	$spc=$_POST["spc"];
	require_once('email/class.phpmailer.php');
	include("email/class.smtp.php"); // optional, gets called from within class.phpmailer.php if not already loaded		
		
  $mail = new PHPMailer();
  $mail->IsSMTP(); // telling the class to use SMTP
  $mail->SMTPDebug  = 0;                     // enables SMTP debug information (for testing)
  $mail->SMTPAuth   = true;                  // enable SMTP authentication
  $mail->SMTPSecure = "ssl";                 // sets the prefix to the servier
  $mail->Host       = "smtp.gmail.com";      // sets GMAIL as the SMTP server
  $mail->Port       = 465;                   // set the SMTP port for the GMAIL server
  $mail->Username   = "spardha.attendance@gmail.com";  // GMAIL username
  $mail->Password   = "9492863910";            // GMAIL password

  $mail->SetFrom('srkrec@gmail.com', 'Srkrec Attendance'); // Change the name as you want
  $mail->Subject    = " $fname Successfully registered" ;
  $mail->Body = "You are successfully registered and You will get login access soon...
  \n You details are:\n Staff_id: $s_id\n  Password: $conpass \n Mobile: $phno \n special code is : $spc";
  $mail->AddAddress($email);

  $mail->Send();

  echo "<br><br><font color='green' size='3'><b>Email has been Successfully Sent!</b></font></center>"; 	  

  ?>

<?php include "footer.php"; ?> 
	
