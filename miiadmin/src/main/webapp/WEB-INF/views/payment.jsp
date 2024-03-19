<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/forms/wizard.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:45 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
	<%@include file="../../head.jsp" %>
</head>

<body>
  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->

	<div class="wrapper">

	    <%@include file="../../sidebar.jsp" %>
		<div class="main-panel">
		<%@include file="../../header.jsp" %>
							<!-- <div class="content">
					<div class="container-fluid">
					 	    <div class="col-sm-8 col-sm-offset-2">
             Wizard container       
        <div class="wizard-container">
            <div class="card wizard-card" data-color="rose" id="wizardProfile">
                <form action="#" method="">
                   You can switch " data-color="purple" "  with one of the next bright colors: "green", "orange", "red", "blue"      

                    <div class="wizard-header">
                        <h3 class="wizard-title">
                           Build Your Profile
                        </h3>
                        <h5>This information will let us know more about you.</h5>
                    </div>
                    <div class="wizard-navigation">
                        <ul>
                            <li><a href="#about" data-toggle="tab">About</a></li>
                            <li><a href="#account" data-toggle="tab">Account</a></li>
                            <li><a href="#address" data-toggle="tab">Address</a></li>
                        </ul>
                    </div>

                    <div class="tab-content">
                        <div class="tab-pane" id="about">
                          <div class="row">
                                <h4 class="info-text"> Let's start with the basic information (with validation)</h4>
                                <div class="col-sm-4 col-sm-offset-1">
                                    <div class="picture-container">
                                        <div class="picture">
                                            <img src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/default-avatar.png" class="picture-src" id="wizardPicturePreview" title=""/>
                                            <input type="file" id="wizard-picture">
                                        </div>
                                        <h6>Choose Picture</h6>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">face</i>
                                        </span>
                                        <div class="form-group label-floating">
                                          <label class="control-label">First Name <small>(required)</small></label>
                                          <input name="firstname" type="text" class="form-control">
                                        </div>
                                    </div>

                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">record_voice_over</i>
                                        </span>
                                        <div class="form-group label-floating">
                                          <label class="control-label">Last Name <small>(required)</small></label>
                                          <input name="lastname" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-10 col-lg-offset-1">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">email</i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Email <small>(required)</small></label>
                                            <input name="email" type="email" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="account">
                            <h4 class="info-text"> What are you doing? (checkboxes) </h4>
                            <div class="row">
                                <div class="col-lg-10 col-lg-offset-1">
                                    <div class="col-sm-4">
                                        <div class="choice" data-toggle="wizard-checkbox">
                                            <input type="checkbox" name="jobb" value="Design">
                                            <div class="icon">
                                                <i class="fa fa-pencil"></i>
                                            </div>
                                            <h6>Design</h6>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="choice" data-toggle="wizard-checkbox">
                                            <input type="checkbox" name="jobb" value="Code">
                                            <div class="icon">
                                                <i class="fa fa-terminal"></i>
                                            </div>
                                            <h6>Code</h6>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="choice" data-toggle="wizard-checkbox">
                                            <input type="checkbox" name="jobb" value="Develop">
                                            <div class="icon">
                                                <i class="fa fa-laptop"></i>
                                            </div>
                                            <h6>Develop</h6>
                                        </div>

                                        <select class="selectpicker" data-style="btn btn-primary btn-round" title="Single Select" data-size="7">
                                            <option disabled selected>Choose city</option>
                                            <option value="2">Foobar</option>
                                            <option value="3">Is great</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="address">
                            <div class="row">
                                <div class="col-sm-12">
                                    <h4 class="info-text"> Are you living in a nice area? </h4>
                                </div>
                                <div class="col-sm-7 col-sm-offset-1">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Street Name</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Street No.</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-5 col-sm-offset-1">
                                    <div class="form-group label-floating">
                                        <label class="control-label">City</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Country</label>
                                        <select name="country" class="form-control">
                                            <option disabled="" selected=""></option>
                                            <option value="Afghanistan"> Afghanistan </option>
                                            <option value="Albania"> Albania </option>
                                            <option value="Algeria"> Algeria </option>
                                            <option value="American Samoa"> American Samoa </option>
                                            <option value="Andorra"> Andorra </option>
                                            <option value="Angola"> Angola </option>
                                            <option value="Anguilla"> Anguilla </option>
                                            <option value="Antarctica"> Antarctica </option>
                                            <option value="...">...</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="wizard-footer">
                        <div class="pull-right">
                            <input type='button' class='btn btn-next btn-fill btn-rose btn-wd' name='next' value='Next' />
                            <input type='button' class='btn btn-finish btn-fill btn-rose btn-wd' name='finish' value='Finish' />
                        </div>

                        <div class="pull-left">
                            <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Previous' />
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </form>
            </div>
        </div> wizard container
    </div>

					</div>
				</div> -->
				<div class="content">
					<div class="container-fluid">
					 	    <div class="col-sm-8 col-sm-offset-2">
        <!--      Wizard container        -->
        <div class="wizard-container">
            <div class="card wizard-card active" data-color="rose" id="wizardProfile">
                <form action="#" method="" novalidate="novalidate">
            <!--        You can switch " data-color="purple" "  with one of the next bright colors: "green", "orange", "red", "blue"       -->

                    <div class="wizard-header">
                        <h3 class="wizard-title">
                           Make Payment
                        </h3>
                        
                    </div>
                    <div class="wizard-navigation">
                        <ul class="nav nav-pills">
                            <li class="active" style="width: 33.3333%;"><a href="#about" data-toggle="tab" aria-expanded="true">Choose a way to pay</a></li>
                            <li style="width: 33.3333%;"><a href="#account" data-toggle="tab">Provide Information</a></li>
                            <li style="width: 33.3333%;"><a href="#address" data-toggle="tab">Verify</a></li>
                        </ul>
                    <div class="moving-tab" style="width: 184.488px; transform: translate3d(-8px, 0px, 0px); transition: transform 0s ease 0s;">Choose a way to pay</div></div>

                    <div class="tab-content">
                        <div class="tab-pane active" id="about">
                          <div class="row">
                                <h4 class="info-text"> Choose a way to pay online. </h4>
                                <div class="col-lg-10 col-lg-offset-1">
                               	<div class="" style="margin-left:20%; margin-top:10%">
									<label style="color:#3C4858; font-size:25px">
										<input type="radio" name="optionsRadios" checked="true">
										Visa / Visa Debit / Visa Electron
									</label><br>
									<label style="color:#3C4858; font-size:25px">
										<input type="radio" name="optionsRadios" checked="true">
										Mastercard
									</label><br>
									<label style="color:#3C4858; font-size:25px">
										<input type="radio" name="optionsRadios" checked="true">
										Amex
									</label>
								</div></div>
                                
                            </div>
                        </div>
                        <div class="tab-pane" id="account">
                            <h4 class="info-text">Visa / Visa Debit / Visa Electron</h4>
                            <div class="row">
                                <div class="col-lg-10 col-lg-offset-1">
                                    
                                    <div class="input-group" style="margin-right:15%;margin-left:10%">
                                        <span class="input-group-addon">
                                            <i class="material-icons">person</i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Card Holder Name <small>*</small></label>
                                            <input name="name" type="text" class="form-control">
                                        </div>
                                   </div>
                                    <div class="input-group" style="margin-right:15%;margin-left:10%">
                                        <span class="input-group-addon">
                                            <i class="material-icons">payment</i>
                                        </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Card Holder Number <small>*</small></label>
                                            <input name="num" type="text" class="form-control">
                                        </div>
                                   </div>
                                   <div class="input-group">
                                        <div class="form-group label-floating is-empty">
                        				<label class="control-label" style="margin-left:115px">
                                			End Date<small>*</small>
                            			</label> <br><br>
                            			<div class="col-lg-12 col-md-12 col-sm-3" style="margin-left:40%; margin-top:-5%; width:60%">
									
									<select class="selectpicker" data-style="btn btn-primary btn-round" title="Single Select" data-size="7" tabindex="-98" style="background-color:#ec407a"><option class="bs-title-option" value="">Single Select</option>
										<option disabled="" selected="">MM</option>
										<option value="2">01</option>
										<option value="3">02</option>
									</select>
							</div>
							
							<div class="col-lg-12 col-md-12 col-sm-3" style="margin-left:95%; margin-top:-22%; width:60%">
									
									<select class="selectpicker" data-style="btn btn-primary btn-round" title="Single Select" data-size="7" tabindex="-98" style="background-color:#ec407a"><option class="bs-title-option" value="">Single Select</option>
										<option disabled="" selected="">YYYY</option>
										<option value="2">2019</option>
										<option value="3">2020</option>
									</select>
							</div>
                        <span class="material-input"></span></div>
                        
                        
                                   </div>
                                   <div class="input-group" style="margin-left:59.5%; margin-top:-8%">
                                        
                                        <div class="form-group label-floating">
                                            <label class="control-label">CVV <small>*</small></label>
                                            <input name="cvv" type="text" class="form-control">
                                        </div>
                                   </div>
                                   
                                   <div class="input-group" style="margin-left:12%">
                                        
                                        <div class="checkbox pull-left">
                                <label>
                                    <input type="checkbox" name="optionsCheckboxes" required="true" aria-required="true" checked="checked"></span>
                                    I agree to the <a href="#something">terms and conditions</a>.
                                </label>
                            </div>
                                   </div>
                                   
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="address">
                            <div class="row">
                                <div class="col-sm-12">
                                <br><br>
                                    <h4 class="info-text"> Enter OTP </h4>
                                    
                                    <div class="input-group">
                                        
                                        <div class="form-group label-floating" style="margin-left:33%">
                                            <input name="otp1" type="text" class="form-control" style="width:10%; margin-left:5%">
                                            <input name="otp2" type="text" class="form-control" style="width:10%; margin-left:5%">
                                            <input name="otp3" type="text" class="form-control" style="width:10%; margin-left:5%">
                                            <input name="otp4" type="text" class="form-control" style="width:10%; margin-left:5%">
                                            <br><br>
                                            <a href="#" style="color:rose; margin-left:27%">Resend OTP</a>
                                        </div>
                                   </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="wizard-footer">
                        <div class="pull-right">
                            <input type="button" class="btn btn-next btn-fill btn-rose btn-wd" name="next" value="Next">
                            <input type="button" class="btn btn-finish btn-fill btn-rose btn-wd" name="finish" value="Submit" style="display: none;">
                        </div>

                        <div class="pull-left">
                            <input type="button" class="btn btn-previous btn-rose btn-fill btn-default btn-wd disabled" name="previous" value="Previous">
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </form>
            </div>
        </div> <!-- wizard container -->
    </div>

					</div>
				</div>
	<%@include file="../../footer.jsp" %>
		</div>
	</div>

