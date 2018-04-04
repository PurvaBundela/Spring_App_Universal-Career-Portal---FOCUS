<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	            	<div class="row">
	<div class="panel panel-default">
	  <div class="panel-heading">
	    	<h3 class="panel-title">Contact Information</h3>
	  </div>
	  <div class="panel-body">
		<div class="row">
			<div class="form-group col-lg-4">
				<label for="firstName" class="control-label">First Name:</label>
				<label>${applicant.name.firstName}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="middleName" class="control-label">Middle Name:</label>
				<label>${applicant.name.middleName}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="lastName" class="control-label">Last Name:</label>
				<label>${applicant.name.lastName}</label>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-lg-4">
				<label for="emailId" class="control-label">Email Id:</label>
				<label>${applicant.emailId}</label>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-lg-6">
				<label for="street" class="control-label">Street :</label>
				<label>${applicant.address.street}</label>
			</div>
			
			<div class="form-group col-lg-6">
				<label for="city" class="control-label">City:</label>
				<label>${applicant.address.city}</label>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-lg-4">
				<label for="state" class="control-label">State:</label>
				<label>${applicant.address.state}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="country" class="control-label">Country:</label>
				<label>${applicant.address.country}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="zip" class="control-label">Zip:</label>
				<label>${applicant.address.zip}</label>
			</div>
		</div>
	  </div>
	</div>
</div>
	
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
		<h3 class="panel-title">Educational Details</h3>
		</div>
		<div class="panel-body">
		<div class="row">
			<div class="form-group col-lg-4">
				<label for="schoolName" class="control-label">School Name:</label>
				<label>${applicant.education.collegeName}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="major" class="control-label">Major:</label>
				<label>${applicant.education.major}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="degreeLevel" class="control-label">Degree Level:</label>
				<label>${applicant.education.degree}</label>
			</div>
		</div>
			<div class="row">
				<div class="form-group col-lg-4">
					<label for="startDate" class="control-label">Start Date:</label>
					<label>${applicant.education.startDate}</label>
				</div>
				<div class="form-group col-lg-4">
					<label for="endDate" class="control-label">End Date:</label>
					<label>${applicant.education.endDate}</label>
				</div>
				<div class="form-group col-lg-4">
					<label for="gpa" class="control-label">GPA:</label>
					<label>${applicant.education.gpa}</label>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-lg-4">
					<label for="isGraduated" class="control-label">Graduated?:</label>
					<label>${applicant.education.isGraduated}</label>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">Work Experience</h3>
		</div>
		<div class="panel-body">
		<div class="row">
			<div class="form-group col-lg-4">
				<label for="employerName" class="control-label">Employer:</label>
				<label>${applicant.Exp.employerName}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="title" class="control-label">Title:</label>
				<label>${applicant.Exp.title}</label>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-lg-12">
				<label for="description" class="control-label">Description:</label>
				<label>${applicant.Exp.responsibilities}</label>
			</div>
		</div>
			<div class="row">
				<div class="form-group col-lg-4">
					<label for="startDate" class="control-label">Start Date:</label>
					<label>${applicant.Exp.startDate}</label>
				</div>
				<div class="form-group col-lg-4">
					<label for="endDate" class="control-label">End Date:</label>
					<label>${applicant.Exp.endDate}</label>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-lg-4">
					<label for="isCurrentEmployer" class="control-label">Current Employer?:</label>
					<label>${applicant.Exp.isCurrentEmployer}</label>
				</div>
			</div>
		</div>
	</div>
</div>
        </div>
			</div>
		</div>			
</body>
</html>