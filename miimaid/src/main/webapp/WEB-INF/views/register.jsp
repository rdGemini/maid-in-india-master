<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/pages/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:40 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<%@include file = "head.jsp" %>
</head>

<body class="off-canvas-sidebar">
  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->
    <nav class="navbar navbar-primary navbar-transparent navbar-absolute">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href="home.jsp">
            <img src="/miimaid/resources/img/maid.png" style="height:125px; width:100px; margin-top:-40px">
            <img src="/miimaid/resources/img/text.png" style="height:100px; width:230px; margin-left:70px; margin-top:-115px; margin-bottom:-30px">
            </a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                
            </ul>
        </div>
    </div>
</nav>


    <div class="wrapper wrapper-full-page">
        <div class="full-page register-page" filter-color="black" data-image="/miimaid/resources/img/register.jpg">
    <div class="container">
        <div class="row">
            <div class="col-md-10" style="margin-left:8%">
            <div class="card">
                <form:form id="RegisterValidation" method="post" 
								modelAttribute="register" enctype="multipart/form-data">
                    <!-- <div class="card-header card-header-icon" data-background-color="rose">
                        <i class="material-icons">person</i>
                    </div> -->
                    <div class="card-content">
                        <h2 class="card-title text-center">Register</h2>
                        <div class="social text-center">
                                <button class="btn btn-just-icon btn-round btn-twitter">
                                    <i class="fa fa-twitter"></i>
                                </button>
                                <button class="btn btn-just-icon btn-round btn-google">
	                            <i class="fa fa-google"> </i>
	                        </button>
                                <button class="btn btn-just-icon btn-round btn-facebook">
                                    <i class="fa fa-facebook"> </i>
                                </button>
                                <h4> or be classical </h4>
                            </div>
                        
                  		<form:input type="hidden" path="maidId" id="maidId"/>
                         <form:input type="hidden" path="availability" id="availability"/>
						 <%-- <form:input type="hidden" path="password" id="password"/> --%>
                  		<div class="fileinput fileinput-new text-center" data-provides="fileinput" style="margin-top:10px;margin-left:25px">
								<div class="fileinput-new thumbnail img-circle">
									<img src="/miimaid/resources/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/default-avatar.png" class="picture-src" id="wizardPicturePreview" title=""/>
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail img-circle" style=""></div>
								<div>
									<span class="btn btn-round btn-rose btn-file">
										<span class="fileinput-new">Add Photo</span>
										<span class="fileinput-exists">Change</span>
										<input type="hidden">
										<form:input type="file" name="profilePictureImage" path="profilePictureImage" required="true"/></span>
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
                            <form:input class="form-control" name="name" path="name" type="text" required="true" aria-required="true" id="uname"/>
                        <span class="material-input" id="errName" style="color:red;"></span></div></div>
                        <br><br><br><br>
                        <div class="form-group">
                        <div class="col-lg-9 col-md-9 col-sm-3" style="margin-left:20%; margin-top:-18%">
                            <label class="control-label">
                                Address
                                <small>*</small>
                            </label>
                            <form:input class="form-control" name="address1" path="address1" type="text" required="true" aria-required="true" id="address"/><br>
                            <form:input class="form-control" name="address2" path="address2" type="text" required="true" aria-required="true" id="address"/>
                        <span class="material-input" id="errAddress" style="color:red;"></span></div></div>
                        
                       <div class="form-group">
                        	
                            <div class="col-lg-3 col-md-3 col-sm-3" style="margin-left:5%; margin-top:-5%">
										
									<form:select class="selectpicker" path="cityId"
													data-style="btn btn-primary btn-round"
													title="City" data-size="7" tabindex="-98"
													style="background-color:#ec407a" required="true">
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
													style="background-color:#ec407a" required="true">
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
                            <form:input class="form-control" name="phoneNo" path="phoneNo" type="text" required="true" aria-required="true" id="mobno"/>
                        <span class="material-input" id="errNo" style="color:red;"></span></div>
                        </div> 
                      
                     <div class="form-group"></div>	<br><br><br><br><br>
                     <div class="form-group">
                     <div class="col-lg-3 col-md-3 col-sm-3" style="margin-top:15px">
                     	<label class="" style="margin-left:18%">
                                Gender
                                <small>*</small>
                            </label></div>
                     	<div class="radio">
              
									<label style="margin-left:-120px; margin-top:15px">
										<form:radiobutton name="gender" path="gender" value="Male" checked="true"/>
										<!-- <input type="radio" name="optionsRadios" checked="true"> -->
										<span class="circle"></span>
										<span class="check"></span>
										Male
									</label>
									<label>
										<form:radiobutton name="gender" path="gender" value="Female"/>
										<!-- <input type="radio" name="optionsRadios" checked="true"> -->
										<span class="circle"></span>
										<span class="check"></span>
										Female
									</label>
									<label>
										<form:radiobutton name="gender" path="gender" value="Others"/>
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
                            <form:input type="date" name="DOB" path="DOB" class="form-control datepicker" required="true"/>
                            <span class="material-input" id="errDob" style="color:red;"></span></div></div>
                     
            		 <!-- <div class="form-group">
                        	
                            <div class="col-lg-3 col-md-3 col-sm-3" style="margin-left:70%; margin-top:-60px;">
									
									<select class="selectpicker" data-style="btn btn-primary btn-round" title="Single Select" data-size="7" tabindex="-98" style="background-color:#ec407a"><option class="bs-title-option" value="">Single Select</option>
										<option disabled="" selected="">Preferred Work</option>
										<option value="2">House Cleaning</option>
										<option value="3">Taking care of elder people</option>
									</select>
							</div>
                        <span class="material-input"></span></div>
                     -->    
             			<div class="form-group">
             			<div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:5px">
                            <label class="control-label">
                                Email Address
                                <small>*</small>
                            </label>
                            <form:input class="form-control" name="emailId" path="emailId" type="email" required="true" aria-required="true" id="eid"/>
                        <span class="material-input" id="errEmail" style="color:red;"></span></div></div>
                        <div class="form-group">
                        	
                            <div class="col-lg-3 col-md-3 col-sm-3" style="margin-left:60%; margin-top:-60px;">
									<form:select class="selectpicker" name="mainServiceId" path="mainServiceId" id="mainServiceId"
									data-style="btn btn-primary btn-round" title="Main Service"
									 data-size="7" tabindex="-98" style="background-color:#ec407a" required="true">
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
                        <form:input type="time" name="starttime" path="starttime" class="form-control timepicker" value="09:00" required="true"/></div>
                        <div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:5px">
                        <label class="control-label">End Time<small>*</small></label>
                        <form:input type="time"  name="endtime" path="endtime" class="form-control timepicker" value="06:00" required="true"/></div>
                    <span class="material-input"></span></div></div>
                    <br><br><br><br>
                        <div class="form-group label-floating is-empty" style="margin-left:23px">
                        <label class="control-label">
                                ID Proof
                                <small>*</small>
                            </label>                     
                        <span class="btn btn-round btn-rose btn-file" style="margin-top:3.5%;margin-left:5px">
						<span class="fileinput-new">Choose File</span>
						<form:input type="file" id="id" name="idProofImage" path="idProofImage" aria-invalid="false" class="valid" required="true"/><div class="ripple-container"></div></span>
                         </div>   
                         <div class="form-group label-floating is-empty" style = "margin-top:-2%;margin-left:23px">
                         <label class="control-label">
                                Background Verfication
                                <small>*</small>
                            </label>  
                         <span class="btn btn-round btn-rose btn-file" style="margin-top:3.5%;margin-left:5px">
						<span class="fileinput-new">Choose File</span>
						<form:input type="file" id="id" name="backgroundCheckImage" path="backgroundCheckImage" aria-invalid="false" class="valid" required="true"/>
						<div class="ripple-container"></span></div></div>
						<div class="form-group">
                        <div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:0px">
                            <label class="control-label">
                                Password
                                <small>*</small>
                            </label>
                            <input class="form-control" name="password" id="registerPassword" type="password" required="true" aria-required="true">
                        <span class="material-input" id="errPass" style="color:red;"></span></div></div>
						<br><br><br><br><br>
                        <div class="form-group">
                        <div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:0px">
                            <label class="control-label">
                                Confirm Password
                                <small>*</small>
                            </label>
                            <input class="form-control" name="confirm_password" id="registerPasswordConfirmation" type="password" required="true" equalto="#registerPassword" aria-required="true">
                        <span class="material-input" id="errCPass" style="color:red;"></span></div></div>
            <div class="col-md-6" style="margin-left:48%; margin-top:-50%">
			<div class="card">
				<div class="card-header card-header-icon" data-background-color="rose">
					<i class="material-icons">contacts</i>
				</div>

				<div class="card-content">
					<h4 class="card-title">Bank Details</h4>
						<div class="form-group">
	                        <label class="control-label">Bank Name</label>
	                        <form:input type="text" name="bankName" path="bankName" class="form-control" id="bname"/>
	                    <span class="material-input" id="errBName" style="color:red;"></span></div>
	                    <div class="form-group">
	                        <label class="control-label">IFSC Code</label>
	                        <form:input type="text" name="ifsc" path="ifsc" class="form-control" id="ifsc"/>
	                    <span class="material-input" id="errIfsc" style="color:red;"></span></div>
	                    <div class="form-group">
	                        <label class="control-label">Account Number</label>
	                        <form:input type="text" name="accNo" path="accNo" class="form-control" id="accno"/>
	                    <span class="material-input" id="errAcc" style="color:red;"></span></div>
	                    <div class="form-group">
	                        <label class="control-label">Branch Name</label>
	                        <form:input type="text" name="branchName" path="branchName" class="form-control" id="brname"/>
	                    <span class="material-input" id="errBranch" style="color:red;"></span></div>
				</div>
			</div>
		</div>
                     <br><br><br>
                        <div class="form-footer text-right">
                            <div class="checkbox pull-left">
                                <label>
                                    <input type="checkbox" name="optionsCheckboxes" required="true" aria-required="true" checked="checked"  onClick='checkButton()' id="myCheck"></span>
                                    I agree to the <a href="#something">terms and conditions</a>.
                                </label>
                                <span class="material-input" id="errorMsg" style="color:red;"></span>
                            </div>
                           	<%if(request.getParameter("errorMsg") != null){ %>
                                <div style="color: red;"><%= request.getParameter("errorMsg") %></div>
                                <%} %>
											<button type="reset" class="btn btn-rose btn-fill">Reset</button>
													<input type="submit" class="btn btn-rose btn-fill"
														value="Register" formaction="/miimaid/maid/addMaid" />               
                        </div>
                    </div>
                </form:form>
                
			<a href="/miimaid/maid/login"><label class="control-label" style="color:#ec407a; font-size: 21px; margin-left:35%">Already have an account ?</label></a>
			<br><br>
									
            </div>
        </div>
        </div>
    </div>
    <footer class="footer">
    <div class="container-fluid">
        <nav class="pull-left">
            <ul>
                <li>
                    <a href="#">
                         <button class="btn btn-just-icon btn-simple btn-twitter">
	                            <i class="fa fa-twitter"></i>
	                        </button>
                    </a>
                </li>
                <li>
                    <a href="#">
                         <button class="btn btn-just-icon btn-simple btn-facebook">
	                            <i class="fa fa-facebook-square"> </i>
	                        </button>
                    </a>
                </li>
                <li>
                    <a href="#">
                         <button class="btn btn-just-icon btn-simple btn-youtube">
	                            <i class="fa fa-youtube"> </i>
	                        </button>
                    </a>
                </li>
             </ul>
        </nav>
        <p class="copyright pull-right">
            &copy; <script>document.write(new Date().getFullYear())</script> <a href="#"> Maid In India </a>,  made with love for a better web 
        </p>
    </div>
