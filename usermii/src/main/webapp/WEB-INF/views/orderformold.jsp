<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
		<%@ include file="head.jsp" %> 
</head>

<body>
	<%-- <%@ include file="loader.jsp" %> --%>
	<%@ include file="header.jsp" %>
		<!-- /Header -->
	<main class="page-main">
		<!-- Breadcrumbs Block -->
		<div class="block breadcrumbs">
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="home.jsp">Home</a></li>
					<li>Book your cleaning service</li>
				</ul>
			</div>
		</div>
		<!-- //Breadcrumbs Block -->
		<div class="block">
			<h2 class="text-center h-lg h-decor">Book your cleaning service</h2>
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="order-form-box">
							<form action="/usermii/user/maidlist" method="post" novalidate="novalidate">
								<h3>Book your cleaning service</h3>
								<div class="divider-line"></div>
								<div class="successform text-center">
									<p>Your message was sent successfully!</p>
								</div>
								<!-- <div class="errorform text-center">
									<p>Something went wrong, try refreshing and submitting the form again.</p>
								</div> -->

								<h6>Home Information</h6>
								<p>Tell us about your home</p>
								<div class="row">
									<div class="col-sm-6">
										<div class="qty-count qty-count--order">
											<span class="count-reduce">-</span>
											<input type="text" class="count-input" value="2 Bedrooms" name="bedrooms">
											<span class="count-add">+</span>
										</div>
										<div class="text-center input-comment">(living room & kitchen included)</div>
									</div>
									<div class="col-sm-6">
										<div class="qty-count qty-count--order">
											<span class="count-reduce">-</span>
											<input type="text" class="count-input" value="1 Bathroom" name="bathroom">
											<span class="count-add">+</span>
										</div>
										<div class="text-center input-comment">(round half baths up)</div>
									</div>
								</div>
								<div class="divider-line"></div>
								<h6>Service Requested</h6>
								<div class="select-wrapper select-wrapper--sm">
									<select name="service" class="input-custom input-custom--sm collapsible" id="services" onchange="myFunction()">
										<option value="" disabled selected>- Please Select -</option>
										<option value="Apartment Cleaning">Residential Cleaning</option>
										<option value="House Cleaning">Commercial Cleaning</option>
										<option value="Сarpet Сleaning">Old Age Care</option>
										<option value="Сarpet Сleaning">Child Care</option>
									</select>
									
								</div>
								
								<div id="res">
								<div class="divider-line"></div>
								<!-- <h6>Residential Cleaning</h6> -->
								<p>Select the services which you would like to book.</p>
								<div class="row">
									<div class="col-sm-6">
										<input type="checkbox" value = "Service1" name="r1">  Service 1
										<input type="checkbox" value = "Service6" name="r1" style="margin-left:100px">  Service 6<br>
										<input type="checkbox" value = "Service2" name="r1">  Service 2
										<input type="checkbox" value = "Service7" name="r1" style="margin-left:100px">  Service 7<br>
										<input type="checkbox" value = "Service3" name="r1">  Service 3
										<input type="checkbox" value = "Service8" name="r1" style="margin-left:100px">  Service 8<br>
										<input type="checkbox" value = "Service4" name="r1">  Service 4
										<input type="checkbox" value = "Service9" name="r1" style="margin-left:100px">  Service 9<br>
										<input type="checkbox" value = "Service5" name="r1">  Service 5
										<input type="checkbox" value = "Service10" name="r1" style="margin-left:100px">  Service 10
									</div>
								</div>
								</div>
								<!-- <div id="comm"  style="visibility: hidden;">
								<div class="divider-line"></div>
								<h6>Commercial Cleaning</h6>
								<p>Select the services which you would like to book.</p>
								<div class="row">
									<div class="col-sm-6">
										<input type="checkbox" value = "Service1" name="r1">  Service 1
										<input type="checkbox" value = "Service6" name="r1" style="margin-left:100px">  Service 6<br>
										<input type="checkbox" value = "Service2" name="r1">  Service 2
										<input type="checkbox" value = "Service7" name="r1" style="margin-left:100px">  Service 7<br>
										<input type="checkbox" value = "Service3" name="r1">  Service 3
										<input type="checkbox" value = "Service8" name="r1" style="margin-left:100px">  Service 8<br>
										<input type="checkbox" value = "Service4" name="r1">  Service 4
										<input type="checkbox" value = "Service9" name="r1" style="margin-left:100px">  Service 9<br>
										<input type="checkbox" value = "Service5" name="r1">  Service 5
										<input type="checkbox" value = "Service10" name="r1" style="margin-left:100px">  Service 10
									</div>
								</div>
								</div>
								<div id="oldage"  style="visibility: hidden;">
								<div class="divider-line"></div>
								<h6>Old Age Care</h6>
								<p>Select the services which you would like to book.</p>
								<div class="row">
									<div class="col-sm-6">
										<input type="checkbox" value = "Service1" name="r1">  Service 1
										<input type="checkbox" value = "Service6" name="r1" style="margin-left:100px">  Service 6<br>
										<input type="checkbox" value = "Service2" name="r1">  Service 2
										<input type="checkbox" value = "Service7" name="r1" style="margin-left:100px">  Service 7<br>
										<input type="checkbox" value = "Service3" name="r1">  Service 3
										<input type="checkbox" value = "Service8" name="r1" style="margin-left:100px">  Service 8<br>
										<input type="checkbox" value = "Service4" name="r1">  Service 4
										<input type="checkbox" value = "Service9" name="r1" style="margin-left:100px">  Service 9<br>
										<input type="checkbox" value = "Service5" name="r1">  Service 5
										<input type="checkbox" value = "Service10" name="r1" style="margin-left:100px">  Service 10
									</div>
								</div>
								</div>
								<div id="child"  style="visibility: hidden;">
								<div class="divider-line"></div>
								<h6>Child Care</h6>
								<p>Select the services which you would like to book.</p>
								<div class="row">
									<div class="col-sm-6">
										<input type="checkbox" value = "Service1" name="r1">  Service 1
										<input type="checkbox" value = "Service6" name="r1" style="margin-left:100px">  Service 6<br>
										<input type="checkbox" value = "Service2" name="r1">  Service 2
										<input type="checkbox" value = "Service7" name="r1" style="margin-left:100px">  Service 7<br>
										<input type="checkbox" value = "Service3" name="r1">  Service 3
										<input type="checkbox" value = "Service8" name="r1" style="margin-left:100px">  Service 8<br>
										<input type="checkbox" value = "Service4" name="r1">  Service 4
										<input type="checkbox" value = "Service9" name="r1" style="margin-left:100px">  Service 9<br>
										<input type="checkbox" value = "Service5" name="r1">  Service 5
										<input type="checkbox" value = "Service10" name="r1" style="margin-left:100px">  Service 10
									</div>
								</div>
								</div> -->
								<div class="divider-line"></div>
								<h6>Service Requested</h6>
								<p>When would you like us to come? </p>
								<div class="row">
									<div class="col-sm-4 col-md-5">
										<div class="datetimepicker-wrap">
											<input type="text" name="date" class="form-control input-custom input-custom--sm datetimepicker" placeholder="">
										</div>
									</div>
									<div class="visible-xs text-center">
										<p>Any time between</p>
									</div>
									<div class="col-sm-8 col-md-7 text-right text-center-xs">
										<span class="hidden-xs">Any time between &nbsp;</span>
										<div class="select-wrapper select-wrapper--sm select-time">
											<select name="time1" class="input-custom input-custom--sm">
												<option value="8:00 AM" selected>8:00 AM</option>
												<option value="9:00 AM">9:00 AM</option>
												<option value="10:00 AM">10:00 AM</option>
												<option value="11:00 AM">11:00 AM</option>
												<option value="12:00 NN">12:00 NN</option>
												<option value="13:00 AM">13:00 PM</option>
												<option value="14:00 AM">14:00 PM</option>
												<option value="15:00 AM">15:00 PM</option>
												<option value="16:00 AM">16:00 PM</option>
											</select>
										</div>
										<span>&nbsp;-&nbsp;</span>
										<div class="select-wrapper select-wrapper--sm select-time">
											<select name="time2" class="input-custom input-custom--sm">
												<option value="8:00 AM">8:00 AM</option>
												<option value="9:00 AM">9:00 AM</option>
												<option value="10:00 AM">10:00 AM</option>
												<option value="11:00 AM">11:00 AM</option>
												<option value="12:00 NN">12:00 NN</option>
												<option value="13:00 AM">13:00 PM</option>
												<option value="14:00 AM">14:00 PM</option>
												<option value="15:00 AM" selected>15:00 PM</option>
												<option value="16:00 AM">16:00 PM</option>
											</select>
										</div>
									</div>
								</div>
								<div class="divider-line"></div>
								<h6>How Often?</h6>
								<p>It's all about matching you with the perfect cleaner for your home. Scheduling is flexible. Cancel or reschedule anytime.</p>
								<div class="label-box-wrap">
									<div>
										<input type="radio" name="often" id="radio1" value="ones" checked>
										<label for="radio1"><b>One Time Service</b></label>
									</div>
									<div>
										<input type="radio" name="often" id="radio2" value="weekly">
										<label for="radio2"><b>Weekly </b>15% Discount</label>
									</div>
									<div>
										<input type="radio" name="often" id="radio3" value="2 week">
										<label for="radio3"><b>Every 2 Weeks</b> 10% Discount</label>
									</div>
									<div>
										<input type="radio" name="often" id="radio4" value="4 week">
										<label for="radio4"><b>Every 4 Weeks</b> 5% Discount</label>
									</div>
								</div>
								<div class="divider"></div>
								<div class="divider-line"></div>
								 <h6>Contact Information</h6>
								<p>This information will be used to contact you about your service.</p>
								<div class="row">
									<div class="col-sm-12">
										<input type="text" class="input-custom input-custom--sm input-full" name="address1" path="address1" placeholder="Your address*">
									</div>
								</div>
								<div class="row">
								<div class="col-sm-12">
										<input type="text" class="input-custom input-custom--sm input-full" name="address2" path="address2" placeholder="Your address*">
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6">
									<div class="select-wrapper select-wrapper--sm">
										<select name="cityId" path="cityId" class="input-custom input-custom--sm collapsible">
											<option value="0" label="Choose City" disabled="disabled" selected="selected"/>Choose City
											<option value="1" label="Ahmedabad"/>Ahmedabad
											<option value="2" label="Surat"/>Surat
										</select>
										</div>
									</div>
									<div class="col-sm-6">
										<input type="text" class="input-custom input-custom--sm input-full" name="pincode" placeholder="Enter Pincode*">
									</div>
									
								</div>
								
								<div class="divider"></div>
								<div class="divider-line"></div>
                <div class="text-center">
                  <div class="g-recaptcha text-center" data-sitekey="6LdSq54UAAAAAGiHqS8jrc-8sxVM0HfA3wyqDa3Y" style="display: inline-block;"></div>
                  <input type="hidden" class="hiddenRecaptcha required" name="hiddenRecaptcha" id="hiddenRecaptcha">
                </div>
                <br>
								<p class="text-center">We will confirm your service request within 24 hours. Thank you very much!</p>
								<div class="text-center">
									<button type="submit" class="btn btn-wide">BOOK NOW</button>
								</div>
								<div class="divider"></div>
								<div class="successform text-center">
									<div class="divider-line"></div>
									<p>Your message was sent successfully!</p>
									<div class="divider"></div>
								</div>
								<div class="errorform text-center">
									<div class="divider-line"></div>
									<p>Something went wrong, try refreshing and submitting the form again.</p>
									<div class="divider"></div>
								</div>
							</form>
						</div>
					</div>
					<div class="col-lg-4 visible-lg">
						<img src="/usermii/resources/images/content/order-form-img.jpg" class="img-fullwidth" alt="">
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
 /* function myFunction() {
	  var value = $('#services :selected').text();
	  var r = document.getElementById('res');
	  var c = document.getElementById('comm');
	  var o = document.getElementById('oldage');
	  var ch = document.getElementById('child');
	  if(value == "Residential Cleaning")
	  {
		  r.style.visibility = 'visible';
		  c.style.visibility = 'hidden';
		  o.style.visibility = 'hidden';
		  ch.style.visibility = 'hidden';
	  }
	  if(value == "Commercial Cleaning")
	  {
	  	r.style.visibility = 'hidden';
	  	c.style.visibility = 'visible';
	  	o.style.visibility = 'hidden';
	  	ch.style.visibility = 'hidden';
	  }
	  if(value == "Old Age Care")
	  {
	  	r.style.visibility = 'hidden';
	  	c.style.visibility = 'hidden';
	  	o.style.visibility = 'visible';
	  	ch.style.visibility = 'hidden';
	  }
	  if(value == "Child Care")
	  {
	  	r.style.visibility = 'hidden';
	  	c.style.visibility = 'hidden';
	  	o.style.visibility = 'hidden';
	  	ch.style.visibility = 'visible';
	  }
 }  */
 
 /* $(document).ready(function(){
	    $("#services").change(function(){
	        $(this).find("option:selected").each(function(){
	            var optionValue = $(this).attr("value");
	            if(optionValue){
	                $(".res").not("." + optionValue).hide();
	                $("." + optionValue).show();
	            } else{
	                $(".res").hide();
	            }
	        });
	    }).change();
	}); */
 
</script>
	</body>

</html>