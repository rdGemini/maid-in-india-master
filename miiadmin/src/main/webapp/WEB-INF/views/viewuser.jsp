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
								modelAttribute="userdet" enctype="multipart/form-data">
                
                    <div class="card-header card-header-icon" data-background-color="rose">
                        <i class="material-icons">person</i>
                    </div>
                    <div class="card-content">	
                        <h4 class="card-title">Profile</h4>
                        <div class="form-group">
                        <div class="col-lg-12 col-md-12 col-sm-3" style="margin-left:0%; margin-top:0%">
                            <label class="control-label">
                               Name
                                <small>*</small>
                            </label>	
                           <form:input class="form-control" name="name" path="name" type="text" required="true" aria-required="true" readonly="true"/>
                        <span class="material-input"></span></div></div>
                        <br><br>
                       <div class="form-group">
                        <div class="col-lg-12 col-md-12 col-sm-3">
                            <label class="control-label">
                                Address
                                <small>*</small>
                            </label>
                            <form:input class="form-control" name="address1" path="address1" type="text" required="true" aria-required="true" readonly="true"/><br>
                            <form:input class="form-control" name="address2" path="address2" type="text" required="true" aria-required="true" readonly="true"/>
                        <span class="material-input"></span></div></div>
                         
                         
                       
                     <div class="form-group"></div>	
                    
                        <br><br>
                       <br><br>
					            <div class="col-lg-1 col-md-1 col-sm-1" style = "margin-top:0%; margin-left:0%"></div>
                        <div class="col-lg-3 col-md-3 col-sm-3" style = "margin-top:0%; margin-left:0%">
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
                     <div class="col-lg-3 col-md-3 col-sm-3" style="margin-top:2.5%">
                     	<label class="" style="margin-left:18%">
                                Gender
                                <small>*</small>
                            </label></div>
                     	<div class="radio">
              
									<label style="margin-left:-12%; margin-top:2.5%">
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
                	
            		
                        
             			<div class="form-group"><br>
             			<div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:0px">
                            <label class="control-label">
                                Email Address
                                <small>*</small>
                            </label>
                            <form:input class="form-control" name="emailId" path="emailId" type="email" required="true" aria-required="true" readonly="true"/>
                        <span class="material-input"></span></div></div>
                        <br><br>
                       
                     
                 <div class="form-footer text-right">
                            <div class="checkbox pull-left" style="margin-left:-40%"><br>
                                <label>
                                    <input type="checkbox" name="optionsCheckboxes" required="true" aria-required="true" checked="checked"></span>
                                    I agree to the <a href="#something">terms and conditions</a>.
                                </label>
                            </div>
                        	<%-- <a href="/miiadmin/maid/editMaid/${maid.maidId}"> --%>
							<button type="submit" formaction="/miiadmin/user/userList" class="btn btn-rose btn-fill">Back</button>
                        	           
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
    