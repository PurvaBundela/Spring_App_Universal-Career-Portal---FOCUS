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
				   <a class="navbar-brand" href="/focus/"><img src="resources/assets/images/logo1.png"></a></h1>
	           </div>
	           <!-- Collect the nav links, forms, and other content for toggling -->
	           
	                     <button type="submit" class="btn" id="btn" >Logout</button>
	                 
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
	            	<c:if test="${not empty messageType}">
	<c:if test = "${messageType == 'success'}">
		<div class="alert alert-success" role="alert">
			${message}
		</div>		
	</c:if>
	<c:if test = "${messageType == 'failure'}">
		<div class="alert alert-danger" role="alert">
			${message}
		</div>		
	</c:if>
	<c:if test = "${messageType == 'info'}">
		<div class="alert alert-info" role="alert">
			${message}
		</div>		
	</c:if>
</c:if>

	            </div>
			</div>
		</div>			
</body>
</html>