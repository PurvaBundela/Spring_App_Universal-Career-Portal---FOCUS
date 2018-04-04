<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix = "form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<title></title>
	<style>
	#btn{
	
	 background-color: #FF8C00;
	 margin-left: 880px;
	 margin-top: 10px;
	
	}
	</style>
</head>
<body>
		<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
	       <div class="container">
	           <div class="navbar-header">
	               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	                   <span class="sr-only">Toggle navigation</span>
	                   <span class="icon-bar"></span>
	                   <span class="icon-bar"></span>
	                   <span class="icon-bar"></span>
	               </button>
				   <a class="navbar-brand" href="/focus/"><img src="resources/assets/images/logo1.png"></a>
	           </div>
	           <!-- Collect the nav links, forms, and other content for toggling -->
	           
	                     <a href="logout" class="btn" id="btn" role="button">Logout</a>
	                 
	       </div>
	   </nav>
	    <div class="container">
	       	<div class="row">
	            <div class="col-md-3">
	               <div class="list-group">
						<a href="employeeViewJobs" class="list-group-item">View Jobs</a>
						<a href="emppostJob" class="list-group-item">Post Job</a>
						<a href="empprofile" class="list-group-item">My Profile</a>
						<a href="logout" class="list-group-item">Logout</a>
						  </div>
	            </div>
	            <div class="col-md-9">
	            	<form:form commandName="employee" action="updateEmpProfile" method="POST" onsubmit="return validate();">
	<div class="table-responsive col-md-10">
	<table class="table table-striped table-bordered">
	<caption>Update HR Profile</caption>
		<tbody>
			<tr >
				<td>First Name:</td>
				<td>
					<div class="col-md-10">
						<form:hidden path="id" name="id"/>
						<form:hidden path="role" name="role"/>
						<form:input path="name.firstName" cssClass="form-control" name="name.fistName" required="required"/>
					</div>
				</td>
			</tr>
			<tr>
				<td>Middle Name:</td>
				<td>
					<div class="col-md-10">
						<form:input path="name.middleName" cssClass="form-control" name="name.middleName"/>
					</div>
				</td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td>
					<div class="col-md-10">
						<form:input path="name.lastName" cssClass="form-control" name="name.lastName" required="required"/>
					</div>
				</td>
			</tr>
			<tr>
				<td>Email Address:</td>
				<td>
					<div class="col-md-10">
						<form:input path="emailId" cssClass="form-control" name="emailId"  required="required"/>
					</div>
				</td>
			</tr>
			<tr>
				<td>Choose Password:</td>
				<td>
					<div class="col-md-10">
					  <input id="password1" type="password" class="form-control" name="password2"  required="required">
					</div>
				</td>
			</tr>
			<tr>
				<td>Confirm Password:</td>
				<td>
					<div class="col-md-10">
						<form:password path="password" cssClass="form-control" name="password"  required="required"/>
					</div>
				</td>
			</tr>
			<tr>
				<td>Street Address :</td>
				<td>
					<div class="col-md-10">
						<form:hidden path="address.id" name="addressId"/>
						<form:input path="address.street" cssClass="form-control" name="street"/>
					</div>
				</td>
			</tr>
			
			<tr>
				<td>City:</td>
				<td>
					<div class="col-md-10">
						<form:input path="address.city" cssClass="form-control" name="city"/>
					</div>
				</td>
			</tr>
			<tr>
				<td>State:</td>
				<td>
					<div class="col-md-10">
						<form:input path="address.state" cssClass="form-control" name="state"/>
					</div>
				</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td>
					<div class="col-md-10">
						<form:input path="address.country" cssClass="form-control" name="country"/>
					</div>
				</td>
			</tr>
			<tr>
				<td>Zip Code:</td>
				<td>
					<div class="col-md-10">
						<form:input path="address.zip" cssClass="form-control" name="zip"/>
					</div>
				</td>
			</tr>
			<tr>
				<td>Cell Phone:</td>
				<td>
					<div class="col-md-10">
						<form:input path="phone" cssClass="form-control" name="phone"/>
						<form:hidden path="department"/>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="text-center">
					<div class="col-md-3">
						<input type="submit" name="updatehr" value="Update HR Profile" class="form-control btn btn-success"/>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</div>
</form:form>
	            	

	            </div>
			</div>
		</div>	
		<script type="text/javascript">
	function validate() {
	    //Validate 2 passwords
	    var pass1 = document.getElementById('password1');
	  	//Check password length
	  	if(pass1.value.length<6)
	  	{
	  		alert('Password should be at least 6 characters long.');
	  		return false;
	  	}
	    var pass2 = document.getElementById('password');
	    if(pass1.value != pass2.value){
	    	alert('Passwords do not match.');
	    	return false;
	    }
	    return true;
	}
</script>		
</body>
</html>