</footer>
</div>

    </div>
</body>

</body>

    <!--   Core JS Files   -->
    <%-- <%@include file = "corejsfiles.jsp" %> --%>
<script src="/miimaid/resources/js/jquery.min.js" type="text/javascript"></script>
<script src="/miimaid/resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/miimaid/resources/js/material.min.js" type="text/javascript"></script>
<script src="/miimaid/resources/js/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>

<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<script src="/miimaid/resources/cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>

<!-- Library for adding dinamically elements -->
<script src="/miimaid/resources/js/arrive.min.js" type="text/javascript"></script>

<!-- Forms Validations Plugin -->
<script src="/miimaid/resources/js/jquery.validate.min.js"></script>

<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="/miimaid/resources/js/moment.min.js"></script>

<!--  Charts Plugin, full documentation here: https://gionkunz.github.io/chartist-js/ -->
<script src="/miimaid/resources/js/chartist.min.js"></script>

<!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="/miimaid/resources/js/jquery.bootstrap-wizard.js"></script>

<!--  Notifications Plugin, full documentation here: http://bootstrap-notify.remabledesigns.com/    -->
<script src="/miimaid/resources/js/bootstrap-notify.js"></script>

<!--   Sharrre Library    -->
<script src="/miimaid/resources/js/jquery.sharrre.js"></script>

