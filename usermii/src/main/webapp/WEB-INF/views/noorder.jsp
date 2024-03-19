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
	<main class="page-main"  style="background-image:url('/usermii/resources/images/bedroom-cleaningres2.jpg'); background-repeat: no-repeat;background-attachment: fixed; background-size: 100% 100%">
		
		<div class="block breadcrumbs">
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="home.jsp">Home</a></li>
					<li>My orders</li>
				</ul>
			</div>
		</div>
		<!-- Breadcrumbs Block -->
		<div class="block">
			<div class="container" style="text-align: center;">
				<h2 class="text-center h-lg h-decor">You don't have any active bookings..!!</h2>
				
				
				<a href="/usermii/user/orderform" class="btn btn-wide" style="background-color: #3d4c58;">Book a Service</a>

				<br><br><br><br><br><br><br>
					
					<!-- <div class="col-sm-4">
						<div class="news-prw" style="border-radius: 10px;text-align: center;">
							<div class="news-prw-image">
								
									<img src="/usermii/resources/images/deal 1.png" alt="" style="border-radius: 10px;">
									<span><i class="icon-link"></i></span>
								
							</div>
							<div id="code1" style="visibility: hidden; height:0px; width:0px">CODE50</div>
							<div class="news-prw-date">Valid till 16 December, 2020</div>
							<h3 class="news-prw-title" style="text-align: center;">Guidelines</h3>
							<ul class="marker-list" style="text-align: left;">
											<li>One-off, weekly or fortnightly visits</li>
											<li>Vetted & background-checked cleaners</li>
											<li>Online booking and payment</li>
									</ul>
							
							<a href="#" class="btn btn-border" onclick="copyToClipboard('#code1')">Copy Code</a>
						</div>
					</div> -->
					<!-- <div class="col-sm-4">
						<div class="news-prw" style="border-radius: 10px;text-align: center;">
							<div class="news-prw-image">
								
									<img src="/usermii/resources/images/deal 1.png" alt="" style="border-radius: 10px;">
									<span><i class="icon-link"></i></span>
								
							</div>
							<div id="code1" style="visibility: hidden; height:0px; width:0px">CODE50</div>
							<div class="news-prw-date">Valid till 16 December, 2020</div>
							<h3 class="news-prw-title" style="text-align: center;">Guidelines</h3>
							<ul class="marker-list" style="text-align: left;">
											<li>One-off, weekly or fortnightly visits</li>
											<li>Vetted & background-checked cleaners</li>
											<li>Online booking and payment</li>
									</ul>
							
							<a href="#" class="btn btn-border" onclick="copyToClipboard('#code1')">Copy Code</a>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="news-prw" style="border-radius: 10px;text-align: center;">
							<div class="news-prw-image">
								
									<img src="/usermii/resources/images/deal 1.png" alt="" style="border-radius: 10px;">
									<span><i class="icon-link"></i></span>
								
							</div>
							<div id="code1" style="visibility: hidden; height:0px; width:0px">CODE50</div>
							<div class="news-prw-date">Valid till 16 December, 2020</div>
							<h3 class="news-prw-title" style="text-align: center;">Guidelines</h3>
							<ul class="marker-list" style="text-align: left;">
											<li>One-off, weekly or fortnightly visits</li>
											<li>Vetted & background-checked cleaners</li>
											<li>Online booking and payment</li>
									</ul>
							
							<a href="#" class="btn btn-border" onclick="copyToClipboard('#code1')">Copy Code</a>
						</div>
					</div>
					</div> -->
			</div>
		</div>
		
	</main>
	<!-- Footer -->
	<%@ include file="footer.jsp" %>
	<!-- /Footer -->
	<%@ include file="javascript.jsp" %>

 
<script>
function copyToClipboard(element) {
	  var $temp = $("<input>");
	  $("body").append($temp);
	  $temp.val($(element).text()).select();
	  document.execCommand("copy");
	  $temp.remove();
	}
</script>
	</body>

</html>