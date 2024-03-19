<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:42:34 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
	<%@include file = "head.jsp" %>
</head>
<body>

  <noscript><iframe src="https://
tagmanager.com/ns.html?id=GTM-NKDMSK6"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->

	<div class="wrapper">

	    
    <!--
        Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
        Tip 2: you can also add an image using data-image tag
        Tip 3: you can change the color of the sidebar with data-background-color="white | black"
    -->
	
		<%@include file = "sidebar.jsp" %>
	    <div class="main-panel">
		<%@include file = "header.jsp" %>
				<div class="content">
				<form:form id="RegisterValidation" method="post" 
								modelAttribute="total" enctype="multipart/form-data">
					<div class="container-fluid">
					 	<div class="row">
					 	<div class="col-md-2"></div>
	<div class="col-lg-4 col-md-4 col-sm-4" >
		<div class="card card-stats">
			<div class="card-header" data-background-color="orange">
				<i class="material-icons">weekend</i>
			</div>
			<div class="card-content">
				<p class="category">Bookings</p>
				<h3 class="card-title">${total.noOfBookings}</h3>
			</div>
			<div class="card-footer">
				<div class="stats">
					<i class="material-icons">update</i> Just Updated
				</div>
			</div>
		</div>
		
	</div>
	



	<div class="col-lg-4 col-md-4 col-sm-4">
		<div class="card card-stats">
			<div class="card-header" data-background-color="green">
				<i class="material-icons">person</i>
			</div>
			<div class="card-content">
				<p class="category">Maids</p>
				<h3 class="card-title">${total.noOfMaids}</h3>
			</div>
			<div class="card-footer">
				<div class="stats">
					<i class="material-icons">update</i> Just Updated
				</div>
			</div>
		</div>
   </div>
<div class="col-md-2"></div>
</div>
</form:form>
<h3>Manage Database</h3>
<br>
<div class="row">
<div class="col-md-2"></div>
	<div class="col-md-4">
		<div class="card card-product" >
			
			<div class="card-content">
				<h4 class="card-title">
					<a href="#pablo">Edit Profile</a>
				</h4>
				<div class="card-description">
					<a href="/miiagency/agency/editAgency" class="btn btn-fill btn-rose">Edit</a>
				</div>
			</div>
			
		</div>
	</div>
		
	<div class="col-md-4">
		<div class="card card-product" >
			
			<div class="card-content">
				<h4 class="card-title">
					<a href="#pablo">Add Maid</a>
				</h4>
				<div class="card-description">
					<a href="/miiagency/maid/registerMaid" class="btn btn-fill btn-rose">Add</a>
				</div>
			</div>
			
		</div>
		
	</div>
<div class="col-md-2"></div>
</div>
<h3>View Database</h3>
<br>
<div class="row">
<div class="col-md-2"></div>
	<div class="col-md-4">
		<div class="card card-product">
			
			<div class="card-content" >
				<h4 class="card-title">
					<a href="#pablo">View Profile</a>
				</h4>
				<div class="card-description">
					<a href="/miiagency/agency/viewAgency" class="btn btn-fill btn-rose">View</a>
				</div>
			</div>
			
		</div>
	</div>
	
	<div class="col-md-4">
		<div class="card card-product">
			
			<div class="card-content">
				<h4 class="card-title">
					<a href="#pablo">View Maid</a>
				</h4>
				<div class="card-description">
					<a href="/miiagency/maid/maidList" class="btn btn-fill btn-rose">View</a>
				</div>
			</div>
			
		</div>
		
	</div>
	<div class="col-md-2"></div>
	
</div>
</div>
</div>
		<%@include file = "footer.jsp" %>
	</div>
	</div>
</body>
  
	<!--   Core JS Files   -->
	<%@include file = "corejsfiles.jsp" %>
</html>    