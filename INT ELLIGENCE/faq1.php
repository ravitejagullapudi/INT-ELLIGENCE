<?php include "header1.php";
	   if(isset($_GET['id']))
		 {
		   echo "<font color='green'>your query has been submitted <br></font>";
		 }					
	?>


		<form action="faqinsert.php" method="post">
		<table class="table table-hover">
			<thead>
			  <tr>
				<th colspan="3"><center><h3>FAQ's</h3></center></th>
			  </tr>
			</thead>
			<tbody>
			  <tr>
				<th>Name:</th>
				<td colspan="2"><input type="text" class="form-control" id="name" name="name"/></td>
			  </tr>
			  <tr>
				<th>Email:</th>
				<td colspan="2"><input type="text" class="form-control" id="email" name="email"/></td>
			  </tr>
			  <tr>
				<th>Post your question:</th>
				<td colspan="2"><form>
								  <textarea placeholder="Leave your question" name="question"></textarea>
								</form></td>
			  </tr>
			  <tr>
				<td colspan="3"><center><input type="submit" value="Submit"></center></td>
			  </tr>
			  </tbody>
		  </table>
	</form>
<?php include "footer.php";?>
