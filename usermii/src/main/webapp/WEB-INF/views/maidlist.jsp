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
	<main class="page-main"  style="background-image:url('/usermii/resources/images/aboutimage1res.jpg'); background-repeat: no-repeat;background-attachment: fixed; background-size: 100% 100%">
		<!-- Breadcrumbs Block -->
		<div class="block breadcrumbs">
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="home.jsp">Home</a></li>
					<li>Select Your Maid</li>
				</ul>
			</div>
		</div>
		<!-- //Breadcrumbs Block -->
		<div class="block">
			<h2 class="text-center h-lg h-decor">Select Your Maid</h2>
			<div class="container" style="background-image: none;">
				<div class="row">
					<div class="col-lg-8">
						<div class="order-form-box" style="background-color:#fff; border-radius:1%">
							<form method="post" novalidate="novalidate">
								<h3>Select Your Maid</h3>
								<div class="divider-line"></div>
								<div class="successform text-center">
									<p>Your message was sent successfully!</p>
								</div>
								<div class="errorform text-center">
									<p>Something went wrong, try refreshing and submitting the form again.</p>
								</div>
								
								<img src="/usermii/resources/images/default-avatar.png" style="height:70px; width:70px; border-radius:100%">
								<h4 style="margin-top:-50px; margin-left:20%">Maid 1</h3>
								<div class="text-right">
									<button type="submit" class="btn" style="width:20%; margin-top:-50px;">BOOK</button>
								</div>
								<br><br>
								<img src="/usermii/resources/images/default-avatar.png" style="height:70px; width:70px; border-radius:100%">
								<h4 style="margin-top:-50px; margin-left:20%">Maid 2</h3>
								<div class="text-right">
									<button type="submit" class="btn" style="width:20%; margin-top:-50px;">BOOK</button>
								</div>
								<br><br>
								<img src="/usermii/resources/images/default-avatar.png" style="height:70px; width:70px; border-radius:100%">
								<h4 style="margin-top:-50px; margin-left:20%">Maid 3</h3>
								<div class="text-right">
									<button type="submit" class="btn" style="width:20%; margin-top:-50px;">BOOK</button>
								</div>
								<br><br>
								<img src="/usermii/resources/images/default-avatar.png" style="height:70px; width:70px; border-radius:100%">
								<h4 style="margin-top:-50px; margin-left:20%">Maid 4</h3>
								<div class="text-right">
									<button type="submit" class="btn" style="width:20%; margin-top:-50px;">BOOK</button>
								</div>
								<br><br>
								<img src="/usermii/resources/images/default-avatar.png" style="height:70px; width:70px; border-radius:100%">
								<h4 style="margin-top:-50px; margin-left:20%">Maid 5</h3>
								<div class="text-right">
									<button type="submit" class="btn" style="width:20%; margin-top:-50px;">BOOK</button>
								</div>
								
								<div class="divider-line"></div>
								<p class="text-center">Thank you very much!!!</p>
								
								<!-- <div class="divider"></div>
								<div class="successform text-center">
									<div class="divider-line"></div>
									<p>Your message was sent successfully!</p>
									<div class="divider"></div>
								</div>
								<div class="errorform text-center">
									<div class="divider-line"></div>
									<p>Something went wrong, try refreshing and submitting the form again.</p>
									<div class="divider"></div>
								</div> -->
							</form>
						</div>
					</div>
					<div class="col-lg-4 visible-lg">
						<div class="order-form-box" style="background-color:#fff; border-radius:1%">
							<h3>Details of selected Maid</h3>
								<div class="divider-line"></div>
							<img src="/usermii/resources/images/default-avatar.png" style="height:150px; width:150px; border-radius:100%; margin-left:23%;">
							<br><br>
							<h6 style="text-align: center;">Maid Name</h6><br>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:10px">Address:</h6>
									</div>
									<div class="col-sm-8">
										<input type="text" class="input-custom input-custom--sm input-full" name="address">
									</div>
							</div>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:5px">Contact No:</h6>
									</div>
									<div class="col-sm-8">
										<input type="text" class="input-custom input-custom--sm input-full" name="phoneNo">
									</div>
							</div>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:10px">Email ID:</h6>
									</div>
									<div class="col-sm-8">
										<input type="text" class="input-custom input-custom--sm input-full" name="email">
									</div>
							</div>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:10px">Reviews:</h6>
									</div>
									<div class="col-sm-8">
										<textarea name="review" rows="4" cols="21" style="border : 1px solid #d7dbdf;border-radius: 3px;"></textarea>
									</div>
							</div>
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