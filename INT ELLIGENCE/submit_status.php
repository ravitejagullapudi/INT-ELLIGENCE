
<?php
	include "header3.php";
	include "admin_access.php";

   $staff_id=$_POST["staff_id"];
   $status=$_POST["status"];
   $con = mysqli_connect("localhost", "root", "", "spardha");
   $query="update  profile set staff_status=$status where staff_id='$staff_id'";
   mysqli_query($con, $query);
   
   echo  "status has been altered....!...continue to ..<a href='usermanage.php'>Manage users</a>";
   
   include "footer.php";
?>
