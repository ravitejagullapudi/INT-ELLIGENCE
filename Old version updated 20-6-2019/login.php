<?php include "header.php" ?>
<?php include "header1.php" ?>
<script>
	function validate()
	{

		var sid=document.getElementById("sid").value;
		var pwd=document.getElementById("pwd").value;
		var sidreg=/^\d{4,5}$/;
		var pwdreg=/^[A-Z][a-z][1-9][\.\$\!\^\&\@\#\%\*]$/;// at least one number, one lowercase and one uppercase letter at least six characters

		if(!sid.match(sidreg))
		{
			alert("Invalid Staff id!");

		}
		else
		{
			if(!pwd.match(pwdreg))
			{
				alert("Invalid password!");

			}
		}
	}
</script>
<div>
  <form role="form" action="index.php" method="POST">
	<label for="staff_id">Staff Id: </label>
	<input type="text" id="sid" name="staff_id" placeholder="Staff Identification no..">

	<label for="pwd">Password: </label>
	<input type="password" id="pwd" name="password" placeholder="Password..">
	<label for="pwd">Special Code: </label>
	<input type="password" id="spcl" name="spcl" placeholder="Special code..">
	<br>
	<center>
		<input type="submit" value="Submit" onclick="validate()">
	</center>
  </form>
  
  <center><?php
	   if(isset($_GET['id']))
		 {
		   echo "<font color='red'>Invalid Credentials <br></font>";
		 }					
	?></center>
</div>
<?php include "footer.php" ?>