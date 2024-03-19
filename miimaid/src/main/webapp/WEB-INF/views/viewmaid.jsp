<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/forms/validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:45 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
	<%@include file="head.jsp" %>
</head>
<body >
  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
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
					<div class="container-fluid">
					 	    <div class="row">
	
        <div class="col-md-10" style="margin-left:8%">
            <div class="card">
               <form:form id="RegisterValidation" method="post" 
								modelAttribute="maiddet" enctype="multipart/form-data">
                    <div class="card-header card-header-icon" data-background-color="rose">
                        <i class="material-icons">person</i>
                    </div>
                    <div class="card-content">
                          <h4 class="card-title">Profile</h4> 
                          <form:input type="hidden" path="maidId" id="maidId"/>
                         <form:input type="hidden" path="availability" id="availability"/>
						 <form:input type="hidden" path="password" id="password"/>
                  		<div class="fileinput fileinput-new text-center" data-provides="fileinput" style="margin-top:10px;margin-left:25px">
								<div class="fileinput-new thumbnail img-circle">
									<img src="/miimaid/resources/images/profilePicture/${maiddet.profilePicture}"
													class="picture-src" id="wizardPicturePreview" title="" />
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail img-circle" style=""></div>
								<div>
									<span class="btn btn-round btn-rose btn-file">
										<span class="fileinput-new">Add Photo</span>
										<span class="fileinput-exists">Change</span>
										<input type="hidden">
										<form:input type="file" name="profilePictureImage" path="profilePictureImage"/></span>
									<br>
									<a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
								</div>
							</div>
                        <div class="form-group">
                        <div class="col-lg-9 col-md-9 col-sm-3" style="margin-left:20%; margin-top:-18%">
                            <label class="control-label">
                               Name
                                <small>*</small>
                            </label>	
                            <form:input class="form-control" name="name" path="name" type="text" required="true" aria-required="true" readonly="true"/>
                        <span class="material-input"></span></div></div>
                        <br><br>
                        <div class="form-group">
                        <div class="col-lg-9 col-md-9 col-sm-3" style="margin-left:20%; margin-top:-18%">
                            <label class="control-label">
                                Address
                                <small>*</small>
                            </label>
                            <form:input class="form-control" name="address1" path="address1" type="text" required="true" aria-required="true" readonly="true"/><br>
                            <form:input class="form-control" name="address2" path="address2" type="text" required="true" aria-required="true" readonly="true"/>
                        <span class="material-input"></span></div></div>
                        
                       <div class="form-group">
                        	
                            <div class="col-lg-3 col-md-3 col-sm-3" style="margin-left:5%; margin-top:-5%">
										
									<form:select class="selectpicker" path="cityId"
													data-style="btn btn-primary btn-round"
													title="City" data-size="7" tabindex="-98"
													style="background-color:#ec407a" disabled="true">
													<c:forEach items="${cities}" var="c">
                         								  <form:option value="${c.cityId}">${c.name}</form:option>  
                       								</c:forEach>
												</form:select>
							</div>
                        <span class="material-input"></span>
                        </div>
                        
                        <div class="col-lg-1 col-md-1 col-sm-1" style = "margin-top:-6%; margin-left:38%"></div>
                        <div class="col-lg-3 col-md-3 col-sm-3" style = "margin-top:-6%; margin-left:38%">
                         <form:select class="selectpicker" path="areaId" id="areasByCity"
													data-style="btn btn-primary btn-round"
													title="Area" data-size="7" tabindex="-98"
													style="background-color:#ec407a" disabled="true">
													<c:forEach items="${areas}" var="a">
                         								  <form:option value="${a.areaId}">${a.name}</form:option>  
                       								</c:forEach>
												</form:select>
                        <%-- <div class="form-group">
                            <label class="control-label">
                                Pincode
                                <small>*</small>
                            </label>
                            <form:input class="form-control" name="pincode" path="pincode" type="text" required="true" aria-required="true"/>
                        <span class="material-input"></span></div> --%></div>
                        <div class="col-lg-1 col-md-1 col-sm-1" style = "margin-top:-7%; margin-left:7%"></div>
                        <div class="col-lg-3 col-md-3 col-sm-3" style = "margin-top:-7%; margin-left:7%">
                        <div class="form-group">
                            <label class="control-label">
                                Phone No
                                <small>*</small>
                            </label>
                            <form:input class="form-control" name="phoneNo" path="phoneNo" type="text" required="true" aria-required="true" readonly="true"/>
                        <span class="material-input"></span></div>
                        </div> 
                      
                     <div class="form-group"></div>	
                     <div class="form-group">
                     <div class="col-lg-3 col-md-3 col-sm-3" style="margin-top:15px">
                     	<label class="" style="margin-left:18%">
                                Gender
                                <small>*</small>
                            </label></div>
                     	<div class="radio">
              
									<label style="margin-left:-120px; margin-top:15px">
										<form:radiobutton name="gender" path="gender" value="Male" readonly="true"/>
										<!-- <input type="radio" name="optionsRadios" checked="true"> -->
										<span class="circle"></span>
										<span class="check"></span>
										Male
									</label>
									<label>
										<form:radiobutton name="gender" path="gender" value="Female" readonly="true"/>
										<!-- <input type="radio" name="optionsRadios" checked="true"> -->
										<span class="circle"></span>
										<span class="check"></span>
										Female
									</label>
									<label>
										<form:radiobutton name="gender" path="gender" value="Others" readonly="true"/>
										<!-- <input type="radio" name="optionsRadios" checked="true"> -->
										<span class="circle"></span>
										<span class="check"></span>
										Others
									</label>
								</div>
                     </div> 
                     <div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:450px; margin-top:-80px;">
                     <div class="form-group">
                            <label class="control-label">
                                Date Of Birth
                                <small>*</small>
                            </label>
                            <form:input type="date" name="DOB" path="DOB" class="form-control datepicker" readonly="true"/>
                            <span class="material-input"></span></div></div>
                     
            		
                        
             			<div class="form-group">
             			<div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:5px">
                            <label class="control-label">
                                Email Address
                                <small>*</small>
                            </label>
                            <form:input class="form-control" name="emailId" path="emailId" type="email" required="true" aria-required="true" readonly="true"/>
                        <span class="material-input"></span></div></div>
                        <div class="form-group">
                        	
                            <div class="col-lg-3 col-md-3 col-sm-3" style="margin-left:60%; margin-top:-60px;">
									<form:select class="selectpicker" name="mainServiceId" path="mainServiceId" id="mainServiceId"
									data-style="btn btn-primary btn-round" title="Main Service"
									 data-size="7" tabindex="-98" style="background-color:#ec407a" disabled="true">
										<c:forEach items="${mservices}" var="m">
                         					 <form:option value="${m.mainserviceId}">${m.name}</form:option>  
                       					</c:forEach>
									</form:select>
							</div>
                        <span class="material-input"></span></div>
                        <br><br><br><br>
                        <!-- <div class="form-group">
                        <div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:0px">
                            <label class="control-label">
                                Password
                                <small>*</small>
                            </label>
                            <input class="form-control" name="password" id="registerPassword" type="password" required="true" aria-required="true">
                        <span class="material-input"></span></div></div>
						<br><br>
                        <div class="form-group">
                        <div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:0px">
                            <label class="control-label">
                                Confirm Password
                                <small>*</small>
                            </label>
                            <input class="form-control" name="confirm_password" id="registerPasswordConfirmation" type="password" required="true" equalto="#registerPassword" aria-required="true">
                        <span class="material-input"></span></div></div> -->
                        
                        <div class="form-group">
                        <div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:5px">
                        <label class="label-control">Preferred Timings<small>*</small></label><br>
                        <div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:5px">
                        <label class="control-label">Start Time<small>*</small></label>
                        <form:input type="time" name="starttime" path="starttime" class="form-control timepicker" value="09:00" readonly="true"/></div>
                        <div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:5px">
                        <label class="control-label">End Time<small>*</small></label>
                        <form:input type="time"  name="endtime" path="endtime" class="form-control timepicker" value="06:00" readonly="true"/></div>
                    <span class="material-input"></span></div></div>
                    <br><br><br><br>
                       <%--  <div class="form-group label-floating is-empty" style="margin-left:23px">
                        <label class="control-label">
                                ID Proof
                                <small>*</small>
                            </label>                     
                        <span class="btn btn-round btn-rose btn-file" style="margin-top:3.5%;margin-left:5px">
						<span class="fileinput-new">Choose File</span>
						<form:input type="file" id="id" name="idProofImage" path="idProofImage" aria-invalid="false" class="valid" readonly="true"/><div class="ripple-container"></div></span>
                         </div>   
                         <div class="form-group label-floating is-empty" style = "margin-top:-2%;margin-left:23px">
                         <label class="control-label">
                                Background Verfication
                                <small>*</small>
                            </label>  
                         <span class="btn btn-round btn-rose btn-file" style="margin-top:3.5%;margin-left:5px">
						<span class="fileinput-new">Choose File</span>
						<form:input type="file" id="id" name="backgroundCheckImage" path="backgroundCheckImage" aria-invalid="false" class="valid" readonly="true"/>
						<div class="ripple-container"></span></div></div> --%>
            <div class="col-md-6" style="margin-left:48%; margin-top:-13%">
			<div class="card">
				<div class="card-header card-header-icon" data-background-color="rose">
					<i class="material-icons">contacts</i>
				</div>

				<div class="card-content">
					<h4 class="card-title">Bank Details</h4>
						<div class="form-group">
	                        <label class="control-label">Bank Name</label>
	                        <form:input type="text" name="bankName" path="bankName" class="form-control" readonly="true"/>
	                    <span class="material-input"></span></div>
	                    <div class="form-group">
	                        <label class="control-label">IFSC Code</label>
	                        <form:input type="text" name="ifsc" path="ifsc" class="form-control" readonly="true"/>
	                    <span class="material-input"></span></div>
	                    <div class="form-group">
	                        <label class="control-label">Account Number</label>
	                        <form:input type="text" name="accNo" path="accNo" class="form-control" readonly="true"/>
	                    <span class="material-input"></span></div>
	                    <div class="form-group">
	                        <label class="control-label">Branch Name</label>
	                        <form:input type="text" name="branchName" path="branchName" class="form-control" readonly="true"/>
	                    <span class="material-input"></span></div>
				</div>
			</div>
		</div>
                     
                        <div class="form-footer text-right">
                            <div class="checkbox pull-left">
                                <label>
                                    <input type="checkbox" name="optionsCheckboxes" required="true" aria-required="true" checked="checked"></span>
                                    I agree to the <a href="#something">terms and conditions</a>.
                                </label>
                            </div>
                        	<%-- <a href="/miiadmin/maid/editMaid/${maid.maidId}"> --%>
							<button type="submit" formaction="/miimaid/maid/editMaid" class="btn btn-rose btn-fill">Edit</button>
							<!-- </a> -->
							<!-- <a href="/miiadmin/admin/home"> -->
							<button type="submit" formaction="/miimaid/maid/home" class="btn btn-rose btn-fill">Back</button>
                        	               
                        </div>
                    </div>
            </form:form>
            </div>
        </div>
        <%@include file = "footer.jsp" %>			
  		</div>
	</div>
</body>
	<!--   Core JS Files   -->
	<%@include file = "corejsfiles.jsp" %>
</html>
    