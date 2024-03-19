<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from websmirno.site/html-demo/proclena/service-page-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 05 Jan 2020 07:56:13 GMT -->
<head>
		<%@ include file="head.jsp" %> 
</head>

<body>
	 <%@ include file="loader.jsp" %> 
	<%@ include file="header.jsp" %>
	
	<main class="page-main">
		<!-- Breadcrumbs Block -->
		<div class="block breadcrumbs">
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li><a href="services.html">Our Services</a></li>
					<li>House Cleaning</li>
				</ul>
			</div>
		</div>
		<!-- //Breadcrumbs Block -->
		<div class="block">
			<h1 class="text-center h-decor">Our Services</h1>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-lg-9 aside">
						<img src="/usermii/resources/images/content/service-page-2-img.jpg" class="img-responsive" alt="">
						<div class="divider-md"></div>
						<h3>House Cleaning</h3>
						<p>Our cleaning system sets us apart. Our customers keep coming back to us, because we provide services that work and keep their homes and apartments clean, right down to the little details. This extensive cleaning system, which we call our Detail-Clean Rotation System, which has been proven to be effective in more than five million cleans!</p>
						<h5>How does our apartment cleaning program work?</h5>
						<p>We start with a thorough detail-clean throughout your house over the course of the first two cleans. On the first clean, our maid service will thoroughly clean your apartment, with special attention on your kitchen and bathrooms. On the second session, we'll clean your entire apartment, but this time we'll provide detail-clean services in your sleeping and living areas. We'll continue to maintain this detail-clean level throughout your home throughout our next visits by providing deep cleaning services on a rotating basis.</p>
						<p>Every time we clean, we'll provide services that include the following:</p>
						<ul class="marker-list">
							<li><b>Bathrooms</b>
								<br>Cobwebs removed, dusting, floors cleaned, toilets cleaned, mirrors / chrome fixtures cleaned, shower doors cleaned, tile walls, bathtub / showers cleaned</li>
							<li><b>Sleeping Areas</b>
								<br> Surfaces hand wiped, floors cleaned, general dusting, cobwebs removed, doors and door frames spot cleaned</li>
							<li><b>Living Areas</b>
								<br>Surfaces hand wiped, cobwebs removed, doors and door frames spot cleaned, general dusting, floors cleaned</li>
							<li><b>Kitchen</b>
								<br>Countertops cleaned, outside of range hood cleaned, top and front of range cleaned, drip pans / glass top surfaces wiped, sinks cleaned and chrome shined, fronts of all appliances cleaned, general dusting, cobwebs removed, microwave wiped out, doors and door frames spot cleaned.<br></li>
							<li><b>To book residencial cleaning <a href="/usermii/user/residentialform" style="color:green;">Click Here</a> </b></li>
						<!-- <button type="submit" class="btn btn-full btn-white">Send Question</button> -->
						<!-- <div class="btn-wrap"><a href="/usermii/user/residentialform" class="btn animation" data-animation="tada">Feedback</a></div> -->
						</ul>
						
						<div class="divider-xl"></div>
						
					</div>
					
					<div class="col-md-4 col-lg-3 aside">
						<ul class="services-list">
							<li class="active"><a href="/usermii/user/residentialcleaning">Residential Cleaning</a></li>
							<li ><a href="/usermii/user/commercialcleaning">Commercial Cleaning</a></li>
							<li><a href="/usermii/user/childcare">Child Care</a></li>
							<li><a href="/usermii/user/oldagecare">Old Age Care</a></li>
							
						</ul>
						<div class="question-box">
							<div class="question-box-title text-center">Have a Question?</div>
							<form class="question-form" id="questionForm" method="post">
								<div class="successform">
									<p>Your message was sent successfully!</p>
								</div>
								<div class="errorform">
									<p>Something went wrong, try refreshing and submitting the form again.</p>
								</div>
								<input type="text" name="name" class="form-control" value="" placeholder="Your name*">
								<input type="text" name="email" class="form-control" value="" placeholder="E-mail*">
								<textarea name="message" class="form-control" placeholder="Message"></textarea>
								<div class="clearfix text-center">
									<button type="submit" class="btn btn-full btn-white">Send Question</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	
	<!-- Footer -->
	<%@ include file="footer.jsp" %>
	<!-- /Footer -->
	<%@ include file="javascript.jsp" %></body>


<!-- Mirrored from websmirno.site/html-demo/proclena/service-page-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 05 Jan 2020 07:56:13 GMT -->
</html>