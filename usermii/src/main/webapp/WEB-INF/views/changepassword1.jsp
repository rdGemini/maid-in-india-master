<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
					<li>Forgot Password</li>
				</ul>
			</div>
		</div>
		<!-- //Breadcrumbs Block -->
		<div class="block">
			<h2 class="text-center h-lg h-decor" style="color:#fff">Forgot Password</h2>
			<div class="container" style="margin-left:33.5%; background-image: none">
				<div class="row">				
					<div class="col-lg-5">
						<div class="order-form-box"  style="background-color:#fff; border-radius:5%">
							<form method="post" 
								modelAttribute="cpass" action="/usermii/user/changepass2">
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
										<input type="text" class="input-custom input-custom--sm input-full" name="otp" path="otp" placeholder="Enter OTP*" style="margin-left:10%; border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;" required="true">
									</div>
								</div>
							
								<%if(request.getParameter("errorMsg") != null){ %>
                                <div style="color: red;margin-left:70px"><%= request.getParameter("errorMsg") %></div>
                                <%} %>
									
			 					<div class="divider"></div>
								
								<div class="text-center">
									<button type="submit" class="btn btn-wide" style="background-color: #00bcd4">NEXT</button>
								</div>
								<div class="divider"></div>
						
								<div class="text-center">
									<a href="/usermii/user/registration" style="color: #00bcd4">New User? Register Here</a>
								</div>
								<div class="divider"></div>
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
	</body>

</html>