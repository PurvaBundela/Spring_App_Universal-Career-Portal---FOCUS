<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
      <link rel="stylesheet" href="resources/assets/css/style1.css">

  
</head>

<body>
  <body>
  <a href="/focus/"><img src="resources/assets/images/logo1.png" alt="Slant Free HTML5 Template"></a>FOCUS</h1>
	
   <div class="info"><a href="http://www.grandvincent-marion.fr" target="_blank"><p> Achieve your <i class="fa fa-heart"></i> GOALS </p></a></div>
  
  <form:form  commandName ="employer" action="employersubmitsignup" method="POST"  id="for" onsubmit="return validate();">
	    <h1>Registeration FORM</h1>
	    
    <div class="contentform">

    	<div class="leftcontact">
			      <div class="form-group">
			        <p>Company Name<span>*</span></p>
			        <span class="icon-case"><i class="fa fa-male"></i></span>
				        <form:input path ="companyName" type="text" name="companyName"  data-rule="required" data-msg="Enter the field"/>
                
       </div> 

            <div class="form-group">
			        <p>First Name<span>*</span></p>
			        <span class="icon-case"><i class="fa fa-male"></i></span>
				        <form:input path ="name.firstName" type="text" name="name.firstName"  data-rule="required" data-msg="Enter the field"/>
                
       </div> 
           <div class="form-group">
            <p>Last Name <span>*</span></p>
            <span class="icon-case"><i class="fa fa-user"></i></span>
				<form:input type="text" path="name.lastName" name="name.lastName"  data-rule="required" data-msg="Enter the field"/>
                
			</div>
			

			<div class="form-group">
			<p> E-mail <span>*</span></p>	
			<span class="icon-case"><i class="fa fa-envelope-o"></i></span>
                <form:input type="email" name="emailId" path="emailId"  data-rule="email" data-msg="Enter the field"/>
                
			</div>	

			<div class="form-group">
			<p> Set Password  <span>*</span></p>
			<span class="icon-case"><i class="fa fa-home"></i></span>
				<input type="password" id="password1" name="password2"  data-rule="required" data-msg="Enter the field"/>
                
			</div>

			<div class="form-group">
			<p>Confirm Password <span>*</span></p>
			<span class="icon-case"><i class="fa fa-location-arrow"></i></span>
				<form:input type="password" path="password" name="password"  data-rule="required" data-msg="Enter the field"/>
                
			</div>
			
			<div class="form-group">
			<p>Industry<span>*</span></p>
			<span class="icon-case"><i class="fa fa-location-arrow"></i></span>
				<form:input type="text" path="industry" name="industry"  data-rule="required" data-msg="Enter the field"/>
                
			</div>



	</div>

	<div class="rightcontact">	
           
		   
		   
		   <div class="form-group">
			<p>Phone number <span>*</span></p>	
			<span class="icon-case"><i class="fa fa-phone"></i></span>
				<form:input type="text" name="phone"  path="phone" data-rule="maxlen:10" data-msg="Enter the field"/>
                
			</div>
			
			
				<div class="form-group">
			<p>Street <span>*</span></p>
			<span class="icon-case"><i class="fa fa-building-o"></i></span>
				<form:input type="text" path="address.street" name="address.street"  data-rule="required" data-msg="Enter the field"/>
                
			</div>	
			
			<div class="form-group">
			<p>City <span>*</span></p>
			<span class="icon-case"><i class="fa fa-building-o"></i></span>
				<form:input type="text" name="address.city"  path="address.city" data-rule="required" data-msg="Enter the field"/>
                
			</div>	

			

			<div class="form-group">
			<p>State <span>*</span></p>
			<span class="icon-case"><i class="fa fa-info"></i></span>
                <form:input type="text" name="address.state"  path="address.state" data-rule="required" data-msg="Enter the field"/>
                
			</div>

			<div class="form-group">
			<p>Country <span>*</span></p>	
			<span class="icon-case"><i class="fa fa-comment-o"></i></span>
                <form:input type="text" name="address.country"  path="address.country" data-rule="required" data-msg="Enter the field"/>
                
			</div>
			
			<div class="form-group">
			<p>ZipCode <span>*</span></p>	
			<span class="icon-case"><i class="fa fa-comment-o"></i></span>
                <form:input type="number" name="address.zip"  path="address.zip" data-rule="required" data-msg="Enter the field"/>
              
			</div>
			<div class="form-group">
			<p>Website <span>*</span></p>	
			<span class="icon-case"><i class="fa fa-comment-o"></i></span>
                <form:input type="text" name="website"  path="website" data-rule="required" data-msg="Enter the field"/>
              
			</div>
		
</div>
	</div>
	
	
<button type="submit" class="bouton-contact">Sign Up!</button>
	
</form:form>

  
</body>
</html>
  
    <script src="resources/assets/js/index.js"></script>
    <script type="text/javascript">
	function validate() {
	    
	    var pass1 = document.getElementById('password1');
	  
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
