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
							<label><#if (applicant.firstName)??>${applicant.firstName}</#if></label>
						</div>
						<div class="form-group col-lg-4">
							<label for="middleName" class="control-label">Middle Name:</label>
							<label><#if (applicant.middleName)??>${applicant.middleName}</#if></label>
						</div>
						<div class="form-group col-lg-4">
							<label for="lastName" class="control-label">Last Name:</label>
							<label><#if (applicant.lastName)??>${applicant.lastName}</#if></label>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-lg-4">
							<label for="emailId" class="control-label">Email Id:</label>
							<label><#if (applicant.emailId)??>${applicant.emailId}</#if></label>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-lg-4">
							<label for="street1" class="control-label">Street 1:</label>
							<label><#if (applicant.address.street1)??>${applicant.address.street1}</#if></label>
						</div>
						<div class="form-group col-lg-4">
							<label for="street2" class="control-label">Street 2:</label>
							<label><#if (applicant.address.street2)??>${applicant.address.street2}</#if></label>
						</div>
						<div class="form-group col-lg-4">
							<label for="city" class="control-label">City:</label>
							<label><#if (applicant.address.city)??>${applicant.address.city}</#if></label>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-lg-4">
							<label for="state" class="control-label">State:</label>
							<label><#if (applicant.address.state)??>${applicant.address.state}</#if></label>
						</div>
						<div class="form-group col-lg-4">
							<label for="country" class="control-label">Country:</label>
							<label><#if (applicant.address.country)??>${applicant.address.country}</#if></label>
						</div>
						<div class="form-group col-lg-4">
							<label for="zip" class="control-label">Zip:</label>
							<label><#if (applicant.address.zip)??>${applicant.address.zip}</#if></label>
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
							<label><#if (applicant.education.collegeName)??>${applicant.education.collegeName}</#if></label>
						</div>
						<div class="form-group col-lg-4">
							<label for="major" class="control-label">Major:</label>
							<label><#if (applicant.education.major)??>${applicant.education.major}</#if></label>
						</div>
						<div class="form-group col-lg-4">
							<label for="degreeLevel" class="control-label">Degree Level:</label>
							<label><#if (applicant.education.degree)??>${applicant.education.degree}</#if></label>
						</div>
					</div>
						<div class="row">
							<div class="form-group col-lg-4">
								<label for="startDate" class="control-label">Start Date:</label>
								<label><#if (applicant.education.startDate)??>${applicant.education.startDate}</#if></label>
							</div>
							<div class="form-group col-lg-4">
								<label for="endDate" class="control-label">End Date:</label>
								<label><#if (applicant.education.endDate)??>${applicant.education.endDate}</#if></label>
							</div>
							<div class="form-group col-lg-4">
								<label for="gpa" class="control-label">GPA:</label>
								<label><#if (applicant.education.gpa)??>${applicant.education.gpa}</#if></label>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-lg-4">
								<label for="isGraduated" class="control-label">Graduated?:</label>
								<label><#if (applicant.education.isGraduated)??>${applicant.education.isGraduated}</#if></label>
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
							<label><#if (applicant.Exp.employerName)??>${applicant.Exp.employerName}</#if></label>
						</div>
						<div class="form-group col-lg-4">
							<label for="title" class="control-label">Title:</label>
							<label><#if (applicant.Exp.title)??>${applicant.Exp.title}</#if></label>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-lg-12">
							<label for="description" class="control-label">Description:</label>
							<label><#if (applicant.Exp.responsibilities)??>${applicant.Exp.responsibilities}</#if></label>
						</div>
					</div>
						<div class="row">
							<div class="form-group col-lg-4">
								<label for="startDate" class="control-label">Start Date:</label>
								<label><#if (applicant.Exp.startDate)??>${applicant.Exp.startDate}</#if></label>
							</div>
							<div class="form-group col-lg-4">
								<label for="endDate" class="control-label">End Date:</label>
								<label><#if (applicant.Exp.endDate)??>${applicant.Exp.endDate}</#if></label>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-lg-4">
								<label for="isCurrentEmployer" class="control-label">Current Employer?:</label>
								<label><#if (applicant.Exp.isCurrentEmployer)??>${applicant.Exp.isCurrentEmployer}</#if></label>
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