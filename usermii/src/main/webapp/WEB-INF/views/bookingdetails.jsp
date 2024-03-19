<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		
	<main class="page-main"  style="background-image:url('/usermii/resources/images/block-bg-7.jpg'); background-repeat: no-repeat;background-attachment: fixed; background-size: 100% 100%">
		<!-- Breadcrumbs Block -->
		<div class="block breadcrumbs">
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="home.jsp">Home</a></li>
					<li>Booking Details</li>
				</ul>
			</div>
		</div>
		<!-- //Breadcrumbs Block -->
		<form:form id="" action="/usermii/user/pgRedirect" method="post"  modelAttribute="bookingdet" enctype="multipart/form-data">
		<div class="block">
			<h2 class="text-center h-lg h-decor">Booking Details</h2>
			<div class="container" style="background-image: none;">
				<div class="row">
					<div class="col-lg-4 visible-lg">
						<div class="order-form-box" style="background-color:#fff; border-radius:1%; text-align: center;">
							<h3>Details of Maid</h3>
								<div class="divider-line"></div>
							<img src="/usermii/resources/images/default-avatar.png" style="height:150px; width:150px; border-radius:100%;">
							<br><br>
							<h6 style="text-align: center;">${bookingdet.mname}</h6><br>
							<!-- <div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:10px">Address:</h6>
									</div>
									<div class="col-sm-8">
										<input type="text" class="input-custom input-custom--sm input-full" name="address" style="border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;">
									</div>
							</div> -->
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:5px">Contact No:</h6>
									</div>
									<div class="col-sm-8">
										<form:input type="text" class="input-custom input-custom--sm input-full" name="mMobNo" path="mMobNo" style="border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;"/>
									</div>
							</div>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:10px">Email ID:</h6>
									</div>
									<div class="col-sm-8">
										<form:input type="text" class="input-custom input-custom--sm input-full" name="mEmail" path="mEmail" style="border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;"/>
									</div>
							</div>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:10px">Reviews:</h6>
									</div>
									<div class="col-sm-8">
										<form:input type="text" class="input-custom input-custom--sm input-full" name="review" path="review" style="border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;"/>
									</div>
							</div>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:10px">Ratings:</h6>
									</div>
									<div class="col-sm-8">
										<form:input type="text" class="input-custom input-custom--sm input-full" name="rating" path="rating" style="border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;"/>
									</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 visible-lg">
						<div class="order-form-box" style="background-color:#fff; border-radius:1%; text-align: center;">
							<h3>Your Requirements</h3>
								<div class="divider-line"></div>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:10px">Bedrooms:</h6>
									</div>
									<div class="col-sm-8">
										<form:input type="text" class="input-custom input-custom--sm input-full" name="bedrooms" path="bedrooms" style="border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;"/>
									</div>
							</div>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:10px">Members:</h6>
									</div>
									<div class="col-sm-8">
										<form:input type="text" class="input-custom input-custom--sm input-full" name="members" path="members" style="border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;"/>
									</div>
							</div>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:10px">Date:</h6>
									</div>
									<div class="col-sm-8">
										<form:input type="text" class="input-custom input-custom--sm input-full" name="dateOfBooking" path="dateOfBooking" style="border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;"/>
									</div>
							</div>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:5px">Time:</h6>
									</div>
									<div class="col-sm-8">
										<form:input type="text" class="input-custom input-custom--sm input-full" name="startTime" path="startTime" style="border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;"/>
									</div>
							</div>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:5px">Days:</h6>
									</div>
									<div class="col-sm-8">
										<form:input type="text" class="input-custom input-custom--sm input-full" name="noOfDays" path="noOfDays" style="border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;"/>
									</div>
							</div>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:5px">Contact No:</h6>
									</div>
									<div class="col-sm-8">
										<form:input type="text" class="input-custom input-custom--sm input-full" name="uMobNo" path="uMobNo" style="border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;"/>
									</div>
							</div>
							<div class="row">
									<div class="col-sm-4">
									<h6 style="margin-top:10px">Address:</h6>
									</div>
									<div class="col-sm-8">
										<form:input type="text" class="input-custom input-custom--sm input-full" name="address" path="address" style="border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;"/>
									</div>
							</div><br>
							<%-- <div class="row">
							
								<button type="submit" formaction="/usermii/user/editRequirements/${bookingdet.bookingId}" class="btn" style="width:70%;">Edit Requirements</button>
							
							</div> --%>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="order-form-box" style="background-color:#fff; border-radius:1%">
								<h3 style="text-align: center;">Selected Services</h3>
								<div class="divider-line"></div>
								<div class="row">
								<c:forEach items="${services}" var="s">
									<div class="col-sm-8">
										<h6 style="margin-top:10px; color: #899198;">${s.name}</h6>
									</div>
									<div class="col-sm-4">
										<h6 style="margin-top:10px; color: #899198;">+ &#8377; ${s.price}</h6>	
									</div>
								</c:forEach>
								</div>
								<div class="divider-line"></div>
								<div class="row">
									<div class="col-sm-8">
										<h6 style="margin-top:10px;color: #899198;">Days</h6>
									</div>
									<div class="col-sm-4">
										<h6 style="margin-top:10px;color: #899198;">*  ${bookingdet.noOfDays}</h6>	
									</div>
								</div>
								<div class="divider-line"></div>
								<div class="row">
									<div class="col-sm-8">
										<h6 style="margin-top:10px;">Total</h6>
									</div>
									<div class="col-sm-4">
										<h6 style="margin-top:10px;">&#8377;  ${bookingdet.total}</h6>	
									</div>
								</div>
								<div class="divider-line"></div>
								<div class="row">
									<div class="col-sm-12">
										<form:input type="hidden" id="total" class="input-custom input-custom--sm input-full" name="total" path="total"/>
										<form:input type="text" id="dealCode" class="input-custom input-custom--sm input-full" placeholder="Apply Promo Code" name="dealCode" path="dealCode" style="border:none; border-bottom: 1px solid #d7dbdf; border-radius: 0px;"/>
									</div>
									<!-- <div class="col-sm-4">
										<button type="submit" onclick="calcuate();" class="btn" style="width:100%; padding:5px 0px;">Apply</button>	
									</div> -->
								</div>
								<span class="material-input" id="errDeal" style="color:red;"></span>
								<div class="divider-line"></div>
								<div class="row">
									<div class="col-sm-8">
										<h6 style="margin-top:10px;">Amount to be paid</h6>
									</div>
									<div class="col-sm-4">
										<h6 style="margin-top:10px;">&#8377;</h6>
										<h6 style="margin-top:-20px;margin-left:15px;" id="amount"> ${bookingdet.amount}</h6>
										<%-- <form:input type="text" id="amount" class="input-custom input-custom--sm input-full" name="amount" path="lastAmount"/> --%>	
									</div>
								</div><br>
								<div class="row" style="text-align: center;">
								<form method="post" action="/usermii/user/pgRedirect" id="test">
			<input id="ORDER_ID" tabindex="1" maxlength="20" size="20"
				hidden="hidden" name="ORDER_ID" autocomplete="off"
				value="ORDS_12345"> <input id="CUST_ID"
				tabindex="2" maxlength="30" size="12" name="CUST_ID"
				autocomplete="off" value="CUST001" hidden="hidden"> <input
				id="INDUSTRY_TYPE_ID" type="hidden" tabindex="4" maxlength="12"
				size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail"
				hidden="hidden"> <input id="CHANNEL_ID" tabindex="4"
				maxlength="12" type="hidden" size="12" name="CHANNEL_ID"
				autocomplete="off" value="WEB" hidden="hidden"> <input
				title="TXN_AMOUNT" tabindex="10" type="hidden" name="TXN_AMOUNT"
				value="500"> <br>
								<button type="submit" value="Checkout" class="btn" style="width:70%;">Proceed To Pay</button></form>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		
		 </form:form>
		
		<%-- <form method="post" action="/usermii/user/pgRedirect" id="test">
			<input id="ORDER_ID" tabindex="1" maxlength="20" size="20"
				hidden="hidden" name="ORDER_ID" autocomplete="off"
				value="ORDS_12345"> <input id="CUST_ID"
				tabindex="2" maxlength="30" size="12" name="CUST_ID"
				autocomplete="off" value="CUST001" hidden="hidden"> <input
				id="INDUSTRY_TYPE_ID" type="hidden" tabindex="4" maxlength="12"
				size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail"
				hidden="hidden"> <input id="CHANNEL_ID" tabindex="4"
				maxlength="12" type="hidden" size="12" name="CHANNEL_ID"
				autocomplete="off" value="WEB" hidden="hidden"> <input
				title="TXN_AMOUNT" tabindex="10" type="hidden" name="TXN_AMOUNT"
				value="500"> <br>



			<!-- 			<input value="Checkout" type="submit" class="btn btn-primary float-right">  testrbop  testrbcod   -->

			<button type="submit" value="Checkout"
				class="btn btn-primary float-right">Checkout</button>

		</form> 
 --%>	</main>
	<!-- Footer -->
	<%@ include file="footer.jsp" %>
	<!-- /Footer -->
	<%@ include file="javascript.jsp" %>
	<script type="text/javascript">

	function calcuate(){
		var promoCode = $('#promoCode').val();
		$.ajax({
	        type: 'GET',
	        url: "/usermii/user/getTotalAmount/" + promoCode,

	        success: function(response)
	        {
	        	if(response==0)
	        		{
	        		$("#errDeal").text("This code is not applicable!!");
					document.getElementById("dealCode").focus();
	        		}
	        	else
	        		{
	        		$("#errDeal").text("");
	        		}
	        },

	        error: function(){                      
	            alert('Error while request..');
	        }
	    });
	}
  
  </script> 
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
<script type="text/javascript">
$("#dealCode").blur(function() {
	
	var promoCode = $('#dealCode').val();
	var total = $('#total').val();
	var amount=0;
	$.ajax({
        type: 'GET',
        url: "/usermii/user/getTotalAmount/" + promoCode,

        success: function(response)
        {
        	if(response==0)
        		{
        		$("#errDeal").text("This code is not applicable!!");
        		document.getElementById('dealCode').style.borderColor='red';
				document.getElementById("dealCode").focus();
        		}
        	else
        		{
        		$("#errDeal").text("");
        		document.getElementById('dealCode').style.borderColor='green';
        		amount = total * response / 100;
        		$('#amount').text(amount);
        		//$('#amount').val('refresh');
        		//alert(amount);
        		}
        },

        error: function(){                      
            alert('Error while request..');
        }
    });
  		/* var offer = $(this).val();
  	    $.ajax({
  	        type: 'GET',
  	        url: "/usermii/user/getDeal/" + offer,
  	        success: function(data){
  	        	if(data==0)
  	        		{
  	        		
  	        		}
  	        }
  	         //	 $("#citiesByState").html(data).selectpicker('refresh');
  	        	 var slctSubcat=$('#areasByCity'), option="";
  	          	slctSubcat.empty();
  	          //$('.selectpicker').selectpicker('refresh'); 
  	          
  	          	
  	          //$('#citiesByState').em
  	         
  	             for(var i=0; i<data.length; i++){
  	            	// alert("hi");		
  	             	//alert(data[i].name);
  	                option = option + "<option value='"+data[i].areaId+"'>"+data[i].name+"</option>";	            }
  	          	slctSubcat.append(option); 
  	          $('#areasByCity').selectpicker('refresh');
  	          //$('#areasByCity').selectpicker('refresh');
  	          	//alert(data.length); 
  	        },
  	        error:function(){
  	            alert("error");
  	        }
  	    }); */
	});
  
  </script> 
   
	</body>

</html>