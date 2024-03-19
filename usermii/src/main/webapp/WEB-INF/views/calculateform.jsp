<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp" %> 
</head>
<body>
<%@ include file="loader.jsp" %>
	<%@ include file="header.jsp" %>
	<main class="page-main">
<div class="block">
			<div class="container">
			<br><br>
				<h2 class="text-center h-lg h-decor">Cleaning Cost Calculator</h2>
				<div class="text-center max-800">
					<p class="p-lg">Whether your cleaning services are weekly, bi-weekly, monthly or one-time special cleaning services for the holiday guests we would be happy to provide you with excellent cleaning service.</p>
				</div>
				<div class="divider"></div>
				<form id="calculateForm" class="calculate-form" name="calculateForm" method="post" novalidate="novalidate">
					<div class="row">
						<div class="col-sm-6">
							<div class="form-wrapper-grey">
								<div class="label">Total area to be cleaned in square feet:</div>
								<div class="slider-with-input">
									<div id="rangeSlider100" class="rslider"></div>
									<input id="number100" type="text">
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-wrapper-grey">
								<div class="label">Number of bathrooms:</div>
								<div class="slider-with-input">
									<div id="rangeSlider101" class="rslider"></div>
									<input id="number101" type="text">
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-wrapper-grey">
								<div class="label">Number of bedrooms:</div>
								<div class="slider-with-input">
									<div id="rangeSlider102" class="rslider"></div>
									<input id="number102" type="text">
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-wrapper-grey">
								<div class="label">Number of living rooms:</div>
								<div class="slider-with-input">
									<div id="rangeSlider103" class="rslider"></div>
									<input id="number103" type="text">
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4">
							<div class="form-wrapper-grey">
								<div class="label">Size of your kitchen:</div>
								<div class="select-wrapper select-wrapper--sm select-wrapper--full">
									<select name="calculateForm_select1" class="input-custom input-custom--sm">
										<option value="" selected>Choose...</option>
										<option value="50">50 square feet</option>
										<option value="70">70 square feet</option>
										<option value="100">100 square feet</option>
										<option value="150+">150+ square feet</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-wrapper-grey">
								<div class="label">Master bathroom includes:</div>
								<div class="select-wrapper select-wrapper--sm select-wrapper--full">
									<select name="calculateForm_select2" class="input-custom input-custom--sm">
										<option value="" selected>Choose...</option>
										<option value="Shower only">Shower only</option>
										<option value="Tub only">Tub only</option>
										<option value="Separete shower and tub">Separete shower and tub</option>
										<option value="No appliances">No appliances</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-wrapper-grey">
								<div class="label">Do you have pets?</div>
								<label class="switch" for="calculateForm_checkbox1">
									<input type="checkbox" id="calculateForm_checkbox1" name="calculateForm_checkbox1">
									<span class="switchslider round"></span>
								</label>
							</div>
						</div>
					</div>
					<div class="divider-lg"></div>
					<div class="text-center">
						<h4>Select your service & extras</h4>
					</div>
					<div class="divider"></div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-wrapper-grey">
								<div class="label">Choose your cleaning supplies:</div>
								<div class="select-wrapper select-wrapper--sm select-wrapper--full">
									<select name="calculateForm_select3" class="input-custom input-custom--sm">
										<option value="" selected>Choose...</option>
										<option value="Green cleaning">Green cleaning</option>
										<option value="Company's supplies">Company's supplies</option>
										<option value="Client's supplies">Client's supplies</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-wrapper-grey">
								<div class="label">Cleaning frequency:</div>
								<div class="select-wrapper select-wrapper--sm select-wrapper--full">
									<select name="time1" class="input-custom input-custom--sm">
										<option value="" selected>Choose...</option>
										<option value="Weekly Service">Weekly Service</option>
										<option value="Bi-Weekly Service">Bi-Weekly Service</option>
										<option value="Tri-Weekly Service">Tri-Weekly Service</option>
										<option value="Quarter Weekly Service">Quarter Weekly Service</option>
										<option value="Monthly Service">Monthly Service</option>
										<option value="One Time Service">One Time Service</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-8">
							<div class="form-wrapper-grey">
								<div class="label">Additional rooms you would like us to clean:</div>
								<div class="button-group-pills" data-toggle="buttons">
									<label class="btn btn-checkbox active">
										<input type="checkbox" id="calculateForm_checkbox2" name="calculateForm_checkbox2" checked>
										<span>Dining Room</span>
									</label>
									<label class="btn btn-checkbox">
										<input type="checkbox" id="calculateForm_checkbox3" name="calculateForm_checkbox3">
										<span>Play Room</span>
									</label>
									<label class="btn btn-checkbox">
										<input type="checkbox" id="calculateForm_checkbox4" name="calculateForm_checkbox4">
										<span>Laundry</span>
									</label>
									<label class="btn btn-checkbox">
										<input type="checkbox" id="calculateForm_checkbox5" name="calculateForm_checkbox5">
										<span>Gym</span>
									</label>
									<label class="btn btn-checkbox">
										<input type="checkbox" id="calculateForm_checkbox6" name="calculateForm_checkbox6">
										<span>Garage</span>
									</label>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-wrapper-grey">
								<div class="label">Clean inside the refrigerator?</div>
								<label class="switch" for="checkbox">
									<input type="checkbox" id="checkbox" />
									<span class="switchslider round"></span>
								</label>
							</div>
						</div>
					</div>
					<div class="divider-lg"></div>
					<div class="text-center">
						<h3>Final Cost</h3>
						<div class="final-price">$379.60</div>
						<div class="divider-lg"></div>
						<img src="images/h-decor.png" class="img-responsive" alt="">
						<div class="divider-xl"></div>
						<p class="p-lg">Enter your contact details. We will give you a call to finish up.</p>
						<div class="divider-lg"></div>
					</div>
					<div class="inputs-col">
						<div class="row">
							<div class="col-md-6">
								<div class="input-wrapper">
									<input type="text" class="input-custom input-custom--sm input-full" name="name" placeholder="Your name">
								</div>
								<div class="input-wrapper">
									<input type="text" class="input-custom input-custom--sm input-full" name="phone" placeholder="Your phone">
								</div>
								<div class="input-wrapper">
									<input type="text" class="input-custom input-custom--sm input-full" name="email" placeholder="Your e-mail">
								</div>
							</div>
							<div class="col-md-6">
								<div class="input-wrapper">
									<textarea class="textarea-custom input-full" name="message" placeholder="Message"></textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="text-center">
					<div class="divider-lg"></div>
						<div class="d-flex">
							<div>
								<label class="control control-checkbox">
									<input id="calculateForm_checkbox7" type="checkbox" />
									<span class="control-indicator"></span>
								</label>
							</div>
							<div>Please accept <a href="about.html" class="color">Terms and Conditions</a></div>
						</div>
						<div class="divider-md"></div>
						<button type="submit" class="btn btn-lg">Submit Now</button>
					</div>
				</form>
			</div>
		</div>
		
		<!-- Footer -->
	<%@ include file="footer.jsp" %>
	<!-- /Footer -->
	<%@ include file="javascript.jsp" %>
	<script src="/usermii/resources/js/vendor/wNumb.js"></script>
</body>
</html>