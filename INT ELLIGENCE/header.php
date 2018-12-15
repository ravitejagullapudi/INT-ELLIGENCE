<!-- Register Validation-->
<script>
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
		var spc_reg=/^\w{8}$/;
		if(!spc.match(spc_reg))
		{
			alert("your special code should be only 8 characters...!");
		   
		}
		else{
			document.getElementById("spc").innerHTML="";
			
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
	
</script>	