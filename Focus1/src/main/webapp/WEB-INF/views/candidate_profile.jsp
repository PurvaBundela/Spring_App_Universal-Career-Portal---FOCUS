
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix = "form" %>
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
	                     <!--<button type="submit" class="btn" id="btn" >Logout</button>-->
	                 
	       </div>
	   </nav>
	    <div class="container">
	       	<div class="row">
	            <div class="col-md-3">
	               <div class="list-group">
						<a href="viewAllJobs" class="list-group-item">View Jobs</a>
							<a href="myprofile" class="list-group-item">My Profile</a>
							<a href="resumeUpload" class="list-group-item">Upload/Change Resume</a>
							<a href="viewapplications" class="list-group-item">My Applications</a>
							<a href="logout" class="list-group-item">Logout</a>
						  </div>
	            </div>
	            <div class="col-md-9" >
	            	<div class="row">
	<div class="panel panel-default">
	  <div class="panel-heading">
	    	<h3 class="panel-title">Contact Information</h3>
	    	<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#contactinfomodel">+</button>
	  </div>
	  <div class="panel-body">
		<div class="row">
			<div class="form-group col-lg-4">
				<label for="firstName" class="control-label">First Name:</label>
				<label>${candidate.name.firstName}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="middleName" class="control-label">Middle Name:</label>
				<label>${candidate.name.middleName}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="lastName" class="control-label">Last Name:</label>
				<label>${candidate.name.lastName}</label>
			</div>
		</div>
		
		<div class="row">
			<div class="form-group col-lg-4">
				<label for="emailId" class="control-label">Email Id:</label>
				<label>${candidate.emailId}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="street2" class="control-label">Street :</label>
				<label>${candidate.address.street}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="city" class="control-label">City:</label>
				<label>${candidate.address.city}</label>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-lg-4">
				<label for="state" class="control-label">State:</label>
				<label>${candidate.address.state}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="country" class="control-label">Country:</label>
				<label>${candidate.address.country}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="zip" class="control-label">Zip:</label>
				<label>${candidate.address.zip}</label>
			</div>
		</div>
	  </div>
	</div>
</div>
	<div class="modal fade" id="contactinfomodel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	  <form:form commandName="candidate" action="personalInfoUpdation">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
	      </div>
	      <div class="modal-body">
	        	<div class="row">
					<div class="form-group col-lg-12">
						<form:hidden path="id"/>
						<label for="firstName" class="control-label">First Name:</label>
						<form:input path="name.firstName" cssClass="form-control"/>
					</div>
					<div class="form-group col-lg-12">
						<label for="middleName" class="control-label">Middle Name:</label>
						<form:input path="name.middleName" cssClass="form-control"/>
					</div>
					<div class="form-group col-lg-12">
						<label for="lastName" class="control-label">Last Name:</label>
						<form:input path="name.lastName" cssClass="form-control"/>
					</div>
				</div>
			
				<div class="row">
					<div class="form-group col-lg-4">
						<form:hidden path="address.id"/>
						<label for="emailId" class="control-label">Email Id:</label>
						<form:input path="emailId" cssClass="form-control"/>
					</div>
					<div class="form-group col-lg-4">
						<label for="street2" class="control-label">Street :</label>
						<form:input path="address.street" cssClass="form-control"/>
					</div>
					<div class="form-group col-lg-4">
						<label for="city" class="control-label">City:</label>
						<form:input path="address.city" cssClass="form-control"/>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-lg-4">
						<label for="state" class="control-label">State:</label>
						<form:input path="address.state" cssClass="form-control"/>
					</div>
					<div class="form-group col-lg-4">
						<label for="country" class="control-label">Country:</label>
						<form:input path="address.country" cssClass="form-control"/>
					</div>
					<div class="form-group col-lg-4">
						<label for="zip" class="control-label">Zip:</label>
						<form:input path="address.zip" cssClass="form-control"/>
					</div>
				</div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <input type="submit" class="btn btn-primary" value="Save changes"/>
	      </div>
	    </div>
	    </form:form>
	  </div>
	</div>
	<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
		<h3 class="panel-title">Educational Details</h3>
		<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#educationdetailsmodel">+</button>
		</div>
		<div class="panel-body">
		<div class="row">
			<div class="form-group col-lg-4">
				<label for="schoolName" class="control-label">School Name:</label>
				<label>${educationdetails.collegeName}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="major" class="control-label">Major:</label>
				<label>${educationdetails.major}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="degreeLevel" class="control-label">Degree Level:</label>
				<label>${educationdetails.degree}</label>
			</div>
		</div>
			<div class="row">
				<div class="form-group col-lg-4">
					<label for="startDate" class="control-label">Start Date:</label>
					<label>${educationdetails.startDate}</label>
				</div>
				<div class="form-group col-lg-4">
					<label for="endDate" class="control-label">End Date:</label>
					<label>${educationdetails.endDate}</label>
				</div>
				<div class="form-group col-lg-4">
					<label for="gpa" class="control-label">GPA:</label>
					<label>${educationdetails.gpa}</label>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-lg-4">
					<label for="isGraduated" class="control-label">Graduated?:</label>
					<label>${educationdetails.isGraduated}</label>
				</div>
			</div>
		</div>
	</div>