<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="/miimaid/resources/js/bootstrap-datetimepicker.js"></script>

<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script src="/miimaid/resources/js/jquery-jvectormap.js"></script>

<!-- Sliders Plugin, full documentation here: https://refreshless.com/nouislider/ -->
<script src="/miimaid/resources/js/nouislider.min.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD1_8C5Xz9RpEeJSaJ3E_DeBv8i7j_p6Aw"></script>

<!--  Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="/miimaid/resources/js/jquery.select-bootstrap.js"></script>

<!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
<script src="/miimaid/resources/js/jquery.datatables.js"></script>

<!-- Sweet Alert 2 plugin, full documentation here: https://limonte.github.io/sweetalert2/ -->
<script src="/miimaid/resources/js/sweetalert2.js"></script>

<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="/miimaid/resources/js/jasny-bootstrap.min.js"></script>

<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="/miimaid/resources/js/fullcalendar.min.js"></script>

<!-- Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="/miimaid/resources/js/jquery.tagsinput.js"></script>

<!-- Material Dashboard javascript methods -->
<script src="/miimaid/resources/js/material-dashboard98f3.js?v=1.3.0"></script>

<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="/miimaid/resources/js/demo.js"></script>

<script>
// Facebook Pixel Code Don't Delete
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','/miimaid/resources/connect.facebook.net/en_US/fbevents.js');

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





    <script type="text/javascript">
        $().ready(function(){
            demo.checkFullPageBackgroundImage();

            setTimeout(function(){
                // after 1000 ms we add the class animated to the login/register card
                $('.card').removeClass('card-hidden');
            }, 700)
        });
    </script>
