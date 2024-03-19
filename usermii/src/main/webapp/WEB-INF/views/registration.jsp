<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from websmirno.site/html-demo/proclena/service-page-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 05 Jan 2020 07:56:13 GMT -->
<head>
		<%@ include file="head.jsp" %> 
</head>

<body>
	<%-- <%@ include file="loader.jsp" %> --%>
	<%@ include file="header.jsp" %>
		<!-- /Header -->
	<main class="page-main"  style="background-image:url('/usermii/resources/images/block-bg-5.jpg'); background-repeat: no-repeat;background-attachment: fixed; background-size: 100% 100%; position:relative;z-index: 1">
		<!-- Breadcrumbs Block -->
		<div class="block breadcrumbs">
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="/usermii/user/home">Home</a></li>
					<li><c:choose>
												<c:when test="${edit}">
													Edit Profile
												</c:when>
												<c:otherwise>
													Registration
												</c:otherwise>	
										</c:choose></li>
				</ul>
			</div>
		</div>
		<!-- //Breadcrumbs Block -->
		<div class="block">
			<h2 class="text-center h-lg h-decor" style="color:#fff"><c:choose>
												<c:when test="${edit}">
													Edit Profile
												</c:when>
												<c:otherwise>
													Registration
												</c:otherwise>	
										</c:choose></h2><br><br>
			<div class="container" style="margin-left:33.5%; background-image: none;">
				
				<div class="row">				
					<div class="col-lg-5">
						<div class="order-form-box"  style="background-color:#fff; border-radius:5%;  background-color: white;">
							<form:form method="post" modelAttribute="register" enctype="multipart/form-data">
								<!--<div class="errorform text-center">
									<p>Something went wrong, try refreshing and submitting the form again.</p>
								</div>
								
								 <div class = "row">
					<div class="col-lg-5" style="margin-top:-20%; margin-left:33.5%">
						<img src="default-avatar.png" style="height:100px; width:100px; border-radius:100%">
						<input type="image" src="/usermii/resources/images/default-avatar.png" style="height:100px; width:100px; border-radius:100%"/>
