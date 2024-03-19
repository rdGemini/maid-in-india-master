<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from websmirno.site/html-demo/proclena/service-page-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 05 Jan 2020 07:56:13 GMT -->
<head>
		<%@ include file="head.jsp" %> 
</head>

<body>
	<%-- <%@ include file="loader.jsp" %> --%>
	<%@ include file="header.jsp" %>
		<!-- /Header -->
		
	<main class="page-main"  style="background-image:url('/usermii/resources/images/block-bg-3.jpg'); background-repeat: no-repeat;background-attachment: fixed; background-size: 100% 100%">
		<!-- Breadcrumbs Block -->
		<div class="block breadcrumbs">
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="home.jsp">Home</a></li>
					<li>My Orders</li>
				</ul>
			</div>
		</div>
		<!-- //Breadcrumbs Block -->
		<div class="block">
			<h2 class="text-center h-lg h-decor">Your Bookings</h2>
			<div class="container" style="background-image: none;">
				<div class="row">
					<div class="col-lg-12">
						<div class="order-form-box" style="background-color:#fff; border-radius:1%; text-align: center;">
								
								<div class="col-lg-3" style="border-right: 1px solid #e6e9ec">
									<h4>Date Of Booking</h4>
									
									<div class="divider-line"></div>
									<c:forEach items="${bookings}" var="b">
									<a href="/usermii/user/mybookingdetails/${b.bookingId}" style="text-decoration: none;">
									
									<h5 style="color:#899198;">${b.dateOfBooking}</h5></a>
									
									<div class="divider-line"></div>
									</c:forEach>
								</div>
								<div class="col-lg-3" style="border-right: 1px solid #e6e9ec">
									<h4>Type Of Cleaning</h4>
									<div class="divider-line"></div>
									<c:forEach items="${bookings}" var="b">
									<a href="/usermii/user/mybookingdetails/${b.bookingId}" style="text-decoration: none;">
									
									<h5 style="color:#899198;">${b.mainService}</h5></a>
									
									<div class="divider-line"></div>
									</c:forEach>
								</div>
								
								<div class="col-lg-3" style="border-right: 1px solid #e6e9ec">
									<h4>Status</h4>
									<div class="divider-line"></div>
									<c:forEach items="${bookings}" var="b">
									<a href="/usermii/user/mybookingdetails/${b.bookingId}" style="text-decoration: none;">
									
									<h5 style="color:#899198;">${b.status}</h5></a>
									
									<div class="divider-line"></div>
									</c:forEach>
								</div>
								<div class="col-lg-3">
									<h4>&nbsp;</h4>
									<div class="divider-line"></div>
									<c:forEach items="${bookings}" var="b">
									<a href="/usermii/user/orderform" class="btn btn-small" style="background-color: #3d4c58; margin-top:-3.5px">Rebook</a>
									<div class="divider-line"></div>
									</c:forEach>
								</div>
								<div class="divider"></div>
								<div class="divider-line"></div>
								
 								<!-- <h3>Booking ID	 Date of Booking	Status</h3>
								<div class="divider-line"></div>
								
								<img src="/usermii/resources/images/default-avatar.png" style="height:70px; width:70px; border-radius:100%">
								<h4 style="margin-top:-50px; margin-left:20%">Maid 1</h3>
								<div class="text-right">
									<button type="submit" class="btn" style="width:20%; margin-top:-50px;">BOOK</button>
								</div>
								<br><br>
								
								<div class="divider-line"></div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- Footer -->
	<%@ include file="footer.jsp" %>
	<!-- /Footer -->
	<%@ include file="javascript.jsp" %>
	<script>
/* $(document).ready(function(){
  $("#services").change(function(){
	  //var selectedVal = $( ".services" ).val();
	  //if(selectedVal == "Residential Cleaning")
		//{
		  document.getElementById("res").style.visibility = "visible";
		//}
  });
  /* $(".c1").click(function(){
    $("res").show();
   *//* });
});
 */ 
function myFunction() {
	  var x = document.getElementById('res');
	  x.style.visibility = 'visible';
	  document.getElementById("res").style.visibility = "visible";
</script>
	</body>

</html>