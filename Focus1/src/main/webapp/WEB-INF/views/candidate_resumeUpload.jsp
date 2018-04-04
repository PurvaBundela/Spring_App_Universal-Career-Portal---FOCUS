<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html >
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
							<a href="resumeUpload" class="list-group-item">Upload/Change Resume(pdf doc)</a>
							<a href="viewapplications" class="list-group-item">My Applications</a>
							<a href="logout" class="list-group-item">Logout</a>

						  </div>
	            </div>
	            <div class="col-md-9">
	            	<div class="container">
	<form method="POST" action="resumeSubmit" enctype="multipart/form-data">
		<div class="form-group col-lg-12">
				<label for="file" class="control-label">Select Resume:</label>
				<input type="file" name="file" class="form-control" required/>
		</div>
		<div class="col-lg-12">
			<input type="submit" name="fileUpload" value="Upload Resume"/>
		</div>
		<c:if test="${id != 'NA'}">
			<div class="col-lg-12">
				<a href="download">Previously Uploaded Resume</a>
			</div>
		</c:if>
	</form>
</div>


	            </div>
			</div>
		</div>			
</body>
</html>