<script type="text/javascript">
        $().ready(function(){
        	document.getElementById("mobno").defaultValue = "";
        	document.getElementById("accno").defaultValue = "";
        });
    </script>
<script type="text/javascript">
	$("#uname").blur(function() 
	{
		var name = $("#uname").val();
		var pattern=/^[A-Za-z .]{3,50}$/;
		if(name == "")
		{
			$("#errName").text("Please enter your name!!");
			//document.getElementById("uname").focus();
		}
		else if(!(pattern.test(name)))
		{
			$("#errName").text("Only capital and small letters are allowed!!");
			//document.getElementById("uname").focus();
			//$("#uname").text("");
		}
		else
			$("#errName").text("");
	});
	
	$("#address").blur(function() 
			{
				var address = $("#address").val();
				if(address == "")
				{
					$("#errAddress").text("Please enter your address!!");
					//document.getElementById("address").focus();
				}
				else
					$("#errAddress").text("");
	});
	
	$("#mobno").blur(function() 
			{
				var no = $("#mobno").val();
				var pattern=/^[0-9]{10}$/;
				if(no == "")
				{
					$("#errNo").text("Please enter your contact number!!");
					//document.getElementById("mobno").focus();
				}
				else if(!(pattern.test(no)))
				{
					$("#errNo").text("Only numbers are allowed and size must be 10!!");
					//document.getElementById("mobno").focus();
					//$("#mobno").text("");
				}
				else
					$("#errNo").text("");
			});
	$("#mno").blur(function() 
			{
				var no = $("#mno").val();
				var pattern=/^[0-9]{10}$/;
				if(no == "")
				{
					$("#errNo").text("Please enter your contact number!!");
					//document.getElementById("mno").focus();
				}
				else if(!(pattern.test(no)))
				{
					$("#errNo").text("Only numbers are allowed and size must be 10!!");
					//document.getElementById("mno").focus();
					//$("#mno").text("");
				}
				else
					$("#errNo").text("");
			});
	
	$("#bname").blur(function() 
			{
				var name = $("#bname").val();
				var pattern=/^[A-Za-z .]{1,}$/;
				if(name == "")
				{
					$("#errBName").text("Please enter your bank name!!");
					//document.getElementById("bname").focus();
				}
				else if(!(pattern.test(name)))
				{
					$("#errBName").text("Only capital and small letters are allowed!!");
					//document.getElementById("bname").focus();
					//$("#bname").text("");
				}
				else
					$("#errBName").text("");
			});
	
	$("#brname").blur(function() 
			{
				var name = $("#brname").val();
				var pattern=/^[A-Za-z .]{1,}$/;
				if(name == "")
				{
					$("#errBranch").text("Please enter your bank branch name!!");
					//document.getElementById("brname").focus();
				}
				else if(!(pattern.test(name)))
				{
					$("#errBranch").text("Only capital and small letters are allowed!!");
					//document.getElementById("brname").focus();
					//$("#brname").text("");
				}
				else
					$("#errBranch").text("");
			});
	
	$("#ifsc").blur(function() 
			{
				var ifsc = $("#ifsc").val();
				var pattern=/^[A-Z]{4}0[A-Z0-9a-z]{6}$/;
				if(ifsc == "")
				{
					$("#errIfsc").text("Please enter your bank ifsc number!!");
					//document.getElementById("ifsc").focus();
				}
				else if(!(pattern.test(ifsc)))
				{
					$("#errIfsc").text("Follow this pattern : ABCD0123456");
					//document.getElementById("ifsc").focus();
					//$("#ifsc").text("");
				}
				else
					$("#errIfsc").text("");
			});
	
	$("#accno").blur(function() 
			{
				var accno = $("#accno").val();
				var pattern=/^[0-9]{9,18}$/;
				if(accno == "")
				{
					$("#errAcc").text("Please enter your bank account number!!");
					//document.getElementById("accno").focus();
				}
				else if(!(pattern.test(accno)))
				{
					$("#errAcc").text("Only numbers are allowed and size must be between 9-18!!");
					//document.getElementById("accno").focus();
					//$("#accno").text("");
				}
				else
					$("#errAcc").text("");
			});
	
	$("#ano").blur(function() 
			{
				var accno = $("#ano").val();
				var pattern=/^[0-9]{9,18}$/;
				if(accno == "")
				{
					$("#errAcc").text("Please enter your bank account number!!");
					//document.getElementById("ano").focus();
				}
				else if(!(pattern.test(accno)))
				{
					$("#errAcc").text("Only numbers are allowed and size must be between 9-18!!");
					//document.getElementById("ano").focus();
					//$("#ano").text("");
				}
				else
					$("#errAcc").text("");
			});
	
	function checkButton()
	{
		var x = document.getElementById("myCheck").checked;
		if(x==false)
			$("#errorMsg").text("Please agree our terms & conditions!!");
		else
			$("#errorMsg").text("");
	}
	
	$("#registerPassword").blur(function() 
			{
				var pass = $("#registerPassword").val();
				var pattern= /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
				if(pass == "")
				{
					$("#errPass").text("Please enter password!!");
				}
				else if(!(pattern.test(pass)))
				{
					$("#errPass").text("Size must be greater than 8, one small letter, one capital letter and one special character is compulsory!!");
					//document.getElementById("registerPassword").focus();
					//$("#registerPassword").text("");
				}
				else
					$("#errPass").text("");
			});
	
	$("#registerPasswordConfirmation").blur(function() 
			{
				var cpass = $("#registerPasswordConfirmation").val();
				var pass = $("#registerPassword").val();
				var pattern= /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
				if(cpass == "")
				{
					$("#errCPass").text("Please enter confirm password!!");
				}
				else if(!(pattern.test(cpass)))
				{
					$("#errCPass").text("Size must be greater than 8, one letter and one special character is compulsory!!");
					//document.getElementById("registerPasswordConfirmation").focus();
					//$("#registerPasswordConfirmation").text("");
				}
				else if(pass != cpass)
				{
					$("#errCPass").text("Password & confirm password are must be same!!");
					//document.getElementById("registerPasswordConfirmation").focus();
					//$("#registerPasswordConfirmation").text("");
				}
				else
					$("#errCPass").text("");
			});
