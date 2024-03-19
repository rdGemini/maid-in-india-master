<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@ include file="head.jsp" %>	
</head>

<body class="page-index">
  <%@ include file="loader.jsp" %>  
	<%@ include file="header.jsp" %>
	<!-- /Header -->
	<main class="page-main">
												<div class="block" style="height:100%; width:100%;background-image: url(/usermii/resources/images/apartment-cleaning-hero-iamge.jpg); ">
											<br><br>
											<h1 class="text-center h-lg h-decor" style=" margin-left:5%; font-size:45px">Become a Professional </h2>
												<div class="container" style="margin-left:50%;">
													<div class="row">				
														<div class="col-lg-5">
															<div class="order-form-box"  style="background-color:#fff; border-radius:5%; text-align: left">
																<form method="post" modelAttribute="bap" action="/usermii/user/sendMail">
																	
																<div class="divider"></div>
																	<div class="row">
																		<div class="col-sm-12">
																			<!-- <label style="text-align:left">Enter Email ID*</label> -->
																				<input type="text" class="input-custom input-custom--sm input-full" name="emailId" path="emailId" placeholder="Enter Email ID*" border="black" >
																		</div>
																	</div>
																	<!-- <div class="divider"></div> -->
																	<div class="text-center">
																	<p>Enter your email Id and we will send you the link for registration as a maid.!! </p></div>
																<!-- <div class="divider"></div>
																<div class="row">
																	<div class="col-sm-10">
																		<label>Enter Mobile Number</label>
																			<input type="text" class="input-custom input-custom--sm input-full" name="mno" placeholder="Enter Mobile no*" >
																	</div>
																</div> -->
																<div class="divider"></div>
																	<div class="text-center">
																		<button type="submit" class="btn btn-wide" style="background-color: #00bcd4">Register</button>
																	</div>
																	
																</form>
															</div>
														</div>
													</div>
												</div>
												<br><br><br><br>
											</div>
		<!-- Services block -->
		<div class="block">
			<div class="container">
				<h2 class="text-center h-lg h-decor">Our Cleaning Services</h2>
				<div class="text-center max-750">
					<p class="p-lg">Let us use our years of experience, skilled employees, and advanced procedures to ensure a clean and healthy environment for your employees, customers and guests.</p>
				</div>
				<div class="row services-carousel arrows-center">
					<div class="col-sm-2 col-lg-4">
						<div class="service-card">
							<div class="service-card-icon"><i class="icon icon-house-3"></i></div>
							<h5 class="service-card-title">Residential Cleaning</h5>
							<ul class="service-card-list">
								<li>Vacuum / mop floors</li>
								<li>Dust all furniture</li>
								<li>Clean the toilet</li>
							</ul>
							<a href="/usermii/user/residentialcleaning" class="btn btn-border">Read more</a>
						</div>
					</div>
					<div class="col-sm-2 col-lg-4">
						<div class="service-card">
							<div class="service-card-icon"><i class="icon icon-house"></i></div>
							<h5 class="service-card-title">Old Age Care</h5>
							<ul class="service-card-list">
								<li>Walking Them</li>
								<li>Bathing Them</li>
								<li>Changing Diapers</li>
							</ul>
							<a href="/usermii/user/oldagecare" class="btn btn-border">Read more</a>
						</div>
					</div>
					<div class="col-sm-2 col-lg-4">
						<div class="service-card">
							<div class="service-card-icon"><i class="icon icon-house-1"></i></div>
							<h5 class="service-card-title">Commercial Cleaning</h5>
							<ul class="service-card-list">
								<li>Hard surface floor cleaning</li>
								<li>Tile and grout cleaning</li>
								<li>Carpet Cleaning</li>
							</ul>
							<a href="/usermii/user/commercialcleaning" class="btn btn-border">Read more</a>
						</div>
					</div>
					
					<div class="col-sm-2 col-lg-4">
						<div class="service-card">
							<div class="service-card-icon"><i class="icon icon-window"></i></div>
							<h5 class="service-card-title">Child Care</h5>
							<ul class="service-card-list">
								<li>Feeding Children</li>
								<li>Bathing Children</li>
								<li>Changing Diapers</li>
							</ul>
							<a href="/usermii/user/childcare" class="btn btn-border">Read more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /Services block -->
		<!-- About Us block -->
		<div class="block fullwidth-bg bg-cover inset-lg-3 pb-xs-0 block-1" data-bg="/usermii/resources/images/block-bg-1.jpg">
			<div class="container">
				<div class="row zindex-1">
					<div class="col-sm-7 col-lg-9">
						<h2 class="h-lg">About Our Company</h2>
						<ul class="nav nav-tabs nav-tabs--sm">
							<li class="active"><a data-toggle="tab" href="#about1">Some Words</a></li>
							<li><a data-toggle="tab" href="#about2">How it Works</a></li>
							<li><a data-toggle="tab" href="#about3">With Us</a></li>
						</ul>
						<div class="tab-content tab-content-nopad">
							<div id="about1" class="tab-pane fade in active">
								<p>Cleaning can be a chore and we know you have many choices when you consider hiring a maid service. Because of that, we are constantly thriving to improve our already high standards to have you see us as the absolute best in the industry. It’s not enough to have trust in the cleaning crew that you let into your home… you also have to trust that they will perform a first-class cleaning job for you. </p>
								<div class="divider-sm"></div>
								<h4>We Provide</h4>
								<div class="row">
									<div class="col-lg-6">
										<ul class="marker-list">
											<li>One-off, weekly or fortnightly visits</li>
											<li>Vetted & background-checked cleaners</li>
											<li>Online booking and payment</li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul class="marker-list">
											<li>Keep the same cleaner for every visit</li>
											<li>All cleaning materials and equipment</li>
											<li>100% satisfaction guarantee</li>
										</ul>
									</div>
								</div>
							</div>
							<div id="about2" class="tab-pane fade">
								<div class="row">
									<div class="col-lg-6">
										<h4>How Cleaning Company Works</h4>
										<p>When the weekend finally arrives, you’d much rather put your feet up while a cleaning service does the work, rather than spend your precious downtime on your hands and knees scrubbing.</p>
										<p class="visible-lg">Taking the stress out of any aspect of cleaning is what we specialise in. We will come to your premises and offer a free quote, so you know exactly what you’ll be spending</p>
									</div>
									<div class="col-lg-6">
										<h6>Book online in<span class="color"> 60 seconds</span></h6>
										<p>Book & pay online. We'll match you with a trusted, experienced house cleaner</p>
										<h6>Get a <span class="color">5 star cleaner</span></h6>
										<p>Every cleaner is friendly and reliable. They've been background-checked & rated 5-stars</p>
										<h6>Manage everything <span class="color">online</span></h6>
										<p>Add visits, skip visits, leave notes, and book extra services laundry and oven cleaning</p>
									</div>
								</div>
							</div>
							<div id="about3" class="tab-pane fade">
								<div class="row">
									<div class="col-lg-6">
										<div class="num-box">
											<div class="num-box-num">1.</div>
											<h4 class="num-box-title">We Treat Your Homes Like Ours</h4>
											<p>At The Cleaning Company, we are fully bonded and insured, meaning you can have peace of mind when we enter your home.</p>
										</div>
										<div class="num-box">
											<div class="num-box-num">3.</div>
											<h4 class="num-box-title">Immediate Online Quotes</h4>
											<p>Upcoming party? Expecting guests? We’ll give an immediate price quote so you can enjoy your time rather than worry about the mess.</p>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="num-box">
											<div class="num-box-num">2.</div>
											<h4 class="num-box-title">Satisfaction Guaranteed</h4>
											<p>Our cleaning crew are professionally trained, and if you’re ever unhappy with any area we’ve cleaned, we’ll and reclean it next day.</p>
										</div>
										<div class="num-box">
											<div class="num-box-num">4.</div>
											<h4 class="num-box-title">We Are Experts</h4>
											<p>We are dominate the industry in scale and scope with an adaptable, extensive network that consistently delivers exceptional results.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="img-right-wrap">
					<img src="/usermii/resources/images/content/index-right-img.png" alt="">
				</div>
			</div>
		</div>
		<!-- /About Us block -->
		<!-- Prices block  -->
		<!-- <div class="block">
			<div class="container">
				<h2 class="text-center h-lg h-decor">Choose Your Pricing Plan</h2>
				<div class="text-center max-800">
					<p class="p-lg">After trading for a few years we have learnt that the one size does not fit all. We try our best to tailor a package that meets your particular needs and stays within your budget.</p>
				</div>
				<div class="nav-tabs-wrap text-center">
					<ul class="nav nav-tabs nav-tabs--rounded">
						<li class="active"><a data-toggle="tab" href="#plan1">One Day</a></li>
						<li><a data-toggle="tab" href="#plan2">Weekly</a></li>
						<li><a data-toggle="tab" href="#plan3">Bi-weekly</a></li>
						<li><a data-toggle="tab" href="#plan4">Monthly Service</a></li>
					</ul>
				</div>
				<div class="tab-content tab-content-nopad">
					<div id="plan1" class="tab-pane fade in active">
						<div class="row price-row price-carousel-tab">
							<div class="col-md-6 col-lg-4">
								<div class="prices-box">
									<h3 class="prices-box-title">Start Plan</h3>
									<div class="prices-box-price">
										<b><sup>&nbsp;&nbsp;$</sup>10<sup>95</sup></b>
										<span>Per Hour</span>
									</div>
									<div class="prices-box-row"><span>Trained Cleaner</span></div>
									<div class="prices-box-row"><span><b>Maintenance</b> Cleaning</span></div>
									<div class="prices-box-row"><span>Liability Insurance</span></div>
									<div class="prices-box-row"><span>Planned <b>Holiday</b> Cover</span></div>
									<div class="prices-box-row"><span>Feedback Centre Access</span></div>
									<div class="prices-box-link">
										<a href="/usermii/user/orderform" class="btn">Order now</a>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4">
								<div class="prices-box prices-box--primary">
									<h3 class="prices-box-title">Standard Plan</h3>
									<div class="prices-box-price">
										<b><sup>&nbsp;&nbsp;$</sup>15<sup>95</sup></b>
										<span>Per Hour</span>
									</div>
									<div class="prices-box-row"><span>Experienced & Trained Cleaner</span></div>
									<div class="prices-box-row"><span><b>Maintenance</b> Cleaning</span></div>
									<div class="prices-box-row"><span>Insured Liability & Damage</span></div>
									<div class="prices-box-row"><span>Planned <b>Holiday</b> Cover</span></div>
									<div class="prices-box-row"><span>You Choose from 3 Cleaning Days</span></div>
									<div class="prices-box-link">
										<a href="/usermii/user/orderform" class="btn">Order now</a>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4">
								<div class="prices-box">
									<h3 class="prices-box-title">Premium Plan</h3>
									<div class="prices-box-price">
										<b><sup>&nbsp;&nbsp;$</sup>19<sup>95</sup></b>
										<span>Per Hour</span>
									</div>
									<div class="prices-box-row"><span>Experienced & Trained Cleaner</span></div>
									<div class="prices-box-row"><span><b>Maintenance</b> Cleaning</span></div>
									<div class="prices-box-row"><span>Insured Liability & Damage</span></div>
									<div class="prices-box-row"><span>Planned <b>Holiday</b> Cover</span></div>
									<div class="prices-box-row"><span>You Choose Cleaning Day</span></div>
									<div class="prices-box-link">
										<a href="/usermii/user/orderform" class="btn">Order now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="plan2" class="tab-pane fade in">
						<div class="row price-row price-carousel-tab">
							<div class="col-md-6 col-lg-4">
								<div class="prices-box">
									<h3 class="prices-box-title">Start Plan</h3>
									<div class="prices-box-price">
										<b><sup>&nbsp;&nbsp;$</sup>59<sup>95</sup></b>
										<span>Per Day</span>
									</div>
									<div class="prices-box-row"><span>Trained Cleaner</span></div>
									<div class="prices-box-row"><span><b>Maintenance</b> Cleaning</span></div>
									<div class="prices-box-row"><span>Liability Insurance</span></div>
									<div class="prices-box-row"><span>Planned <b>Holiday</b> Cover</span></div>
									<div class="prices-box-row"><span>Feedback Centre Access</span></div>
									<div class="prices-box-link">
										<a href="/usermii/user/orderform" class="btn">Order now</a>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4">
								<div class="prices-box prices-box--primary">
									<h3 class="prices-box-title">Standard Plan</h3>
									<div class="prices-box-price">
										<b><sup>&nbsp;&nbsp;$</sup>69<sup>95</sup></b>
										<span>Per Day</span>
									</div>
									<div class="prices-box-row"><span>Experienced & Trained Cleaner</span></div>
									<div class="prices-box-row"><span><b>Maintenance</b> Cleaning</span></div>
									<div class="prices-box-row"><span>Insured Liability & Damage</span></div>
									<div class="prices-box-row"><span>Planned <b>Holiday</b> Cover</span></div>
									<div class="prices-box-row"><span>You Choose from 3 Cleaning Days</span></div>
									<div class="prices-box-link">
										<a href="/usermii/user/orderform" class="btn">Order now</a>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4">
								<div class="prices-box">
									<h3 class="prices-box-title">Premium Plan</h3>
									<div class="prices-box-price">
										<b><sup>&nbsp;&nbsp;$</sup>89<sup>95</sup></b>
										<span>Per Day</span>
									</div>
									<div class="prices-box-row"><span>Experienced & Trained Cleaner</span></div>
									<div class="prices-box-row"><span><b>Maintenance</b> Cleaning</span></div>
									<div class="prices-box-row"><span>Insured Liability & Damage</span></div>
									<div class="prices-box-row"><span>Planned <b>Holiday</b> Cover</span></div>
									<div class="prices-box-row"><span>You Choose Cleaning Day</span></div>
									<div class="prices-box-link">
										<a href="/usermii/user/orderform" class="btn">Order now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="plan3" class="tab-pane fade in">
						<div class="row price-row price-carousel-tab">
							<div class="col-md-6 col-lg-4">
								<div class="prices-box">
									<h3 class="prices-box-title">Start Plan</h3>
									<div class="prices-box-price">
										<b><sup>&nbsp;&nbsp;$</sup>99<sup>95</sup></b>
										<span>Per Week</span>
									</div>
									<div class="prices-box-row"><span>Trained Cleaner</span></div>
									<div class="prices-box-row"><span><b>Maintenance</b> Cleaning</span></div>
									<div class="prices-box-row"><span>Liability Insurance</span></div>
									<div class="prices-box-row"><span>Planned <b>Holiday</b> Cover</span></div>
									<div class="prices-box-row"><span>Feedback Centre Access</span></div>
									<div class="prices-box-link">
										<a href="/usermii/user/orderform" class="btn">Order now</a>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4">
								<div class="prices-box prices-box--primary">
									<h3 class="prices-box-title">Standard Plan</h3>
									<div class="prices-box-price">
										<b><sup>&nbsp;&nbsp;$</sup>119<sup>95</sup></b>
										<span>Per Week</span>
									</div>
									<div class="prices-box-row"><span>Experienced & Trained Cleaner</span></div>
									<div class="prices-box-row"><span><b>Maintenance</b> Cleaning</span></div>
									<div class="prices-box-row"><span>Insured Liability & Damage</span></div>
									<div class="prices-box-row"><span>Planned <b>Holiday</b> Cover</span></div>
									<div class="prices-box-row"><span>You Choose from 3 Cleaning Days</span></div>
									<div class="prices-box-link">
										<a href="/usermii/user/orderform" class="btn">Order now</a>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4">
								<div class="prices-box">
									<h3 class="prices-box-title">Premium Plan</h3>
									<div class="prices-box-price">
										<b><sup>&nbsp;&nbsp;$</sup>299<sup>95</sup></b>
										<span>Per Week</span>
									</div>
									<div class="prices-box-row"><span>Experienced & Trained Cleaner</span></div>
									<div class="prices-box-row"><span><b>Maintenance</b> Cleaning</span></div>
									<div class="prices-box-row"><span>Insured Liability & Damage</span></div>
									<div class="prices-box-row"><span>Planned <b>Holiday</b> Cover</span></div>
									<div class="prices-box-row"><span>You Choose Cleaning Day</span></div>
									<div class="prices-box-link">
										<a href="/usermii/user/orderform" class="btn">Order now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="plan4" class="tab-pane fade in">
						<div class="row price-row price-carousel-tab">
							<div class="col-md-6 col-lg-4">
								<div class="prices-box">
									<h3 class="prices-box-title">Start Plan</h3>
									<div class="prices-box-price">
										<b><sup>&nbsp;&nbsp;$</sup>499<sup>95</sup></b>
										<span>Per Month</span>
									</div>
									<div class="prices-box-row"><span>Trained Cleaner</span></div>
									<div class="prices-box-row"><span><b>Maintenance</b> Cleaning</span></div>
									<div class="prices-box-row"><span>Liability Insurance</span></div>
									<div class="prices-box-row"><span>Planned <b>Holiday</b> Cover</span></div>
									<div class="prices-box-row"><span>Feedback Centre Access</span></div>
									<div class="prices-box-link">
										<a href="/usermii/user/orderform" class="btn">Order now</a>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4">
								<div class="prices-box prices-box--primary">
									<h3 class="prices-box-title">Standard Plan</h3>
									<div class="prices-box-price">
										<b><sup>&nbsp;&nbsp;$</sup>599<sup>95</sup></b>
										<span>Per Month</span>
									</div>
									<div class="prices-box-row"><span>Experienced & Trained Cleaner</span></div>
									<div class="prices-box-row"><span><b>Maintenance</b> Cleaning</span></div>
									<div class="prices-box-row"><span>Insured Liability & Damage</span></div>
									<div class="prices-box-row"><span>Planned <b>Holiday</b> Cover</span></div>
									<div class="prices-box-row"><span>You Choose from 3 Cleaning Days</span></div>
									<div class="prices-box-link">
										<a href="/usermii/user/orderform" class="btn">Order now</a>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-4">
								<div class="prices-box">
									<h3 class="prices-box-title">Premium Plan</h3>
									<div class="prices-box-price">
										<b><sup>&nbsp;&nbsp;$</sup>799<sup>95</sup></b>
										<span>Per Month</span>
									</div>
									<div class="prices-box-row"><span>Experienced & Trained Cleaner</span></div>
									<div class="prices-box-row"><span><b>Maintenance</b> Cleaning</span></div>
									<div class="prices-box-row"><span>Insured Liability & Damage</span></div>
									<div class="prices-box-row"><span>Planned <b>Holiday</b> Cover</span></div>
									<div class="prices-box-row"><span>You Choose Cleaning Day</span></div>
									<div class="prices-box-link">
										<a href="/usermii/user/orderform" class="btn">Order now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> -->
		<!-- /Prices block -->
		<!-- Text Block -->
		<!-- <div class="block fullwidth-bg block-bg-grey">
			<div class="container">
				<div class="row service-house-row">
					<div class="col-lg-5 inset-pad">
						<h2>We Offer <span>Free<br class="clearfix visible-xs"> In-Home</span> Estimates,<br class="clearfix visible-xs"> So Why Wait?</h2>
						<h5>Ready for a cleaner facility</h5>
						<div class="divider-sm"></div>
						<p>When it comes to gauging a complete and effective cleaning and sanitation solution, from a cost perspective, it is important to ensure the accuracy of all costs involved.</p>
						<p>This cost calculator is provided to clients to assist you in establishing the estimated cleaning cost for your company:</p>
						<div class="divider-sm"></div>
						<a href="/usermii/user/calculateform" class="btn btn-lg animation" data-animation="tada"><i class="icon-calc"></i>Calculate now</a>
					</div>
					<div class="col-lg-7">
						<div class="service-house-wrap">
							<div class="service-house">
								<a href="/usermii/user/residentialcleaning" class="service-house-item">
									<img src="/usermii/resources/images/content/index-service-house-1.jpg" alt="">
									<span class="service-house-item-title">Residential Cleaning</span>
								</a>
								<a href="/usermii/user/commercialcleaning" class="service-house-item">
									<img src="/usermii/resources/images/content/index-service-house-2.jpg" alt="">
									<span class="service-house-item-title">Commercial Cleaning</span>
								</a>
								<a href="/usermii/user/childcare" class="service-house-item">
									<img src="/usermii/resources/images/content/index-service-house-3.jpg" alt="">
									<span class="service-house-item-title">Child Care</span>
								</a>
								<a href="/usermii/user/oldagecare" class="service-house-item">
									<img src="/usermii/resources/images/content/index-service-house-4.jpg" alt="">
									<span class="service-house-item-title">Old Age Care</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		 --><!--/Text Block -->
		
		
		
		<!-- Facts block -->
		<!-- <div class="block fullwidth-bg inset-lg-1 bg-cover js-bg-parallax" data-bg="/usermii/resources/images/block-bg-5.jpg">
			<div class="container">
				<div class="row counter-row">
					<div class="col-xs-6 col-sm-3">
						<div class="counter-item">
							<div class="counter-item-icon"><i class="icon-user-rating"></i></div>
							<span class="counter-item-number number"><span class="count" data-to="1500" data-speed="1000">1500</span>+</span>
							<div class="counter-item-text">Happy Customers</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-3">
						<div class="counter-item">
							<div class="counter-item-icon"><i class="icon-award"></i></div>
							<span class="counter-item-number number"><span class="count" data-to="100" data-speed="1000">100</span>%</span>
							<div class="counter-item-text">Service Guarantee</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-3">
						<div class="counter-item">
							<div class="counter-item-icon"><i class="icon-648324users"></i></div>
							<span class="counter-item-number number"><span class="count" data-to="30" data-speed="1000">30</span>+</span>
							<div class="counter-item-text">Cleaners</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-3">
						<div class="counter-item">
							<div class="counter-item-icon"><i class="icon-cleaning"></i></div>
							<span class="counter-item-number number"><span class="count" data-to="1000" data-speed="1000">1000+</span></span>
							<div class="counter-item-text">Cleans Completed</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		 --><!-- /Facts block -->
		<!-- Text Block -->
		<div class="block">
			<div class="container">
				<div class="row row-revert-xs">
					<div class="col-sm-5 col-md-5 col-lg-6">
						<img src="/usermii/resources/images/content/index-img-1.jpg" class="img-responsive visible-lg visible-md hidden-sm visible-xs" alt="">
						<img src="/usermii/resources/images/content/index-img-1-mobile.jpg" class="img-responsive hidden-lg hidden-md hidden-xs visible-sm" alt="">
					</div>
					<div class="divider-xl visible-xs"></div>
					<div class="col-sm-7 col-md-7 col-lg-6">
						<h2>Reasons to Choose Us</h2>
						<p class="p-lg">Behind our commitment to excellence are few key attributes that define who we are and what makes us different from any other.
						</p>
						<div class="marker-box">
							<div class="marker-box-marker"><i class="icon-leaf"></i></div>
							<h4 class="marker-box-title">Top-Rated Company</h4>
							<p>We hold a successful track record of satisfying our customers and getting back their bond money. </p>
						</div>
						<div class="marker-box">
							<div class="marker-box-marker"><i class="icon-leaf"></i></div>
							<h4 class="marker-box-title">Superior Quality</h4>
							<p>We use the most excellent quality tools and equipment to get all the dust and dirt out of your premises.</p>
						</div>
						<div class="marker-box hidden-md">
							<div class="marker-box-marker"><i class="icon-leaf"></i></div>
							<h4 class="marker-box-title">Eco-Friendly Products</h4>
							<p>We use biodegradable products which do not harm the environment, pets or humans in any way.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/Text Block -->
		<!-- Testimonials Single Block -->
		<!-- <div class="block fullwidth-bg bg-cover block-testimonials-bg inset-lg-1" data-bg="/usermii/resources/images/block-bg-3.jpg">
			<div class="container">
				<h2 class="text-center h-lg">Happy Customers,<br class="clearfix visible-xs"> Happy Homes</h2>
				<div class="testimonials-carousel">
					<div class="testimonial-item">
						<div class="testimonial-item-inside">
							<p><i>As a handyman with some of the same clients, I see not only the incredible job Cleaning Company do, but how much her clients appreciate the attention to detail, care, and products used. When they leave a job the place is not only expertly clean but it always feels and smells that way when you walk in the door!</i></p>
						</div>
						<div class="testimonial-item-author">
							<img src="/usermii/resources/images/content/testimonial-author-1.png" alt="">
							<div><span class="testimonial-item-name">Jesse Hudson.</span> <span class="testimonial-item-position">Dothan, Alabama</span></div>
						</div>
					</div>
					<div class="testimonial-item">
						<div class="testimonial-item-inside">
							<p><i>They are very professional and do a great job cleaning the house!! I locked myself out of my house the other day and they were the only ones with a key. They were kind enough to drive over to unlock the door. That speaks volumes!!! They really care about their clients.</i></p>
						</div>
						<div class="testimonial-item-author">
							<img src="/usermii/resources/images/content/testimonial-author-2.png" alt="">
							<div><span class="testimonial-item-name">Shirley R. Sanchez.</span> <span class="testimonial-item-position">Evanston, Illinois</span></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		 --><!--/ Testimonials Single Block -->
		
		
		<!-- News block -->
		<div class="block">
			<div class="container">
				<h2 class="text-center h-lg h-decor">Cleaning Industry News</h2>
				<div class="text-center max-700">
					<p class="p-lg">We write about industry developments, training, health and safety, eco-friendly cleaning products, recycling practices and advice for working with professional cleaners.</p>
				</div>
				<div class="news-carousel row">
					<div class="col-sm-4">
						<div class="news-prw">
							<div class="news-prw-image">
								<a href="#">
									<img src="/usermii/resources/images/content/news-img-1.jpg" alt="">
									<span><i class="icon-link"></i></span>
								</a>
							</div>
							<div class="news-prw-date">16 December, 2018</div>
							<h3 class="news-prw-title">Confessions of an Office Cleaner</h3>
							<p>We make sure that our customers know what cleaning services we offer and reassure them that our office cleaners...</p>
							<a href="#" class="btn btn-border">Read more</a>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="news-prw">
							<div class="news-prw-image">
								<a href="#">
									<img src="/usermii/resources/images/content/news-img-2.jpg" alt="">
									<span><i class="icon-link"></i></span>
								</a>
							</div>
							<div class="news-prw-date">22 December, 2018</div>
							<h3 class="news-prw-title">Professional Carpet Cleaning: Which Is Best?</h3>
							<p>Over time, all carpets endure stains, spills and discolouration. That’s why they require regular cleaning.</p>
							<a href="#" class="btn btn-border">Read more</a>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="news-prw">
							<div class="news-prw-image">
								<a href="#">
									<img src="/usermii/resources/images/content/news-img-3.jpg" alt="">
									<span><i class="icon-link"></i></span>
								</a>
							</div>
							<div class="news-prw-date">27 December, 2018</div>
							<h3 class="news-prw-title">Ensure Good Hygiene at the Office</h3>
							<p>Your office is probably not as clean as you think it is. You might have a cleaner or get the office vacuumed a few times a week...</p>
							<a href="#" class="btn btn-border">Read more</a>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="news-prw">
							<div class="news-prw-image">
								<a href="#">
									<img src="/usermii/resources/images/content/news-img-1.jpg" alt="">
									<span><i class="icon-link"></i></span>
								</a>
							</div>
							<div class="news-prw-date">16 December, 2018</div>
							<h3 class="news-prw-title">Confessions of an Office Cleaner</h3>
							<p>We make sure that our customers know what cleaning services we offer and reassure them that our office cleaners...</p>
							<a href="#" class="btn btn-border">Read more</a>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="news-prw">
							<div class="news-prw-image">
								<a href="#">
									<img src="/usermii/resources/images/content/news-img-2.jpg" alt="">
									<span><i class="icon-link"></i></span>
								</a>
							</div>
							<div class="news-prw-date">22 December, 2018</div>
							<h3 class="news-prw-title">Professional Carpet Cleaning: Which Is Best?</h3>
							<p>Over time, all carpets endure stains, spills and discolouration. That’s why they require regular cleaning.</p>
							<a href="#" class="btn btn-border">Read more</a>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="news-prw">
							<div class="news-prw-image">
								<a href="#">
									<img src="/usermii/resources/images/content/news-img-3.jpg" alt="">
									<span><i class="icon-link"></i></span>
								</a>
							</div>
							<div class="news-prw-date">27 December, 2018</div>
							<h3 class="news-prw-title">Ensure Good Hygiene at the Office</h3>
							<p>Your office is probably not as clean as you think it is. You might have a cleaner or get the office vacuumed a few times a week...</p>
							<a href="#" class="btn btn-border">Read more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /News block -->
	</main>
	<!-- Footer -->
	<%@ include file="footer.jsp" %>
	<!-- /Footer -->
	<%@ include file="javascript.jsp" %>
	</body>
</html>