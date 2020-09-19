<?php
 $url="localhost";
 $user="root";
 $password="";
 $db="spardha";
 $name1=$_POST['name'];
 $email=$_POST['email'];
 $question=$_POST['question'];
 
 $con=mysqli_connect($url,$user,$password,$db);
 if(!$con)
 {
   die("connection failed".mysqli_connect_error());
 }
 $sql="insert into faq(name1,email,que) values ('$name1','$email','$question')";
 $result=mysqli_query($con,$sql);
 if($result)
 {
	header("Location: faq1.php?id=success");
 }
 mysqli_close($con);
 ?>