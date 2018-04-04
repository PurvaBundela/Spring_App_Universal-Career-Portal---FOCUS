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
						<a href="manageEmployees" class="list-group-item">Manage Employee's</a>
	                  <a href="addEmployee" class="list-group-item">Add Employee</a>
						<a href="updateEmployerProfile" class="list-group-item">Update Profile</a>
						<a href="logout" class="list-group-item">Logout</a>
						  </div>
	            </div>
	            <div class="col-md-9">
	            	<form method="POST" action="employeeDeletion">
	<table class="table table-striped table-bordered table-hover">
		<tbody>
			<tr>
				<th class="text-center">First Name</th>
				<th class="text-center">Last Name</th>
				<th class="text-center">Department</th>
				<th class="text-center">Update Profile</th>
				<th class="text-center">Delete?</th>
			</tr>
			<c:forEach var="employee" items="${employer.employees}">
				<tr class="remove${employee.id}">
					<td>${employee.id}</td>
					<td>${employee.name.firstName}</td>
					<td>${employee.name.lastName}</td>
					<td>${employee.department}</td>
					
					<td class="text-center"><a href="#" id="test" class="btn btn-danger">Delete?</a><a href="employeeUpdation?id=${employee.id}" class="btn btn-primary">Update</a></td>
					<td class="text-center"><input type="checkbox" name="deleteselected" value="${employee.id}"></td>
				</tr>
			</c:forEach>
			
		</tbody>
	</table>
</form>

	            </div>
			</div>
		</div>	
		<script src="//rawgithub.com/stidges/jquery-searchable/master/dist/jquery.searchable-1.0.0.min.js"></script>
		<script type="text/javascript">
		$(document).on('click', '#test', function(e) {
	          e.preventDefault();
	          var aid = $(this).parent().parent().children(':first-child').text();
	          //alert(aid);
	          $.ajax({
	              url: 'employeeDeletion',                
	              contentType: "application/json; charset=utf-8",
	              data: { 'aid': aid },
	              type: 'GET',
	              cache: false,
	              success: function (response) {
	                  $('.remove'+response).remove();
	                  
	              }
	          });            
	      });
		</script>		
</body>
</html>