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
<% if(session.getAttribute("admin")==null)
	response.sendRedirect("error");%>
	  <%-- <% Admin admin = (Admin)session.getAttribute("admin"); %> --%> 
  <!-- Google Tag Manager (noscript) -->
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
					<div class="container-fluid">
					
					<div class="row">
	<div class="col-lg-3 col-md-6 col-sm-6">
	<form:form id="RegisterValidation" method="post" 
								modelAttribute="total" enctype="multipart/form-data">
                
		<div class="card card-stats">
			<div class="card-header" data-background-color="orange">
				<i class="material-icons">weekend</i>
			</div>
			<div class="card-content">
				<p class="category">Bookings</p>
				<h3 class="card-title">${total.noOfBookings}</h3>
			</div><%-- <c:set/> --%>
			<div class="card-footer">
				<div class="stats">
					<i class="material-icons">update</i> Just Updated
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-3 col-md-6 col-sm-6">
		<div class="card card-stats">
			<div class="card-header" data-background-color="rose">
				<i class="material-icons">person</i>
			</div>
			<div class="card-content">
				<p class="category">Customers</p>
				<h3 class="card-title">${total.noOfUsers}</h3>
			</div>
			<div class="card-footer">
				<div class="stats">
					<i class="material-icons">update</i> Just Updated
				</div>
			</div>
		</div>
	</div>


	<div class="col-lg-3 col-md-6 col-sm-6">
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

	<div class="col-lg-3 col-md-6 col-sm-6">
		<div class="card card-stats">
			<div class="card-header" data-background-color="blue">
				<i class="material-icons">person</i>
			</div>
			<div class="card-content">
				<p class="category">Agencies</p>
				<h3 class="card-title">${total.noOfAgencies}</h3>
			</div>
			<div class="card-footer">
				<div class="stats">
					<i class="material-icons">update</i> Just Updated
				</div>
			</div>
		</div>
	</div>
</div>
</form:form>
<h3>Manage Database</h3>
<br>
<div class="row">
	<div class="col-md-4">
		<div class="card card-product">
			
			<div class="card-content">
				<h4 class="card-title">
					<a href="#pablo">Add State</a>
				</h4>
				<div class="card-description">
					<a href="/miiadmin/state/stateList" class="btn btn-fill btn-rose">Add</a>
				</div>
			</div>
			
		</div>
	</div>
	
	<div class="col-md-4">
		<div class="card card-product">
			
			<div class="card-content">
				<h4 class="card-title">
					<a href="#pablo">Add City</a>
				</h4>
				<div class="card-description">
					<a href="/miiadmin/city/cityList" class="btn btn-fill btn-rose">Add</a>
				</div>
			</div>
			
		</div>
	</div>
	
	<div class="col-md-4">
		<div class="card card-product">
			
			<div class="card-content">
				<h4 class="card-title">
					<a href="#pablo">Add Area</a>
				</h4>
				<div class="card-description">
					<a href="/miiadmin/area/areaList" class="btn btn-fill btn-rose">Add</a>
				</div>
			</div>
			
		</div>
	</div>
</div>
<h3>View Database</h3>
<br>
<div class="row">
	<div class="col-md-4">
		<div class="card card-product">
			
			<div class="card-content">
				<h4 class="card-title">
					<a href="#pablo">View Agency</a>
				</h4>
				<div class="card-description">
					<a href="/miiadmin/agency/agencyList" class="btn btn-fill btn-rose">View</a>
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
					<a href="/miiadmin/maid/maidList" class="btn btn-fill btn-rose">View</a>
				</div>
			</div>
			
		</div>
	</div>
	
	<div class="col-md-4">
		<div class="card card-product">
			
			<div class="card-content">
				<h4 class="card-title">
					<a href="#pablo">View User</a>
				</h4>
				<div class="card-description">
					<a href="/miiadmin/user/userList" class="btn btn-fill btn-rose">View</a>
				</div>
			</div>
			
		</div>
	</div>
</div>
					 <!-- 	<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-header card-header-icon" data-background-color="green">
				<i class="material-icons">&#xE894;</i>
			</div>
			<div class="card-content">
				<h4 class="card-title">Cities</h4>
				<div class="row">
					<div class="col-md-5">
						<div class="table-responsive table-sales">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="flag">
                                                    <img src="/miiadmin/resources/img/flags/US.png">
                                            </div></td>
                                            <td>USA</td>
                                            <td class="text-right">
                                                2.920
                                            </td>
                                            <td class="text-right">
                                                53.23%
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="flag">
                                                    <img src="/miiadmin/resources/img/flags/DE.png">
                                            </div></td>
                                            <td>Germany</td>
                                            <td class="text-right">
                                                1.300
                                            </td>
                                            <td class="text-right">
                                                20.43%
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="flag">
                                                    <img src="/miiadmin/resources/img/flags/AU.png">
                                            </div></td>
                                            <td>Australia</td>
                                            <td class="text-right">
                                                760
                                            </td>
                                            <td class="text-right">
                                                10.35%
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="flag">
                                                    <img src="/miiadmin/resources/img/flags/GB.png">
                                            </div></td>
                                            <td>United Kingdom</td>
                                            <td class="text-right">
                                                690
                                            </td>
                                            <td class="text-right">
                                                7.87%
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="flag">
                                                    <img src="/miiadmin/resources/img/flags/RO.png">
                                            </div></td>
                                            <td>Romania</td>
                                            <td class="text-right">
                                                600
                                            </td>
                                            <td class="text-right">
                                                5.94%
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="flag">
                                                    <img src="/miiadmin/resources/img/flags/BR.png">
                                            </div></td>
                                            <td>Brasil</td>
                                            <td class="text-right">
                                                550
                                            </td>
                                            <td class="text-right">
                                                4.34%
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
					</div>
					<div class="col-md-6 col-md-offset-1">
						<div id="worldMap" class="map"></div>
					</div>

				</div>
			</div>
		</div>
	</div>
</div> -->
					</div>
				</div>
		<%@include file = "footer.jsp" %>
	</div>
	</div>
</body>
  
	<!--   Core JS Files   -->
	<%@include file = "corejsfiles.jsp" %>
</html>
    