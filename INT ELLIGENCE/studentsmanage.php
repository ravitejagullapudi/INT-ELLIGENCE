<?php
	include "header3.php";
	include "admin_access.php"?>

<form action="<?php echo $_SERVER['PHP_SELF'] ?>"> 
	<div class="form-group col-md-6">
		<label>Branch:</label>
		<select class="form-control" name="branch">
			<option value="1">ECE</option>
			<option value="2">CSE</option>
			<option value="3">IT</option>
			<option value="4">CIVIL</option>
			<option value="5">MECH</option>
			<option value="6">EEE</option>
		</select>
		
		<div class="form-group col-md-6">
			<label>Section:</label>
			<select class="form-control" name="section">
				<option value="A">A</option>
				<option value="B">B</option>
				<option value="C">C</option>
				<option value="D">D</option>
				<option value="E">E</option>
			</select>
		</div>
	</div>
	<h2>Date:</h2><input type="date" name="date1" />
	<center><input type="submit" name="Proceed" /></center> 
</form>

<?php
	$url="localhost";
	$user="root";
	$pwd="";
	$db_name="spardha";
	$conn=mysqli_connect($url,$user,$pwd,$db_name);
	if(!$conn)
	{
		die("Connection Rejected".mysqli_connect_error()) ;
	}

	if(isset($_GET["branch"]))
	{
		if(isset($_GET["section"]))
		{
			if(isset($_GET["date1"]))
			{
					$branch=$_GET["branch"];
					$date=$_GET["date1"];
					$section=$_GET["section"];
					$sql="select * from sample_att where date='$date' and roll in(select reg_no from student_profile where branch='$branch');";
					$res=mysqli_query($conn,$sql);
					
					if(mysqli_num_rows($res))
					{
						include "sample1.php";
					}
			}
		}
	}
?>