</script> 
	<script type="text/javascript">
  	$("#eid").blur(function() {
  		var emailId = $("#eid").val();
  		if(emailId == "")
  		{
  			$("#errEmail").text("Please enter Email Id!!");
  			//document.getElementById("eid").focus();
  		}
  		else if(emailId != "")
  		{
  			
  			//alert(emailId);
  			$.ajax({
  	  	        type: 'GET',
  	  	        url: "/miimaid/maid/checkEmailId/" + emailId,
  	  	        success: function(data){
  	  	        	//alert(data);
  	  	            if(data=="true")
  	  	            {
  	  	            	$("#eid").val("");
  	  	            //document.getElementById("eid").focus();
  	  	            	$("#errEmail").text("Email Id already exists.");    		
  	  	            }
  	  	            else
  	  	          	{
  	  	            	$("#errEmail").text("");
  	  	            }
  	  	            	
  	  	        },
  	  	        error:function(){
  	  	            alert("error");
  	  	        }
  	  	    });
  		}
	});
 
  	$("#cityId").change(function() {
  		var cityId = $(this).val();
  		//alert("stateid : "+stateId);
  	    $.ajax({
  	        type: 'GET',
  	        url: "/miimaid/area/getAreas/" + cityId,
  	        success: function(data){
  	        //	 $("#citiesByState").html(data).selectpicker('refresh');
  	        	 var slctSubcat=$('#areasByCity'), option="";
  	          	slctSubcat.empty();
  	          //$('.selectpicker').selectpicker('refresh'); 
  	          
  	          	
  	          //$('#citiesByState').em
  	         
  	             for(var i=0; i<data.length; i++){
  	            	// alert("hi");		
  	             	//alert(data[i].name);
  	                option = option + "<option value='"+data[i].areaId+"'>"+data[i].name+"</option>";	            }
  	          	slctSubcat.append(option); 
  	          $('#areasByCity').selectpicker('refresh');
  	          	//alert(data.length);
  	        },
  	        error:function(){
  	            alert("error");
  	        }
  	    });
	});
  
  </script> 
</html>