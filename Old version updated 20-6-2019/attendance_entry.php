<?php include "header2.php" ?>
<?php include "header.php" ?>
<?php include "access.php" ?>
<form name="form1" method="post" action="attendance.php">
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
	</div><br>
	<div class="form-group col-md-6">
		<input type="submit" class="btn btn-primary form-control col-md-3" value="Submit" ></input>
		<input type="reset" class="btn btn-danger form-control col-md-3" value="Reset" ></input>
	</div>
	</form>
</div>
<?php include "footer.php" ?>