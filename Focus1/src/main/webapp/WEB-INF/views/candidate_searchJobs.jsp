<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
						<a href="viewAllJobs" class="list-group-item">View Jobs</a>
							<a href="myprofile" class="list-group-item">My Profile</a>
							<a href="resumeUpload" class="list-group-item">Upload/Change Resume</a>
							<a href="viewapplications" class="list-group-item">My Applications</a>
							<a href="logout" class="list-group-item">Logout</a>
						  </div>
	            </div>
	            <div class="col-md-9">
	            	<div class="col-md-12">
	<div class="search container">
		<form:form commandName="scr" action="searchJobSubmit">
			<div class="row">
				<div class="form-group col-lg-4">
					<label for="jobTitle" class="control-label">Job Title:</label>
					<form:input path="jobTitle" cssClass="form-control" required="required"/>
				</div>
				<div class="form-group col-lg-4">
					<label for="city" class="control-label">City:</label>
					<form:input path="city" cssClass="form-control"/>
				</div>
				<div class="form-group col-lg-4">
					<label for="state" class="control-label">State:</label>
					<form:input path="state" cssClass="form-control"/>
				</div>
			</div>
			<div class="row text-center">
				<input type="submit" name="searchjob" value="Search" class="btn btn-success"/>
			</div>
		</form:form>
	</div>
	<c:if test="${empty scrResults}">
		<div class="container">
			<label class="control-label">No Results Yet.</label>
		</div>
	</c:if>
	<c:if test="${not empty scrResults}">
		<div class="searchResults container">
			<div class="table-responsive col-md-10">
				<table class="table table-striped table-bordered">
				<caption>View Jobs</caption>
					<tbody>
						<tr>
							<th>Employer</th>
							<th>Title</th>
							<th>Job Type</th>
							<th>From</th>
							<th>To</th>
							<th>City</th>
							<th>State</th>
							<th>Job Details</th>
						</tr>
						<c:forEach var="job" items="${scrResults}">
							<tr>
								<td>${job.employer.companyName}</td>
								<td>${job.title}</td>
								<td>${job.type}</td>
								<td>${job.from}</td>
								<td>${job.to}</td>
								<td>${job.city}</td>
								<td>${job.state}</td>
								<td><a class="btn btn-primary" href="jobInfoView?id=${job.id}">View Details <span class="glyphicon glyphicon-search"></span></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</c:if>
</div>


	            </div>
			</div>
		</div>			
</body>
</html>