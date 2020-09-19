<?php
	include "header3.php";
	include "admin_access.php";
	$url="localhost";
	$user="root";
	$pwd="";
	$db_name="spardha";
	$conn=mysqli_connect($url,$user,$pwd,$db_name);
	if(!$conn)
	{
		die("Connection Rejected".mysqli_connect_error()) ;
	}
	$sql ="select * from profile where staff_status=0 or staff_status=1";
	$result = mysqli_query($conn,$sql);
	
	echo "<table border='1'>
		<tr>
		<th>Staff Id</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Status</th>
		</tr>";

		while($row = mysqli_fetch_array($result))
		{
		echo "<tr>";
		echo "<td>" . $row['staff_id'] . "</td>";
		echo "<td>" . $row['first_name'] . "</td>";
		echo "<td>" . $row['last_name'] . "</td>";
		echo "<td>" . $row['staff_status'] . "</td>";
		echo "<td><a href='edit_status.php?staff_id=".$row['staff_id']."'>Update</a></td>";
		/*echo "<td><form action='".$_SERVER['PHP_SELF']."' method='post'><input type='hidden' name='staff_id' value='$row['staff_id']'><input type='submit' name='submit' value='Delete'></form></td>";
		echo "<td><a href='delete.php?rollno=$row['']'>Delete</a></td>";*/
		echo "</tr>";
		}
		echo "</table>";

mysqli_close($conn);

include "footer.php";
?>