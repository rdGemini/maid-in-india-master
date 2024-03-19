<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/forms/validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:45 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
	<%@include file="../../head.jsp" %>
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
    <%@include file = "../../sidebar.jsp" %>
	<div class="main-panel">
	<%@include file = "../../header.jsp" %>
				<div class="content">
					<div class="container-fluid">
					 	    <div class="row">
	
        <div class="col-md-10" style="margin-left:8%">
            <div class="card">
                <form id="RegisterValidation" action="#" method="">
                    <div class="card-header card-header-icon" data-background-color="rose">
                        <i class="material-icons">person</i>
                    </div>
                    <div class="card-content">
                        <h4 class="card-title">Registration Form</h4>
                        
                  		<div class="fileinput fileinput-new text-center" data-provides="fileinput" style="margin-top:10px;margin-left:25px">
								<div class="fileinput-new thumbnail img-circle">
									<img src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/default-avatar.png" class="picture-src" id="wizardPicturePreview" title=""/>
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail img-circle" style=""></div>
								<div>
									<span class="btn btn-round btn-rose btn-file">
										<span class="fileinput-new">Add Photo</span>
										<span class="fileinput-exists">Change</span>
										<input type="hidden"><input type="file" name="..."></span>
									<br>
									<a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
								</div>
							</div>
                        <div class="form-group label-floating is-empty">
                        <div class="col-lg-9 col-md-9 col-sm-3" style="margin-left:20%; margin-top:-18%">
                            <label class="control-label">
                               Name
                                <small>*</small>
                            </label>	
                            <input class="form-control" name="name" type="text" required="true" aria-required="true">
                        <span class="material-input"></span></div></div>
                        <br><br>
                        <div class="form-group label-floating is-empty">
                        <div class="col-lg-9 col-md-9 col-sm-3" style="margin-left:20%; margin-top:-18%">
                            <label class="control-label">
                                Address
                                <small>*</small>
                            </label>
                            <input class="form-control" name="address" type="text" required="true" aria-required="true"><br>
                            <input class="form-control" name="address" type="text" required="true" aria-required="true">
                        <span class="material-input"></span></div></div>
                        
                       <div class="form-group label-floating is-empty">
                        	
                            <div class="col-lg-3 col-md-3 col-sm-3" style="margin-left:5%; margin-top:-5%">
									
									<select class="selectpicker" data-style="btn btn-primary btn-round" title="Single Select" data-size="7" tabindex="-98" style="background-color:#ec407a"><option class="bs-title-option" value="">Single Select</option>
										<option disabled="" selected="">Choose city</option>
										<option value="2">Ahmedabad</option>
										<option value="3">Surat</option>
									</select>
							</div>
                        <span class="material-input"></span></div>
                        
                        <div class="col-lg-1 col-md-1 col-sm-1" style = "margin-top:-5%; margin-left:38%"></div>
                        <div class="col-lg-3 col-md-3 col-sm-3" style = "margin-top:-5%; margin-left:38%">
                        <div class="form-group label-floating is-empty">
                            <label class="control-label">
                                Pincode
                                <small>*</small>
                            </label>
                            <input class="form-control" name="pincode" type="text" required="true" aria-required="true">
                        <span class="material-input"></span></div></div>
                        <div class="col-lg-1 col-md-1 col-sm-1" style = "margin-top:-5%; margin-left:7%"></div>
                        <div class="col-lg-3 col-md-3 col-sm-3" style = "margin-top:-5%; margin-left:7%">
                        <div class="form-group label-floating is-empty">
                            <label class="control-label">
                                Phone No
                                <small>*</small>
                            </label>
                            <input class="form-control" name="pincode" type="text" required="true" aria-required="true" 	>
                        <span class="material-input"></span></div>
                        </div> 
                      
                     <div class="form-group label-floating is-empty"></div>	
                     <div class="form-group label-floating is-empty">
                     
             			<div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:-15px">
                            <label class="control-label">
                                Email Address
                                <small>*</small>
                            </label>
                            <input class="form-control" name="email" type="email" required="true" aria-required="true">
                        <span class="material-input"></span></div></div>
                        <br><br>
                        <div class="form-group label-floating is-empty">
                        <div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:-15px">
                            <label class="control-label">
                                Password
                                <small>*</small>
                            </label>
                            <input class="form-control" name="password" id="registerPassword" type="password" required="true" aria-required="true">
                        <span class="material-input"></span></div></div>
						<br><br>
                        <div class="form-group label-floating is-empty">
                        <div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:-15px">
                            <label class="control-label">
                                Confirm Password
                                <small>*</small>
                            </label>
                            <input class="form-control" name="confirm_password" id="registerPasswordConfirmation" type="password" required="true" equalto="#registerPassword" aria-required="true">
                        <span class="material-input"></span></div></div>
                        <br><br>
                        <div class="form-group label-floating is-empty">
                        <label class="control-label">
                                Certification
                                <small>*</small>
                            </label>                     
                        <span class="btn btn-round btn-rose btn-file" style="margin-top:3.5%">
						<span class="fileinput-new">Choose File</span>
						<input type="file" id="id" aria-invalid="false" class="valid"><div class="ripple-container"></div></span>
                         </div>   
                         <div class="col-md-6" style="margin-left:48%; margin-top:-27%">
			<div class="card">
				<div class="card-header card-header-icon" data-background-color="rose">
					<i class="material-icons">contacts</i>
				</div>

				<div class="card-content">
					<h4 class="card-title">Bank Details</h4>
					<form method="#" action="#">
	                    <div class="form-group label-floating is-empty">
	                        <label class="control-label">IFSC Code</label>
	                        <input type="text" class="form-control">
	                    <span class="material-input"></span></div>
	                    <div class="form-group label-floating is-empty">
	                        <label class="control-label">Account Number</label>
	                        <input type="text" class="form-control">
	                    <span class="material-input"></span></div>
	                    <div class="form-group label-floating is-empty">
	                        <label class="control-label">Branch Name</label>
	                        <input type="text" class="form-control">
	                    <span class="material-input"></span></div>
	                </form>
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
                            <button type="reset" class="btn btn-rose btn-fill">Reset</button>
                            <button class="btn btn-rose btn-fill" onclick="demo.showSwal('success-message')">Submit<div class="ripple-container"></div></button>
                            <button type="submit" class="btn btn-rose btn-fill">Register</button>                
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <%@include file = "../../footer.jsp" %>			
  		</div>
	</div>
</body>
	<!--   Core JS Files   -->
	<%@include file = "../../corejsfiles.jsp" %>
	
</html>
    