<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.mii.model.User"%>
<!DOCTYPE html>
<html>
<head>
	<title>Maid In India</title>
</head>
<body>
<%-- <% if(session.getAttribute("user")==null)
	response.sendRedirect("error");%>
 --%><header class="page-header page-header--style2 header-sticky">
		<div class="page-header-mobile-info">
			<div class="page-header-mobile-info-content">
				<div class="page-header-info">
					<i class="icon icon-location"></i>3261 Anmoore Road, Brooklyn, NY 11230
				</div>
				<div class="page-header-info">
					<i class="icon icon-clock1"></i>8:00 am - 10:00 pm
				</div>
				<div class="page-header-info">
					<i class="icon icon-phone"></i>Call: 800-123-4567
				</div>
				<div class="page-header-info">
					<i class="icon icon-speech-bubble"></i><a href="mailto:officeone@youremail.com">officeone@youremail.com</a>
				</div>
				<ul class="social-list">
					<li><a href="#"><i class="icon-facebook-logo1"></i></a></li>
					<li><a href="#"><i class="icon-twitter-logo1"></i></a></li>
					<li><a href="#"><i class="icon-instagram-logo1"></i></a></li>
				</ul>
			</div>
		</div> 
		<div class="page-header-topline">
			<div class="container">
				<div class="page-header-mobile-info-toggle"></div>
				<div class="page-header-topline-left">
					<div class="page-header-info">
						<i class="icon icon-letter"></i>maidinindia03@gmail.com
					</div>
					<div class="page-header-info">
						<i class="icon icon-clock1"></i>9:00 am - 8:00 pm
					</div>
					<div class="page-header-info">
						<i class="icon icon-phone"></i>Call: 800-123-4567
					</div>
				</div>
				<div class="page-header-topline-right">
					<ul class="social-list">
						<li><a href="#"><i class="icon-facebook-logo1"></i></a></li>
						<li><a href="#"><i class="icon-twitter-logo1"></i></a></li>
						<li><a href="#"><i class="icon-instagram-logo1"></i></a></li>
					</ul>
					<div class="quote-button-wrap">
						<a href="/usermii/user/orderform" class="btn"><i class="icon icon-bell"></i>Get a Quote</a>
					</div>
				</div>
			</div>
		</div>
		<div class="page-header-top" style="padding:0px">
			<div class="container" style="width:90%">
				<div class="logo" style="margin-bottom:-30px; margin-top:-20px; padding:0px; margin-left:100px">
					<a href="/usermii/user/home"><img src="/usermii/resources/images/maid.png" alt="" style ="height:100px; width:100px; margin-left:-70px; margin-top:10px">
					<img src="/usermii/resources/images/text3.png" alt="" style ="height:120px; width:250px; margin-left:10px; margin-top:-120px">
					</a>
					<!-- <div class="shine"></div> -->
				</div>
				<div class="page-header-menu" style="padding:0px">
					<div class="container">
						<ul class="menu">
							
						<li><a href="/usermii/user/bap">Become a Professional<span class="arrow"></span></a></li>
						<li><a href="#">Our Services</a>
							<ul class="sub-menu">
								<li><a href="/usermii/user/residentialcleaning">Residential Cleaning</a></li>
								<li><a href="/usermii/user/commercialcleaning">Commercial Cleaning</a></li>
								<li><a href="/usermii/user/childcare">Child Care</a></li>
								<li><a href="/usermii/user/oldagecare">Old Age Care</a></li>
							</ul>
						</li>	
						<li><a href="/usermii/user/deals">Deals</a></li>
						<li><a href="/usermii/user/faq">FAQs</a></li>
						<li><a href="/usermii/user/aboutus">About Us</a></li>
						<!-- <li><a href="#">Contact Us</a></li> -->
						<li style="margin-left:50px"><!-- <a href="#" style="font-size:20px"><i class="icon icon-user"></i>&nbsp; &nbsp; --><% User user = (User)session.getAttribute("user"); %> 
                         <% if(user != null)
                         	{
                         		if(user.getName()!=null)
                         		{%>
                         		
                        	 <a href="#" style="font-size:20px"><i class="icon icon-user"></i>&nbsp; &nbsp;
                        	 <% out.println(user.getName());%>
                        	 <span class="arrow"></span></a>
							<ul class="sub-menu">
								<li><a href="/usermii/user/myprofile">My Profile</a></li>
								<li><a href="/usermii/user/myorder">My orders</a></li>
								<li><a href="/usermii/user/logout">Logout</a></li>
							</ul>
                         	<%}
                         		else
                         		{%>
                         		<a href="/usermii/user/login" style="font-size:20px"><i class="icon icon-user"></i>&nbsp; &nbsp;Login / Sign Up
                         	<%}}else
                         	{%>
                         		<a href="/usermii/user/login" style="font-size:20px"><i class="icon icon-user"></i>&nbsp; &nbsp;Login / Sign Up
                         	<%}%><%-- <% out.println(user.getName()); %> --%> <span class="arrow"></span></a>
							<!-- <ul class="sub-menu">
								<li><a href="/usermii/user/myprofile">My Profile</a></li>
								<li><a href="#">My orders</a></li>
								<li><a href="/usermii/user/login">Logout</a></li>
							</ul> -->
						</li>
						</ul>
					</div>
				</div>
				<!-- <div class="page-header-top-right" style="margin-left:-50px; margin-top:10px">
					<div class="header-search">
						<div class="header-search-toggle"><i class="icon-search"></i></div>
						<div class="header-search-drop">
							<form action="#" class="form-inline">
								<input type="text" placeholder="Search">
								<button type="submit"><i class="icon-search"></i></button>
							</form>
						</div>
					</div>
					<a href="#" class="menu-toggle"><i class="icon-menu"></i><i class="icon-cancel2"></i></a>
				</div> -->
			</div>
		</div>
	</header>
	<!-- /Header -->
	
</body>
</html>