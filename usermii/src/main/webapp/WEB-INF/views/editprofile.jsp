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
	<main class="page-main"  style="background-image:url('/usermii/resources/images/block-bg-5.jpg'); background-repeat: no-repeat;background-attachment: fixed; background-size: 100% 100%; position:relative;z-index: 1">
		<!-- Breadcrumbs Block -->
		<div class="block breadcrumbs">
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li>Edit Profile</li>
				</ul>
			</div>
		</div>
		<!-- //Breadcrumbs Block -->
		<div class="block">
			<h2 class="text-center h-lg h-decor" style="color:#fff">Edit Profile</h2><br><br>
			<div class="container" style="margin-left:33.5%; background-image: none;">
				
				<div class="row">				
					<div class="col-lg-5">
						<div class="order-form-box"  style="background-color:#fff; border-radius:5%;  background-color: white;">
							<form:form method="post" action="/usermii/user/addUser" modelAttribute="register" enctype="multipart/form-data">
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
										<form:input type="text" class="input-custom input-full" name="name" path="name" placeholder="Name*" style="margin-left:10%; margin-top:5%;border:none; color:white;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
									</div>
								</div>
								
								 <div class="row">
									<div class="col-sm-10">
										<form:input type="text" class="input-custom input-full" name="email" path="emailId" placeholder="Email Id*" style="margin-left:10%;border:none;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-10">
										<form:input type="text" class="input-custom input-full" name="address1" path="address1" placeholder="Address Line 1" style="margin-left:10%;border:none;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-10">
										<form:input type="text" class="input-custom input-full" name="address2" path="address1" placeholder="Address Line 2" style="margin-left:10%;border:none;
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
								
								  <div class="row" style="margin-left:-10px; margin-top:5px">
									<div class="col-sm-10">
										<label style="margin-left:12%;color:#A9A9A9;">Gender:</label>
										<form:radiobutton name="gender" path="gender" value="Male" style="margin-left:10%;border:none; border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>  Male
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
										<form:input type="text" class="input-custom input-full" name="phoneNo" path="phoneNo" placeholder="Phone Number*" style="margin-left:10%;border:none;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-10">
										<form:input type="password" class="input-custom input-full" name="password" path="password" placeholder="Password*" style="margin-left:10%;border:none;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-10">
										<form:input type="password" class="input-custom input-full" name="cnfpassword" path="password" placeholder="Confirm Password*" style="margin-left:10%;border:none;
			border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>
									</div>
								</div>
									
			 					<div class="divider"></div>
								
								<div class="text-center">
									<button type="submit" formaction="/usermii/user/addUser" class="btn btn-wide" style="background-color: #00bcd4">Submit</button>
								</div>
								<div class="divider"></div>
							
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
	</body>

</html>