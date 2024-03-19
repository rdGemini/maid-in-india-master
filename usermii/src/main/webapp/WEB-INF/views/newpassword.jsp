<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
		<%@ include file="head.jsp" %> 
</head>

<body>
	<%-- <%@ include file="loader.jsp" %> --%>
	<%@ include file="header.jsp" %>
		<!-- /Header -->
	<main class="page-main"  style="background-image:url('/usermii/resources/images/block-bg-5.jpg'); background-repeat: no-repeat;background-attachment: fixed; background-size: 100% 100%">
		<!-- Breadcrumbs Block -->
		<div class="block breadcrumbs">
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="/usermii/user/home">Home</a></li>
					<li>New Password</li>
				</ul>
			</div>
		</div>
		<!-- //Breadcrumbs Block -->
		<div class="block">
			<h2 class="text-center h-lg h-decor" style="color:#fff">Login</h2>
			<div class="container" style="margin-left:33.5%; background-image: none">
				<div class="row">				
					<div class="col-lg-5">
						<div class="order-form-box"  style="background-color:#fff; border-radius:5%">
							<form method="post" 
								modelAttribute="npass" action="/usermii/user/newpass">
								<!-- <h3>Login</h3>
								<div class="divider-line"></div>
								 -->
								 <!-- <div class="successform text-center">
									<p>Your message was sent successfully!</p>
								</div> -->
								<!-- <div class="errorform text-center">
									<p>Something went wrong, try refreshing and submitting the form again.</p>
								</div> -->
								<div class="divider"></div>
								<div class="row">
									<div class="col-sm-10">
										<input type="password" id="registerPassword" required="true" class="input-custom input-custom--sm input-full" name="npassword" path="npassword" placeholder="Enter Password*" style="margin-left:10%; border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;">
										<span class="material-input" required="true" id="errPass" style="color:red; margin-left:0%"></span>
									</div>
								</div>
								<div class="divider"></div>
								<div class="row">
									<div class="col-sm-10">
											<input type="password" id="registerPasswordConfirmation" required="true" class="input-custom input-custom--sm input-full" name="cpassword" path="cpassword" placeholder="Enter Confirm Password*" style="margin-left:10%; border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px">
											<span class="material-input" required="true" id="errCPass" style="color:red; margin-left:0%"></span>
									</div>
								</div>
								<%if(request.getParameter("errorMsg") != null){ %>
                                <div style="color: red;margin-left:70px"><%= request.getParameter("errorMsg") %></div>
                                <%} %>
									
			 					<div class="divider"></div>
								
								<div class="text-center">
									<button type="submit" class="btn btn-wide" style="background-color: #00bcd4">LOGIN</button>
								</div>
								
								<!-- <div class="errorform text-center">
									<div class="divider-line"></div>
									<p>Something went wrong, try refreshing and submitting the form again.</p>
									<div class="divider"></div>
								</div> -->
							</form>
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
	<script type="text/javascript">
$("#registerPassword").blur(function() 
			{
				var pass = $("#registerPassword").val();
				var pattern= /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
				if(pass == "")
					$("#errPass").text("Please enter password!!");
				else if(!(pattern.test(pass)))
					$("#errPass").text("Size must be greater than 8, one small letter, one capital letter and one special character is compulsory!!");
				else
					$("#errPass").text("");
			});
	
	$("#registerPasswordConfirmation").blur(function() 
			{
				var cpass = $("#registerPasswordConfirmation").val();
				var pass = $("#registerPassword").val();
				var pattern= /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
				if(cpass == "")
					$("#errCPass").text("Please enter confirm password!!");
				else if(!(pattern.test(cpass)))
					$("#errCPass").text("Size must be greater than 8, one letter and one special character is compulsory!!");
				else if(pass != cpass)
					$("#errCPass").text("Password & confirm password are must be same!!");
				else
					$("#errCPass").text("");
			});
	</script>
	</body>

</html>