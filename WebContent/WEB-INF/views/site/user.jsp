<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User</title>

<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript"	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript"  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>


<script type="text/javascript">

$(document).ready(function(){
	
	$('#find').click(function(e){
		var search=$("#search").val();
		
		$.ajax({
			type: 'GET',
			dataType: 'json',
			contentType: 'application/json',
			url: "userSearch/"+search+"",
			/* data:JSON.stringify(arr), */
			success: function(data, textStatus ){
			console.log(data);
			//alert("success");
			//alert(data[0].rno);
			$("#rno").val(data[0].rno);
			$("#uname").val(data[0].uname);
			$("#mblno").val(data[0].mblno);
			$("#address").val(data[0].address); 
			$("#mark").val(data[0].mark);
			
			
			$("#search").val("")
			},
			error: function(xhr, textStatus, errorThrown){
			//alert('request failed'+errorThrown);
			}
			
			});
		
	});
	
	
});

</script>




<style type="text/css">
body {
	background-color: #79d2a6;
	font-size: 20px;
	/* background: url("image/img20.jpg"); */
	background-size: 100%;
}
.form-horizontal input:valid
,
{
/* insert your own styles for invalid form input */
background-color:lightGreen important;
}
.form-horizontal input:valid
,
{
/* insert your own styles for invalid form input */
background-color:lightPink important;
}
</style>


</head>
<body>

	<div class="row">

		<div class="container"><br>
			
			<div class="panel panel-default">

				<div class="panel-heading">
				
				
					<div class="col-sm-8">Registration</div>
								
					<div class="col-sm-3">
						<input type="text" class="form-control" id="search" name="search"	placeholder="Enter Rollno" />
					</div>
						
					<div class="col-sm-1">
						<input type="submit" name="action" value="search" id="find" class="btn btn-primary"/>
					</div>
				<hr>
				
				</div>

				<form id="userForm" class="form-horizantal" action="userSave" method="post" modelAttribute="user" commandname="uesr">

					<div class="panel-body"><br>
					
						<div class="col-sm-6 text-center">
						
							<div class="form-group">
								<label for="roll no" class="col-sm-5 control-label">Roll No</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="rno" name="rno"	placeholder="Rollno" required="required"/>
								</div>
							</div><br>

							<div class="form-group">
								<label for="name" class="col-sm-5 control-label">Name</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="uname" name="uname" placeholder="Name" required="required"/>
								</div>
							</div><br>

							<div class="form-group">
								<label for="address" class="col-sm-5 control-label">Address</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="address" name="address" placeholder="Address" required="required"/>
								</div>
							</div><br>

							<div class="form-group">
								<label for="mark" class="col-sm-5 control-label">Mobile	No</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" id="mblno" name="mblno"	placeholder="Mobile No" required="required"/>
								</div>
							</div><br>
							
							<div class="form-group">
								<label for="mark" class="col-sm-5 control-label">Mark</label>
								<div class="col-sm-7">
									<input type="number" class="form-control" id="mark" name="mark"	placeholder="Mark" required="required"/>
								</div>
							</div><br> <br>

							<div class="form-group">
																
								<div class="col-md-2 col-sm-offset-1">
									<input type="submit" name="action" value="submit" class="btn btn-success"/>
								</div>
								
								<div class="col-md-2 col-sm-offset-1">
									<input type="submit" name="action" value="update" class="btn btn-warning" />
								</div>
								
								<div class="col-md-2 col-sm-offset-1">
									<input type="submit" name="action" value="delete" class="btn btn-danger"/>
								</div>
								
							</div>
					</div>
				</div>
				
			</form>

			</div>

		</div>

	</div>

</body>
</html>