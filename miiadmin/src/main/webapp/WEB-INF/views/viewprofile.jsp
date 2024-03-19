<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/forms/validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:45 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
<head>
<%@include file="head.jsp"%>
</head>
<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<div class="wrapper">
		<!--
        Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
        Tip 2: you can also add an image using data-image tag
        Tip 3: you can change the color of the sidebar with data-background-color="white | black"
    -->
		<%@include file="sidebar.jsp"%>
		<div class="main-panel">
			<%@include file="header.jsp"%>
			<div class="content">
				<div class="container-fluid">
					<div class="row">

						<div class="col-md-10" style="margin-left: 8%">
							<div class="card">
								<form:form id="RegisterValidation" method="post" 
								modelAttribute="admindet" enctype="multipart/form-data">
									<div class="card-header card-header-icon"
										data-background-color="rose">
										<i class="material-icons">person</i>
									</div>
									<div class="card-content">
										<h4 class="card-title">Profile</h4>

										<div class="fileinput fileinput-new text-center"
											data-provides="fileinput"
											style="margin-top: 10px; margin-left: 25px">
											<div class="fileinput-new thumbnail img-circle">
												<img
													src="/miiadmin/resources/images/profilePicture/${admindet.profilePicture}"
													class="picture-src" id="wizardPicturePreview" title="" />
											</div>
											<form:input type="hidden" path="adminId" id="adminId"/>
											<div
												class="fileinput-preview fileinput-exists thumbnail img-circle"
												style=""></div>
											<div>
												<span class="btn btn-round btn-rose btn-file"> <span
													class="fileinput-new">Add Photo</span> <span
													class="fileinput-exists">Change</span> <form:input
														type="hidden" path="" /><input type="file"
													name="profileImage" id="profileImage" disabled="true"/>
													</span> <br> <a href="#pablo"
													class="btn btn-danger btn-round fileinput-exists"
													data-dismiss="fileinput"><i class="fa fa-times"></i>
													Remove</a>
											</div>
										</div>
										 <form:input type="hidden" path="adminId" id="adminId"/>
										<div class="form-group">
											<div class="col-lg-9 col-md-9 col-sm-3"
												style="margin-left: 20%; margin-top: -18%">
												<label class="control-label"> Name <small>*</small>
												</label>
												<form:input class="form-control" name="name" path="name"
													type="text" required="true" aria-required="true" readonly="true"/>
												<span class="material-input"></span>
											</div>
										</div>
										<br>
										<br>
										<div class="form-group">
											<div class="col-lg-9 col-md-9 col-sm-3"
												style="margin-left: 20%; margin-top: -15%">
												<label class="control-label"> Address <small>*</small>
												</label>
												<form:input class="form-control" name="address1"
													path="address1" type="text" required="true"
													aria-required="true" readonly="true"/>
												<br>
												<form:input class="form-control" name="address2"
													path="address2" type="text" required="true"
													aria-required="true" readonly="true"/>
												<span class="material-input"></span>
											</div>
										</div>

										<div class="form-group">

											<div class="col-lg-3 col-md-3 col-sm-3"
												style="margin-left: 35%; margin-top: -3%">

												<form:select class="selectpicker" name="cityId" path="cityId" id="cityId" 
									data-style="btn btn-primary btn-round" title="City" disabled="true"
									 data-size="7" tabindex="-98" style="background-color:#ec407a">
													<c:forEach items="${cities}" var="c">
                         								<form:option value="${c.cityId}">${c.name}</form:option>  
                       								</c:forEach>
												</form:select>		
											</div>
											<span class="material-input"></span>
										</div>

										<div class="col-lg-1 col-md-1 col-sm-1"
											style="margin-top: -5%; margin-left: 68%"></div>
										<div class="col-lg-3 col-md-3 col-sm-3"
											style="margin-top: -5%; margin-left: 68%">
											<form:select class="selectpicker" name="areaId" path="areaId" id="areasByCity"
									data-style="btn btn-primary btn-round" title="Area" disabled="true"
									 data-size="7" tabindex="-98" style="background-color:#ec407a">
										<c:forEach items="${areas}" var="a">
                         					 <form:option value="${a.areaId}">${a.name}</form:option>  
                       					</c:forEach>
									</form:select>
										</div>
										<div class="col-lg-1 col-md-1 col-sm-1"
											style="margin-top: -7%; margin-left: 7%"></div>
										<div class="col-lg-3 col-md-3 col-sm-3"
											style="margin-top: -7%; margin-left: 7%">
											<div class="form-group">
												<label class="control-label"> Phone No <small>*</small>
												</label>
												<form:input class="form-control" name="phoneNo"
													path="phoneNo" type="text" required="true"
													aria-required="true" readonly="true"/>
												<span class="material-input"></span>
											</div>
										</div>

										<div class="form-group label-floating is-empty"></div>
										<div class="form-group">
										<br>
											<div class="col-lg-5 col-md-5 col-sm-3"
												style="margin-left: 7%">
												<label class="control-label"> Email Address <small>*</small>
												</label>
												<form:input class="form-control" name="email" path="emailId"
													type="email" required="true" aria-required="true" readonly="true"/>
												<span class="material-input"></span>
											</div>
										</div>
										<br>
										<br>
									<!-- 	<div class="form-group label-floating is-empty"
											style="margin-top: -60px; margin-left: 52%">
											<label class="control-label"> ID Proof <small>*</small>
											</label> <span class="btn btn-round btn-rose btn-file"
												style="margin-top: 30px; margin-left: 0%"> <span
												class="fileinput-new" disabled>Choose File</span> <input type="file"
												name="idProofImage" id="idProofImage" aria-invalid="false"
												class="valid" disabled="true"/>
											<div class="ripple-container"></div></span>
										</div>
									 -->
										<div class="col-md-6"
											style="margin-left: 48%; margin-top: -27%"></div>

										<div class="form-footer text-right">
											<div class="checkbox pull-left">
												<label> <input type="checkbox"
													name="optionsCheckboxes" required="true"
													aria-required="true" checked="checked"></span> I agree to
													the <a href="#something">terms and conditions</a>.
												</label>
											</div>
											<%-- <a href="/miiadmin/admin/editAdmin/${admin.adminId}"> --%>
											<button type="submit" formaction="/miiadmin/admin/editAdmin/${admindet.adminId}" class="btn btn-rose btn-fill">Edit</button>
											<!-- </a> -->
											<!-- <a href="/miiadmin/admin/home"> -->
											<button type="submit" formaction="/miiadmin/admin/home" class="btn btn-rose btn-fill">Back</button>
											<!-- </a> -->
										</div>
									</div>
								</form:form>
							</div>
						</div>
						<%@include file="footer.jsp"%>
					</div>
				</div>
</body>
<!--   Core JS Files   -->
<%@include file="corejsfiles.jsp"%>
</html>
