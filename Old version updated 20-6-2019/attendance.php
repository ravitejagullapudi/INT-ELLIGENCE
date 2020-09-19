<?php
	$branch=$_POST['branch'];
	$section=$_POST['section'];
?>
<?php include "header2.php" ?>
<?php include "header.php" ?>
<?php include "access.php" ?>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>

	<style>

		#ck-button {
			margin:4px;
			background-color:#ffff;
			border-radius:5px;
			border:1px solid #D0D0D0;
			overflow:hidden;
			float:left;
			width:10%;
			height:5%;
 
		}

		#ck-button:hover {
			background:teal;
			width:10%;
		}

		#ck-button label {
			float:left;
			width:4.0em;
		}

		#ck-button label span {
			text-align:center;
			display:block;
		}

		#ck-button label input {
			position:absolute;
			top:-20px;
			display:none;
		}
		.flex-container {
			display: flex;
			flex-wrap: wrap;
		}
		.flex-container > #ck-button {
			background-color: #f1f1f1;
			width: 100px;
			margin: 5px;
			text-align: center;
			line-height: 75px;
			font-size: 5px;
		}
		/* @media only screen and (max-width:366 px) {
			.flex-container {
			display: flex;
			flex-wrap: wrap;
		}
		.flex-container > #ck-button {
			background-color: #f1f1f1;
			width: 50%;
			margin: 5px;
			text-align: center;
			line-height: 75px;
			font-size: 5px;
		} */

		}
	</style>
	
</head> 

<!-- Selecting students who are absent or present based on radio button -->
<script>
	function pre(x){
		
		if(x==1){
			confirm('Please select rolls who are present');
			document.getElementById('a').innerHTML="<style>#ck-button input:checked + span {background-color:green;color:#0000FF ;}</style>";
		}
		else{
			confirm('Please select rolls who are absent');
			document.getElementById('a').innerHTML="<style>#ck-button input:checked + span {background-color:red;color:#0000FF ;} </style>";
		}
	}
</script>
<div class="container">
	<form class="form col-md-6" method="post" name="myform" action="next.php">
			<div class="form-group col-md-6">
				<label>Staff Id:</label>
				<input type="text" class="form-control" id="s_id" name="s_id"/>
			</div>
			<div class="form-group col-md-6">
				<label>Faculty Name:</label>
				<input type="text" class="form-control" name="fname" id="fname" />
			</div>
			<div class="form-group col-md-6">
				<label>Branch:</label>
				<input type="text" id="branc" name="branch" value="<?php echo $branch;?>" readonly="readonly"></p>
			</div>
			<div class="form-group col-md-6">
				<label>Section:</label>
				<input type="text" id="sec" name="section" value="<?php echo $section;?>" readonly="readonly"></p>
			</div>
 
			<div class="form-group col-md-6">
				<label>Start period</label>
				<select class="form-control" name="startp">
					
					<option value="p1">1</option>
					<option value="p2">2</option>
					<option value="p3">3</option>
					<option value="p4">4</option>
					<option value="p5">5</option>
					<option value="p6">6</option>
					<option value="p7">7</option>
					<option value="p8">8</option>
					</select>
			</div>
			<div class="form-group col-md-6">
				<label>End Period</label>
				<select class="form-control" name="endp">
					<option value="p1">1</option>
					<option value="p2">2</option>
					<option value="p3">3</option>
					<option value="p4">4</option>
					<option value="p5">5</option>
					<option value="p6">6</option>
					<option value="p7">7</option>
					<option value="p8">8</option>
				</select>
			</div>
			<div class="form-group col-md-6">
				<label>Subject Dealing</label>
				<input type="text" class="form-control" id="subject" name="subject">
			</div>
			
				<input type="radio" name="att"  value="1" onclick="pre(1)" id="a">Present</input>
				<input type="radio"  name="att"  value="0" onclick="pre(0)" id="a">Absent</input>
		
			<div class="form-group col-md-6  flex-container">
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
					$sql ="select * from student_profile where Branch='$branch' and Reg_no in(select reg_no from student_profile where section='$section')";
					$result = mysqli_query($conn,$sql);
					
					if(mysqli_num_rows($result)){
						while($value=mysqli_fetch_assoc($result)){
							 echo "<div id='ck-button'>
								   <label>
									  <input type='checkbox' value='".$value['Reg_no']."' class='form-control'  name='check[]'><span>".$value['Reg_no']."</span>
								   </label>
								</div>";
								
						}
					}
					else{
						echo "Records not found".mysqli_error($conn);
					}
					mysqli_close($conn);
			?>
			
			</div>
			<div class="form-group col-md-6">
				<input type="submit" class="btn btn-primary form-control col-md-3" value="Submit" ></input> 
				<input type="reset" class="btn btn-danger form-control col-mod-3" value="Reset" ></input>
			</div>
	</form>
</div>

<?php include "footer.php"; ?> 