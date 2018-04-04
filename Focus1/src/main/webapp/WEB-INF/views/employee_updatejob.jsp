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
	            	<form:form commandName="job" action="submitUpdatedJob">
	<div class="row">
		<div class="form-group col-lg-12">
			<form:hidden path="id"/>
			<label for="jobTitle" class="control-label">Job Title:</label>
			<form:input path="title" cssClass="form-control"/>
		</div>
		<div class="form-group col-lg-12">
			<label for="description" class="control-label">Description:</label>
			<form:input path="description" cssClass="form-control"/>
		</div>
		<div class="form-group col-lg-6">
			<label for="durationFrom" class="control-label">Duration From:</label>
			<form:input path="from" cssClass="form-control"/>
		</div>
		<div class="form-group col-lg-6">
			<label for="durationTo" class="control-label">Duration To:</label>
			<form:input path="to" cssClass="form-control"/>
		</div>
		<div class="form-group col-lg-6">
			<label for="jobType" class="control-label">Job Type:</label>
			<form:input path="type" cssClass="form-control"/>
		</div>
		<div class="form-group col-lg-6">
			<label for="skills" class="control-label">Skills:</label>
			<form:input path="skills" cssClass="form-control"/>
		</div>
		<div class="form-group col-lg-6">
			<label for="city" class="control-label">City:</label>
			<form:input path="city" cssClass="form-control"/>
		</div>
		<div class="form-group col-lg-6">
			<label for="state" class="control-label">State:</label>
			<form:input path="state" cssClass="form-control"/>
		</div>
		<div class="form-group col-lg-6">
			<label for="country" class="control-label">Country:</label>
			<form:input path="country" cssClass="form-control"/>
		</div>
		<div class="form-group col-lg-6">
			<label for="hourlyWage" class="control-label">Hourly Wage:</label>
			<form:input path="hourlyWage" cssClass="form-control"/>
		</div>
		<div class="form-group col-lg-6">
			<label for="positions" class="control-label">Positions:</label>
			<form:input path="positions" cssClass="form-control"/>
		</div>
		<div class="form-group col-lg-12">
			<input type="submit" name="postjob" value="Update Job" class="btn btn-success">
		</div>
	</div>
</form:form>
	            	

	            </div>
			</div>
		</div>			
</body>
</html>