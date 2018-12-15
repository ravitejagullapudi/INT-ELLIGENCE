<?php
include "header3.php";
include "admin_access.php";

$staff_id=$_GET['staff_id'];

$con = mysqli_connect("localhost", "root", "", "spardha");

$query="select staff_status from profile where staff_id='$staff_id'";

$result = mysqli_query($con, $query);

$row=mysqli_fetch_assoc($result);
?>
<h2>Student Registration</h2>
<form action='submit_status.php' method='post'>
Selected Staff ID: <?php echo $staff_id; ?><input type="hidden" name="staff_id" id="staff_id" value='<?php echo $staff_id; ?>'><br>
Status:<input type="radio" name="status" value="1" id="1" 

<?php
 
  $status=$row['staff_status'];
  
  if($status == '1')
    {
	  echo "checked";
    }
?>


>1
<input type="radio" name="status" value="0"
<?php
 
  $status=$row['staff_status'];
  
  if($status == '0')
    {
	  echo "checked";
    }
?>

>0<br>
<input type='submit' value='Change_status'>
</form>

<?php include "footer.php"; ?>