</body>
	<!--   Core JS Files   -->
	<%@include file="../../corejsfiles.jsp" %>
	<script type="text/javascript">
		$(document).ready(function(){
			demo.initMaterialWizard();
			setTimeout(function(){
				$('.card.wizard-card').addClass('active');
			},600);
		});
	</script>
	
<!-- <script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.min.js" type="text/javascript"></script>
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/material.min.js" type="text/javascript"></script>
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>

Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert
<script src="/miiadmin/cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>

Library for adding dinamically elements
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/arrive.min.js" type="text/javascript"></script>

Forms Validations Plugin
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.validate.min.js"></script>

 Plugin for Date Time Picker and Full Calendar Plugin
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/moment.min.js"></script>

 Charts Plugin, full documentation here: https://gionkunz.github.io/chartist-js/
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/chartist.min.js"></script>

 Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.bootstrap-wizard.js"></script>

 Notifications Plugin, full documentation here: http://bootstrap-notify.remabledesigns.com/   
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/bootstrap-notify.js"></script>

  Sharrre Library   
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.sharrre.js"></script>

 Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/bootstrap-datetimepicker.js"></script>

Vector Map plugin, full documentation here: http://jvectormap.com/documentation/
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery-jvectormap.js"></script>

Sliders Plugin, full documentation here: https://refreshless.com/nouislider/
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/nouislider.min.js"></script>

 Google Maps Plugin   
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD1_8C5Xz9RpEeJSaJ3E_DeBv8i7j_p6Aw"></script>

 Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.select-bootstrap.js"></script>

 DataTables.net Plugin, full documentation here: https://datatables.net/   
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.datatables.js"></script>

Sweet Alert 2 plugin, full documentation here: https://limonte.github.io/sweetalert2/
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/sweetalert2.js"></script>

Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jasny-bootstrap.min.js"></script>

 Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar   
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/fullcalendar.min.js"></script>

Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs 
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/jquery.tagsinput.js"></script>

Material Dashboard javascript methods
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/material-dashboard98f3.js?v=1.3.0"></script>

Material Dashboard DEMO methods, don't include it in your project!
<script src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/js/demo.js"></script>

<script>
// Facebook Pixel Code Don't Delete
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','/miiadmin/connect.facebook.net/en_US/fbevents.js');

try{
  fbq('init', '111649226022273');
  fbq('track', "PageView");

}catch(err) {
  console.log('Facebook Track Error:', err);
}

</script>
<noscript>
  <img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=111649226022273&amp;ev=PageView&amp;noscript=1"
  />
</noscript>





	




Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/forms/wizard.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:46 GMT

 --></html>
    