<input type="file" id="my_file" style="display: none;" />
					</div>
				</div> -->
								<form:input type="hidden" path="userId" id="userId"/>
								 <div class="row">
									<div class="col-sm-10">
										<form:input type="text" class="input-custom input-full" id="uname" name="name" path="name" placeholder="Name*" style="margin-left:10%; margin-top:5%;border:none;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
			<span class="material-input" required="true" id="errName" style="color:red; margin-left:0%"></span>
									</div>
								</div>
								
								 <div class="row">
									<div class="col-sm-10">
									<c:choose>
										<c:when test="${edit}">
											<form:input type="text" class="input-custom input-full" name="email" path="emailId" placeholder="Email Id*" style="margin-left:10%;border:none;
												border-bottom: 1px solid #d7dbdf;border-radius: 0px;" readonly="true"/>
										</c:when>
										<c:otherwise>
											<form:input type="text" class="input-custom input-full" id="eid" name="email" path="emailId" placeholder="Email Id*" style="margin-left:10%;border:none;
												border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
										</c:otherwise>
									</c:choose>
									<span class="material-input" required="true" id="errEmail" style="color:red; margin-left:0%"></span>	
			
									</div>
								</div>
								
								<%-- <div class="row">
									<div class="col-sm-10">
										<form:input type="text" class="input-custom input-full" name="address1" path="address1" placeholder="Address Line 1" style="margin-left:10%;border:none;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-10">
										<form:input type="text" class="input-custom input-full" name="address2" path="address2" placeholder="Address Line 2" style="margin-left:10%;border:none;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
									</div>
								</div> 
							
								<div class="row">
									<div class="col-sm-6">
										<form:select name="cityId" path="cityId" class="input-custom valid" style="margin-left:20%;color:#A9A9A9;">
											<form:option value="0" label="Choose City"/>Choose City
											<form:option value="1" label="Ahmedabad"/>Ahmedabad
											<form:option value="2" label="Surat"/>Surat
										</form:select>
									</div>
									<div class="col-sm-5">
										<form:input type="text" class="input-custom input-full" name="pincode" path="pincode" placeholder="Pincode" style="margin-left:0%; margin-right:2%;border:none;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
									</div>
								</div>
							 --%>	
								  <div class="row" style="margin-left:-10px; margin-top:5px">
									<div class="col-sm-10">
										<label style="margin-left:12%;color:#A9A9A9;">Gender:</label>
										<form:radiobutton name="gender" path="gender" value="Male" checked="true" style="margin-left:10%;border:none; border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>  Male
										<form:radiobutton name="gender" path="gender" value="Female" style="margin-left:10%;border:none; border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>  Female
									</div>
								</div> 
								 
								<!-- <div class="row">
									<div class="col-sm-6" style="margin-top:5%">
										<label style="margin-left:21%;color:#A9A9A9;">Date Of Birth:</label>
									</div>
									<div class="col-sm-6" style="margin-left:-8%; margin-top:3%;">
										<div class="datetimepicker-wrap">
											<input type="text" name="date" class="form-control input-custom input-custom--sm datetimepicker" placeholder=""/>
										</div>
									</div>						
								</div> -->
								
								<div class="row" style="margin-top:2%">
									<div class="col-sm-10">
									<c:choose>
												<c:when test="${edit}">
													<form:input type="text" id="mno" class="input-custom input-full" name="phoneNo" path="phoneNo" placeholder="Phone Number*" style="margin-left:10%;border:none;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
			<span class="material-input" required="true" id="errNo" style="color:red; margin-left:0%"></span>
												</c:when>
												<c:otherwise>
													<form:input type="text" id="mobno" class="input-custom input-full" name="phoneNo" path="phoneNo" placeholder="Phone Number*" style="margin-left:10%;border:none;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
			<span class="material-input" required="true" id="errNo" style="color:red; margin-left:0%"></span>
												</c:otherwise>	
										</c:choose>	
										
									</div>
								</div>
								<c:choose>
									<c:when test="${edit}">
										<form:input type="hidden" path="password" id="password"/>
									</c:when>
								
								<c:otherwise>
								<div class="row">
									<div class="col-sm-10">
										<form:input type="password" id="registerPassword" class="input-custom input-full" name="password" path="npassword" placeholder="Password*" style="margin-left:10%;border:none;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
			<span class="material-input" required="true" id="errPass" style="color:red; margin-left:0%"></span>
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-10">
										<form:input type="password" id="registerPasswordConfirmation" class="input-custom input-full" name="cnfpassword" path="cpassword" placeholder="Confirm Password*" style="margin-left:10%;border:none;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
			<span class="material-input" required="true" id="errCPass" style="color:red; margin-left:0%"></span>
									</div>
								</div>
								</c:otherwise>
									</c:choose>
			 					<div class="divider"></div>
								
								<div class="text-center">
									<%if(request.getParameter("errorMsg") != null){ %>
                                <div style="color: red;"><%= request.getParameter("errorMsg") %></div>
                                <%} %>
									<!-- <button type="submit" class="btn btn-wide" style="background-color: #00bcd4">Register</button> -->
									<c:choose>
												<c:when test="${edit}">
													<button type="submit" class="btn btn-wide"
														formaction="/usermii/user/editUser" style="background-color: #00bcd4">Update</button>
												</c:when>
												<c:otherwise>
													<button type="submit" class="btn btn-wide"
														formaction="/usermii/user/addUser" style="background-color: #00bcd4">Register</button>
												</c:otherwise>
											</c:choose>
								</div>
								
								<c:choose>
									<c:when test="${edit}">
									
									</c:when>
									<c:otherwise>
									
									<div class="divider"></div>
										<div class="text-center">
									<a href="/usermii/user/login" style="color: #00bcd4">Existing User? Login</a>
								</div>
									</c:otherwise>
								</c:choose>
								
								<!-- <div class="divider"></div>
								<div class="errorform text-center">
									<div class="divider-line"></div>
									<p>Something went wrong, try refreshing and submitting the form again.</p>
									<div class="divider"></div>
								</div>  -->
							</form:form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</main>
	<!-- Footer -->
	<%@ include file="footer.jsp" %>
	<!-- /Footer -->
	<%@ include file="javascript.jsp" %>
	<script>
	$("input[type='image']").click(function() {
    $("input[id='my_file']").click();
});</script>
	<script type="text/javascript">
	$().ready(function(){
    	document.getElementById("mobno").defaultValue = "";
    	document.getElementById("accno").defaultValue = "";
    });
	
	$("#uname").blur(function() 
			{
				var name = $("#uname").val();
				var pattern=/^[A-Za-z .]{3,50}$/;
				if(name == "")
				{
					$("#errName").text("Please enter your name!!");
					//document.getElementById("uname").focus();
				}
				else if(!(pattern.test(name)))
				{
					$("#errName").text("Only capital and small letters are allowed!!");
					//document.getElementById("uname").focus();
					//$("#uname").text("");
				}
				else
					$("#errName").text("");
			});
	
	$("#mobno").blur(function() 
			{
				var no = $("#mobno").val();
				var pattern=/^[0-9]{10}$/;
				if(no == "")
				{
					$("#errNo").text("Please enter your contact number!!");
					//document.getElementById("mobno").focus();
				}
				else if(!(pattern.test(no)))
				{
					$("#errNo").text("Only numbers are allowed and size must be 10!!");
					//document.getElementById("mobno").focus();
					//$("#mobno").text("");
				}
				else
					$("#errNo").text("");
			});
	$("#mno").blur(function() 
			{
				var no = $("#mno").val();
				var pattern=/^[0-9]{10}$/;
				if(no == "")
				{
					$("#errNo").text("Please enter your contact number!!");
					//document.getElementById("mno").focus();
				}
				else if(!(pattern.test(no)))
				{
					$("#errNo").text("Only numbers are allowed and size must be 10!!");
					//document.getElementById("mno").focus();
					//$("#mno").text("");
				}
				else
					$("#errNo").text("");
			});
	
	$("#registerPassword").blur(function() 
			{
				var pass = $("#registerPassword").val();
				var pattern= /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
				if(pass == "")
				{
					$("#errPass").text("Please enter password!!");
				}
				else if(!(pattern.test(pass)))
				{
					$("#errPass").text("Size must be greater than 8, one small letter, one capital letter and one special character is compulsory!!");
					//document.getElementById("registerPassword").focus();
					//$("#registerPassword").text("");
				}
				else
					$("#errPass").text("");
			});
	
	$("#registerPasswordConfirmation").blur(function() 
			{
				var cpass = $("#registerPasswordConfirmation").val();
				var pass = $("#registerPassword").val();
				var pattern= /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
				if(cpass == "")
				{
					$("#errCPass").text("Please enter confirm password!!");
				}
				else if(!(pattern.test(cpass)))
				{
					$("#errCPass").text("Size must be greater than 8, one letter and one special character is compulsory!!");
					//document.getElementById("registerPasswordConfirmation").focus();
					//$("#registerPasswordConfirmation").text("");
				}
				else if(pass != cpass)
				{
					$("#errCPass").text("Password & confirm password are must be same!!");
					//document.getElementById("registerPasswordConfirmation").focus();
					//$("#registerPasswordConfirmation").text("");
				}
				else
					$("#errCPass").text("");
			});
	
	$("#eid").blur(function() {
  		var emailId = $("#eid").val();
  		if(emailId == "")
  		{
  			$("#errEmail").text("Please enter Email Id!!");
  			//document.getElementById("eid").focus();
  		}
  		else if(emailId != "")
  		{
  			
  			//alert(emailId);
  			$.ajax({
  	  	        type: 'GET',
  	  	        url: "/usermii/user/checkEmailId/" + emailId,
  	  	        success: function(data){
  	  	        	//alert(data);
  	  	            if(data=="true")
  	  	            {
  	  	            	$("#eid").val("");
  	  	            	//document.getElementById("eid").focus();
  	  	            	$("#errEmail").text("Email Id already exists.");    		
  	  	            }
  	  	            else
  	  	          	{
  	  	            	$("#errEmail").text("");
  	  	            }
  	  	            	
  	  	        },
  	  	        error:function(){
  	  	            alert("error");
  	  	        }
  	  	    });
  		}
	});
	</script>
	</body>

</html>