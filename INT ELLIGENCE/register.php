<?php include "header1.php" ?>
<!-- Register Validation-->
<head>
<script language="javascript">
	function matchpassword()
	{
		
		var pass1 = document.getElementById("pass1").value;
		var pass1_reg=/^[A-Z][a-z][1-9][\.\$\!\^\&\@\#\%\*]$/;			
		//only one uppercase,only one lower case, only one number and one special cha
		if(!pass1.match(pass1_reg))
		{
			document.getElementById("pa").innerHTML="Invalid Password" ;
		}
		else
		{
			document.getElementById("pa").innerHTML="" ;
		}
	
	}
	function matchpass() {
		var x=document.getElementById("pass1").value;
		var y=document.getElementById("pass2").value;
		if(x!=y){
			document.getElementById("o").innerHTML="Passwords doesn't match" ;
		   
		}
		else{
			document.getElementById("o").innerHTML="" ;
		}
	}
	
	function matchstaff() {
		var sid = document.getElementById("s_id").value;
		var sid_reg=/^\d{4,5}$/;
		if(!sid.match(sid_reg))
		{
			document.getElementById("s").innerHTML="Invalid Staffid" ;
		   
		}
		else{
			document.getElementById("s").innerHTML="" ;
		}
	}
	
	function matchphno() {
		var phno = document.getElementById("phno").value;
		var phno_reg=/^\d{10}$/;
		
		
		if(!phno.match(phno_reg))
		{
		
			document.getElementById("p").innerHTML="Invalid Phone number" ;
		   
		}
		else{
			document.getElementById("p").innerHTML="" ;
		}
	}
	
	function matchemail() {
		
		var email = document.getElementById("email").value;
		var email_reg=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if(!email.match(email_reg))
		{
		
			document.getElementById("e").innerHTML="Invalid Email ID" ;
		   
		}
		else{
			document.getElementById("e").innerHTML="" ;
		}
	}
	function matchspcode() {
		var spc = document.getElementById("spc").value;
		var reg=/^\w{8}$/;
		if(spc.match(reg))
		{
			document.getElementById("spcl").innerHTML="";
		   
		}
		else{
			
			document.getElementById("spcl").innerHTML="your special code should be only 8 characters...!";
			
		}
	}
	
	function namenull(){
		var fname = document.getElementById("fname").value;
		var lname = document.getElementById("lname").value;
		if(fname.length==0){
			document.getElementById("n").innerHTML="name should not be null" ;
		}
		else{
			document.getElementById("n").innerHTML="" ;
		}
		if(lname.length==0){
			document.getElementById("n1").innerHTML="name should not be null" ;
		}
		else{
			document.getElementById("n1").innerHTML="" ;
		}
	}
	</script>
	<style>
	#ck-button {
		margin:4px;
		background-color:#ffff;
		border-radius:5px;
		border:1px solid #D0D0D0;
		overflow:hidden;
		float:left;
	}

	#ck-button:hover {
		background:teal;
	}

	#ck-button label {
		float:left;
		width:4.0em;
	}

	#ck-button label span {
		text-align:center;
		padding:5px 0px;
		display:block;
	}

	#ck-button label input {
		position:absolute;
		top:-20px;
	}
	
</style>
</head>
<body>	
	<form method="post" action="reg_entry.php">
		<center><h2><font style="italic">To Register, fill the form below...!<i class="fa fa-smile-o"></i></font></h2>
		<table class="table table-hover">
			<thead>
			  <tr>
				<th colspan="3"><center><h3>Registration</h3></center></th>
			  </tr>
			</thead>
			<tbody>
			  <tr>
				<th>Staff Id:</th>
				<td colspan="2"><input type="text" class="form-control" id="s_id" name="s_id" onkeyup="matchstaff()" ><br><span id="s" style="color:red;"></span></td>
			  </tr>
			  <tr>
				<th>First Name:</th>
				<td colspan="2"><input type="text" class="form-control" name="fname" id="fname" onfocus="namenull()"/><br><span id="n" style="color:red;"></span></td>
			  </tr>
			  <tr>
				<th>Last Name:</th>
				<td colspan="2"><input type="text" class="form-control" id="lname" name="lname" onfocus="namenull()"/><br><span id="n1" style="color:red;"></span></td>
			  </tr>
			  <tr>
				<th>Phone no.:</th>
				<td colspan="2"><input type="number" class="form-control" id="phno" name="phno" onkeyup="matchphno()" ><br><span id="p" style="color:red;"></span></td>
			  </tr>
			  <tr>
				<th>Email:</th>
				<td colspan="2"><input type="email" class="form-control" id="email" name="email" onkeyup="matchemail()" ><br><span id="e" style="color:red;"></span></td>
			  </tr>
			  <tr>
				<th>Create Password:</th>
				<td colspan="2"><input type="text" class="form-control" id="pass1" name="crepass" onkeyup="matchpassword()" ><br><span id="pa" style="color:red;"></span></td>
			  </tr>
			  <tr>
				<th>Confirm Password:</th>
				<td colspan="2"><input type="text" class="form-control" id="pass2"  name="conpass" onkeyup="matchpass()" ><br><span id="o" style="color:red;"></span></td>
			  </tr>
			  <tr>
				<td colspan="2"><p><b>Password must contain only one uppercase,only one lower case, <br>only one number and one special character and in same order</b></p></td>
				</td>
			  </tr>
			  <tr>
			  <th>SpecialCode:</th>
				<td colspan="2"><input type="text" class="form-control" id="spc" name="spc" onkeyup="matchspcode()" ><br><span id="spcl" style="color:red;"></span></td>
			  </tr>
			  
			  <tr>
				<td colspan="3"><center><input type="submit" value="Submit"></center></td>
			  </tr>
			</tbody>
		</table>
	</form>
</div>
</body>
<?php include "footer.php"; ?> 