</div>
	<div class="modal fade" id="educationdetailsmodel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	  <form:form commandName="educationdetails" action="educationalInfoUpdate">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">Educational Details</h4>
	      </div>
	      <div class="modal-body">
	       	<div class="row">
				<div class="form-group col-lg-4">
					<form:hidden path="id"/>
					<label for="schoolName" class="control-label">School Name:</label>
					<form:input cssClass="form-control" path="collegeName"/>
				</div>
				<div class="form-group col-lg-4">
					<label for="major" class="control-label">Major:</label>
					<form:input cssClass="form-control" path="major"/>
				</div>
				<div class="form-group col-lg-4">
					<label for="degreeLevel" class="control-label">Degree Level:</label>
					<form:input cssClass="form-control" path="degree"/>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-lg-4">
					<label for="startDate" class="control-label">Start Date:</label>
					<form:input cssClass="form-control" path="startDate"/>
				</div>
				<div class="form-group col-lg-4">
					<label for="endDate" class="control-label">End Date:</label>
					<form:input cssClass="form-control" path="endDate"/>
				</div>
				<div class="form-group col-lg-4">
					<label for="gpa" class="control-label">GPA:</label>
					<form:input cssClass="form-control" path="gpa"/>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-lg-4">
					<label for="isGraduated" class="control-label">Graduated?:</label>
					<form:input cssClass="form-control" path="isGraduated"/>
				</div>
			</div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <input type="submit" class="btn btn-primary" value="Save changes"/>
	      </div>
	    </div>
	    </form:form>
	  </div>
	</div>
	
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
		<h3 class="panel-title">Work Experience</h3>
		<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#workexmodel">+</button>
		</div>
		<div class="panel-body">
		<div class="row">
			<div class="form-group col-lg-4">
				<label for="employerName" class="control-label">Employer:</label>
				<label>${Exp.employerName}</label>
			</div>
			<div class="form-group col-lg-4">
				<label for="title" class="control-label">Title:</label>
				<label>${Exp.title}</label>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-lg-12">
				<label for="description" class="control-label">Description:</label>
				<label>${Exp.responsibilities}</label>
			</div>
		</div>
			<div class="row">
				<div class="form-group col-lg-4">
					<label for="startDate" class="control-label">Start Date:</label>
					<label>${Exp.startDate}</label>
				</div>
				<div class="form-group col-lg-4">
					<label for="endDate" class="control-label">End Date:</label>
					<label>${Exp.endDate}</label>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-lg-4">
					<label for="isCurrentEmployer" class="control-label">Current Employer?:</label>
					<label>${Exp.isCurrentlyEmployeed}</label>
				</div>
			</div>
		</div>
	</div>
</div>
	<div class="modal fade" id="workexmodel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	  <form:form commandName="Exp" action="workExpUpdate">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">Work Experience</h4>
	      </div>
	      <div class="modal-body">
			<div class="row">
				<div class="form-group col-lg-4">
					<form:hidden path="id"/>
					<label for="employerName" class="control-label">Employer:</label>
					<form:input cssClass="form-control" path="employerName"/>
				</div>
				<div class="form-group col-lg-4">
					<label for="title" class="control-label">Title:</label>
					<form:input cssClass="form-control" path="title"/>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-lg-12">
					<label for="responsibilities" class="control-label">Description:</label>
					<form:input cssClass="form-control" path="responsibilities"/>
				</div>
			</div>
				<div class="row">
					<div class="form-group col-lg-4">
						<label for="startDate" class="control-label">Start Date:</label>
						<form:input cssClass="form-control" path="startDate"/>
					</div>
					<div class="form-group col-lg-4">
						<label for="endDate" class="control-label">End Date:</label>
						<form:input cssClass="form-control" path="endDate"/>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-lg-4">
						<label for="isCurrentEmployer" class="control-label">Current Employer?:</label>
						<form:input path="isCurrentlyEmployeed"/>
					</div>
				</div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <input type="submit" class="btn btn-primary" value="Save changes">
	      </div>
	      </div>
	      </form:form>
	    </div>
	  </div>
	            </div>
			</div>
		</div>			
</body>
</html>