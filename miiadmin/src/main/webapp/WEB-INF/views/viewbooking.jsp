<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/tables/extended.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:46 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
	<%@include file = "head.jsp" %>
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
					 	     <form:form id="RegisterValidation" method="post" 
								modelAttribute="bookingdet" enctype="multipart/form-data">
                
		<div class="col-md-4">
                <div class="card">
               
                    <div class="card-header card-header-icon" data-background-color="rose">
                        <i class="material-icons">person</i>
                    </div>

                    <div class="card-content table-full-width">
                        <h4 class="card-title"><b> </b></h4>
                       	<div class="fileinput fileinput-new text-center" data-provides="fileinput" style="margin-top:10px;margin-left:37%">
								<div class="fileinput-new thumbnail img-circle">
									<img src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/default-avatar.png" class="picture-src" id="wizardPicturePreview" title=""/>
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail img-circle" style=""></div>
						</div>
						<h4 class="card-title" style="text-align:center">
							<b><!-- Maid Name -->${bookingdet.mname}</b>
						</h4>
						<h5 style="margin-left:10%;margin-right:10%">
							Speciality:  Residencial Cleaning<hr>
						</h5>
						<h5 style="margin-left:10%;margin-right:10%">
							<!-- Mobile No : -->
							
							
							Mobile No :  ${bookingdet.mstrno}
							
							
    						 <%-- <c:set var="mstrno" value="${smsStats.get(detailValue)}"/> --%>
							
							<%-- <c:set var="mobno" value="${bookingdet.mMobNo}"/> --%>
							<%--  <c:out value="${bookingdet.mMobNo}"/> --%> 
							<hr>
						</h5>
						<h5 style="margin-left:10%;margin-right:10%; text-align:center">
							Ratings & Review:
						</h5>
						<h2 class="card-title" style="text-align:center">4.5</h2>
						<div style="text-align:center; margin-top:-5%; color:#ec407a">
						<i class="material-icons">star</i>
						<i class="material-icons">star</i>
						<i class="material-icons">star</i>
						<i class="material-icons">star</i>
						<i class="material-icons">star_half</i>
						</div><br>
						<a href="/miiadmin/maid/viewMaid/${bookingdet.maidId}" style="color:#ec407a;margin-left:70%">More Details..</a>
                    </div>
                </div>
            </div>
        
        <div class="col-md-4">
                <div class="card">
                    <div class="card-header card-header-icon" data-background-color="rose">
                        <i class="material-icons">assignment</i>
                    </div>

                    <div class="card-content table-full-width">
                        <h4 class="card-title">
                        	<b><!-- Booking ID -->
                        	${bookingdet.bookingId}
                        	</b>
                        </h4>
                        <div class="table-responsive">
                            <table class="table table-hover" style="width:60%; margin-left:18%">
                                <thead>
                                    <tr>
                                	<th><b>Selected services</b></th>
                                	<th><b>Amount</b></th>
                                </tr></thead>
                                <tbody>
									<c:forEach items="${selservices}" var="s">
                                    <tr>
                                    	<td>${s.name}</td>
                                    	<td>&nbsp &nbsp &#8377;${s.amount}</td>
                                    </tr>
                                    </c:forEach>
                                     <tr>
                                    	<td>Total</td>
                                    	<td>&nbsp &nbsp &#8377;400.0</td>
                                    </tr>
                                   <!--  <tr>
                                    	<td>Service 2</td>
                                    	<td>&nbsp &nbsp &#8377; 200</td>
                                    </tr>
                                    <tr>
                                    	<td>Service 3</td>
                                    	<td>&nbsp &nbsp &#8377; 100</td>
                                    </tr>
                                    <tr>
                                    	<td>Service 4</td>
                                    	<td>&nbsp &nbsp &#8377; 200</td>
                                    </tr>
                                    <tr>
                                    	<td>Service 5</td>
                                    	<td>&nbsp &nbsp &#8377; 100</td>
                                    </tr>
                                    <tr>
                                    	<td><b>Total</b></td>
                                    	<td><b>&nbsp &nbsp &#8377; 700</b></td>
                                    </tr>
                                    <tr class="info">
                                    	<td><i>Promotion</i></td>
                                    	<td><i>- &nbsp &#8377; 100</i></td>
                                    </tr>
                                    <tr>
                                    	<td><i>GST</i></td>
                                    	<td><i>+ &nbsp &#8377; 50</i></td>
                                    </tr>
                                    <tr class="success">
                                    	<td><b>Total Amount</b></td>
                                    	<td><b>&nbsp &nbsp &#8377; 650</b></td>
                                    </tr> -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        	<div class="col-md-4">
                <div class="card">
                    <div class="card-header card-header-icon" data-background-color="rose">
                        <i class="material-icons">person</i>
                    </div>

                    <div class="card-content table-full-width">
                        <h4 class="card-title"><b>User</b></h4>
                       	<div class="fileinput fileinput-new text-center" data-provides="fileinput" style="margin-top:10px;margin-left:37%">
								<div class="fileinput-new thumbnail img-circle">
									<img src="/miiadmin/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/default-avatar.png" class="picture-src" id="wizardPicturePreview" title=""/>
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail img-circle" style=""></div>
						</div>
						<h4 class="card-title" style="text-align:center">
							<b><!-- User Name -->${bookingdet.uname}</b>
						</h4>
						<h5 style="margin-left:10%;margin-right:10%">
							<!-- Address: -->${bookingdet.address}<hr>
						</h5>
						<h5 style="margin-left:10%;margin-right:10%">
							<!-- Mobile No : -->${bookingdet.ustrno}<hr>
						</h5>
						<!-- <h5 style="margin-left:10%;margin-right:10%">	
							Email ID :<hr>
						</h2>
						 -->
						 <!-- <br><br><br><br> -->
						<a href="/miiadmin/user/viewUser/${bookingdet.userId}" style="color:#ec407a;margin-left:70%">More Details..</a>
						
                    </div>
                </div>
            </div>
        	</form:form>
			
		</div>
		<a href="#" class="btn btn-rose" style="margin-left:78%; margin-top:-10%">Cancel Request<div class="ripple-container"></div></a>
	</div>
	<%@include file = "footer.jsp" %>
</body>
	<!--   Core JS Files   -->
	<%@include file = "corejsfiles.jsp" %>
</html>
    