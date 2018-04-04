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
	            	<div class="container">
	<form:form method="POST" commandName="emails" action="sendingEmailSubmit">
	<div class="table-responsive col-md-10">
		<table class="table table-striped table-bordered">
		<caption>Update HR Profile</caption>
			<tbody>
				<tr >
					<td>From:</td>
					<td>
						<div class="col-md-10">
							<form:input path="from" class="form-control" readonly="true"/>
						</div>
					</td>
				</tr>
				<tr>
					<td>To:</td>
					<td>
						<div class="col-md-10">
							<form:input path="toName" class="form-control" readonly="true"/>
						</div>
					</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td>
						<div class="col-md-10">
							<form:input path="to" class="form-control" readonly="true"/>
						</div>
					</td>
				</tr>
				<tr>
					<td>Subject:</td>
					<td>
						<div class="col-md-10">
							<form:input path="subject" class="form-control"/>
						</div>
					</td>
				</tr>
				<tr>
					<td>Body:</td>
					<td>
						<form:textarea path="body" rows="4" cols="50" class="form-control"/>
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" class="btn btn-success" value="Send" name="sendEmail"/></td>
				</tr>
			</tbody>
			</table>
		</div>
	</form:form>
</div>

	            </div>
			</div>
		</div>			
</body>
</html>