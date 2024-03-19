<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp" %> 
</head>
<body>
<%@ include file="loader.jsp" %>
	<%@ include file="header.jsp" %>
	<main class="page-main"  style="background-image:url('/usermii/resources/images/aboutimage1res.jpg'); background-repeat: no-repeat;background-attachment: fixed; background-size: 100% 100%">

<div class="block breadcrumbs">
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="/usermii/user/home">Home</a></li>
					<li>Feedback</li>
				</ul>
			</div>
		</div>
			
			<div class="block">
			<br><br>
				<h2 class="text-center h-lg h-decor" >Feedback</h2>
				<div class="container">
				<div class="divider"></div>
				<form method="post" modelAttribute="feedback" action="/usermii/user/addFeedback">
					
					<div class="inputs-col" style="margin-left:34%">
						<div class="row">
							<div class="col-md-6" >
							
								<div class="input-wrapper">
									<input type="text" class="input-custom input-custom--sm input-full" name="name" path="name" placeholder="Your name">
								</div>
								<div class="input-wrapper">
									<input type="text" class="input-custom input-custom--sm input-full" name="phoneNo" path="phoneNo" placeholder="Your phone">
								</div>
								<div class="input-wrapper">
									<input type="text" class="input-custom input-custom--sm input-full" name="emailId" path="emailId" placeholder="Your e-mail">
								</div>
							</div>
							</div>
							<div class="row">
							<div class="col-md-6">
								<div class="input-wrapper">
									<textarea class="textarea-custom input-full" name="message" path="message" placeholder="Message"></textarea>
								</div>
							</div>
							
						</div>
					</div>
					<div class="text-center">
					<div class="divider-lg"></div>
						<div class="divider-md"></div>
						<button type="submit" class="btn btn-lg" style="background-color: #00bcd4">Submit Now</button>
					</div>
				</form>
			</div>
		</div>
		
		<!-- Footer -->
	<%@ include file="footer.jsp" %>
	<!-- /Footer -->
	<%@ include file="javascript.jsp" %>
	<script src="/usermii/resources/js/vendor/wNumb.js"></script>
</body>
</html>