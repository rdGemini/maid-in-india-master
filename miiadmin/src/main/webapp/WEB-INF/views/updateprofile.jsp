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
	
      <div class="col-md-7 col-md-offset-1">

                <div class="card card-signup" style="margin-left:23%"><br>
                    <h2 class="card-title text-center">Update Your Details</h2>
                    <div class="card-content">
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
                    <div class="row">  
                    <div class="col-md-2 col-md-offset-1">
                    <div class="fileinput fileinput-new text-center" data-provides="fileinput" style="margin-top:-10px;margin-left:0%">
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
                    </div> 
                        <div class="col-md-7" style="margin-left:8%">
                            

                            <form class="form" method="" action="home.jsp">
                                
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">person</i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="First Name...">
                                    </div>

                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">email</i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Email...">
                                    </div>

                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">lock_outline</i>
                                        </span>
                                        <input type="password" placeholder="Password..." class="form-control" />
                                    </div>
                          			
                          			

                                    <!-- If you want to add a checkbox to this form, uncomment this code -->

                                    
                                </div>
                                <div class="footer">
                                    <a href="#" class="btn btn-primary btn-rose btn-round" style="margin-left:130px">Update</a>
                                </div>
                                
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
      
       			
  		</div>
  		<%@include file = "../../footer.jsp" %>
	</div>
</body>
	<!--   Core JS Files   -->
	<%@include file = "../../corejsfiles.jsp" %>
</html>
    