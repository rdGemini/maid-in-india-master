<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.safetyequipment.beans.Cart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	Random randomGenerator = new Random();
	//int randomInt = randomGenerator.nextInt(1000000);
	 long randomInt =  System.currentTimeMillis();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review Order</title>
<link href="css/style.css" rel="stylesheet">

</head>
<body>

	<jsp:include page="/ReviewOrderServlet" />
	<%
		List<Cart> cartlist = (ArrayList) (request.getAttribute("cartlist"));
	%>
	<%
		int c = 0, subTotal = 0, mainTotal = 0;
	%>
	<%@include file="header.jsp"%>

	<!-- Main Stylesheet -->
	<!-- reeview -->
	<h4 style="margin-left: 18%; color: green;">Order Review</h4>
	<div>
		<div class="table-responsive"
			style="width: 23cm; left: 50%; display: inline-block; margin-left: 18%; margin-top: 0%;">
			<table class="table"
				style="border-color: black; border-style: solid;">
				<thead>
					<tr>
						<td>No.</td>
						<td></td>
						<td>Product Name</td>
						<td>Quantity</td>
						<td>Price</td>
						<td>Sub Total</td>
					</tr>
				</thead>
				<tbody>

					<%
						for (Cart cart : cartlist) {
					%>

					<input type="hidden" id="userid" name="userid"
						value="<%=cart.getUserid()%>">

					<input type="hidden" class="cartid" id="cartid" name="cartid"
						value="<%=cart.getCartid()%>">
					<tr>

						<td><%=++c%></td>

						<td><div class="product-info"
								style="height: 100px; width: 100px;">
								<img class="img-fluid"
									src="data:image/jpeg;base64,<%=cart.getProduct().getImagestring()%>"
									alt="product-img" />
							</div></td>
						<td class="align-middle"><%=cart.getProduct().getProductname()%></td>
						<td class="align-middle"><%=cart.getQuatity()%></td>
						<td class="align-middle"><%=cart.getProduct().getProductprice()%></td>
						<td class="align-middle"><%=(cart.getQuatity()) * (cart.getProduct().getProductprice())%></td>

						<%
							subTotal += (cart.getQuatity()) * (cart.getProduct().getProductprice());
						%>
					</tr>
					<%
						}
					%>

				</tbody>
			</table>


		</div>

	</div>


	<!-- /review -->
	<input type="button" onclick="return CallCartServlet();"
		value="Update Cart" class="btn btn-primary float-right">
	<nav class="bg-gray py-3">

		<!-- <div style="position: absolute; width: 80%;" > -->

		<div class="container" align="justify">
			<ol class="breadcrumb">
				<li aria-current="page">Shipping Information <!-- 				 class="breadcrumb-item active" -->

				</li>
			</ol>
		</div>
	</nav>
	<!-- class="col-md-6" -->
	<!-- shipping-information -->
	<h3 class="mb-5 border-bottom pb-2" align="center">Shipping
		Information</h3>


	<div>
		<div class="row mb-5" align="right" style="margin-left: 180px;">
			<div class="border-box p-4" align="justify">
				<h4 class="mb-3">Shipping Address</h4>
				<ul class="list-unstyled">


					<li><%=userobj.getFirstname() + " " + userobj.getLastname()%></li>

					<%
						if ((userobj.getAddress().equals("") || userobj.getAddress() == null)
								&& (userobj.getPincode().equals("") || userobj.getPincode() == null)) {
					%>
					<p>* Please enter your address</p>
					<a href="userinfo.jsp">Add Address</a>
					<%
						} else {
					%>
					<!-- onclick="checkOne(this)"      onclick="checkOne(this)"           -->
					<li><input type="radio" checked="checked" name="check"
						id="uAddress" class="uAddress"><%=userobj.getAddress()%></li>
					<li><%=userobj.getPincode()%></li>
					<a href="userinfo.jsp">Change Address</a>
					<%
						}
					%>
					<!-- 					<li><input type="radio" id="chkAddress" name="check" -->
					<!-- 						 class="chkAddress"><b>change -->
					<!-- 							delivery address?</b></li> -->
					<!-- 					<input type="text" name="dvAddress" id="dvAddress" -->
					<!-- 						style="display: none" placeholder="Enter new shipping address"> -->
					<!-- 					<br> -->
					<!-- 					<input type="text" name="dvPincode" id="dvPincode" -->
					<!-- 						style="display: none" placeholder="Enter Pincode" -->
					<!-- 						onkeypress="javascript:return isNumber(event)" pattern=".{6,}"> -->
					<!-- 					<span id="uaddresspin"></span> -->
					<li>Mo.<%=userobj.getMobileno()%></li>
					<li><%=userobj.getEmailid()%></li>
				</ul>
			</div>

			<div class="border-box p-4" style="margin-left: 30px;">
				<h4 class="mb-3">Shipping Method</h4>
				<ul class="list-unstyled">
					<li>Delivered in 8-10 business days.</li>
					<br>
					<input type="radio" name="testrb" id="testrbop" checked="checked"
						value="gateway">Net Banking/Paytm/Debit/Credit Card
					<br>
					<input type="radio" name="testrb" id="testrbcod" value="pod">Pay
					On Delivery
				</ul>
			</div>
		</div>


		<div class="col-md-4" style="margin-left: 800px; margin-top: -320px;">
			<div class="border-box p-4">
				<h4>Order Summary</h4>
				<p>
					<b>Inclusive Of all taxes</b>
				</p>
				<ul class="list-unstyled">
					<li class="d-flex justify-content-between"><span>Subtotal</span>
						<span>&#x20b9;<%=subTotal%></span></li>
					<li class="d-flex justify-content-between"><span>Shipping
							& Handling</span> <span>&#x20b9;0</span></li>

					<li class="d-flex justify-content-between"><span>Estimated
							Tax</span> <span>&#x20b9;0</span></li>
				</ul>

				<hr>
				<div class="d-flex justify-content-between">
					<%
						mainTotal += subTotal + 0;
					%>
					<span>Total</span> <strong>&#x20b9;<%=mainTotal%></strong>
				</div>
			</div>
		</div>

		<form method="post" action="pgRedirect.jsp" id="test">
			<input id="ORDER_ID" tabindex="1" maxlength="20" size="20"
				hidden="hidden" name="ORDER_ID" autocomplete="off"
				value="ORDS_<%=randomInt%>"> <input id="CUST_ID"
				tabindex="2" maxlength="30" size="12" name="CUST_ID"
				autocomplete="off" value="CUST001" hidden="hidden"> <input
				id="INDUSTRY_TYPE_ID" type="hidden" tabindex="4" maxlength="12"
				size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail"
				hidden="hidden"> <input id="CHANNEL_ID" tabindex="4"
				maxlength="12" type="hidden" size="12" name="CHANNEL_ID"
				autocomplete="off" value="WEB" hidden="hidden"> <input
				title="TXN_AMOUNT" tabindex="10" type="hidden" name="TXN_AMOUNT"
				value="<%=subTotal%>"> <br>



			<!-- 			<input value="Checkout" type="submit" class="btn btn-primary float-right">  testrbop  testrbcod   -->

			<button type="submit" value="Checkout"
				class="btn btn-primary float-right">Checkout</button>

		</form>
	</div>
	<!-- 	<button type="submit" -->
	<!-- 			id="proceedpayment" name="proceedpayment">Proceed to Payment</button> -->
	</form>
	<!-- </div> -->

	<!--           <div id="dvAddress" style="display: none"> -->
	<!--         New Shipping Address: -->
	<!--         <input type="text" id="txtPassportNumber" /> -->
	<!--     </div> -->

	<input type="hidden" id="shipping" name="shipping"
		value="<%=userobj.getAddress() + userobj.getPincode()%>">


	<input type="hidden" id="products" name="products"
		value="<%=cartlist.size()%>">

	<div>
		<%@include file="footer.jsp"%>
	</div>
	<!-- 	</div> -->

	<!-- jQuery -->
	<script src="plugins/jQuery/jquery.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="plugins/bootstrap/bootstrap.min.js"></script>
	<script src="plugins/slick/slick.min.js"></script>
	<script src="plugins/venobox/venobox.min.js"></script>
	<script src="plugins/aos/aos.js"></script>
	<script src="plugins/syotimer/jquery.syotimer.js"></script>
	<script src="plugins/instafeed/instafeed.min.js"></script>
	<script src="plugins/zoom-master/jquery.zoom.min.js"></script>
	<script
		src="plugins/bootstrap-touchspin-master/jquery.bootstrap-touchspin.min.js"></script>
	<script src="plugins/nice-select/jquery.nice-select.min.js"></script>
	<script src="plugins/bootstrap-slider/bootstrap-slider.min.js"></script>
	<!-- google map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&amp;libraries=places"></script>
	<script src="plugins/google-map/gmap.js"></script>
	<!-- Main Script -->
	<script src="js/script.js"></script>
	<script type="text/javascript">
	$(document).ready(
			function(){
				$("#testrbop") // select the radio by its id
			    .change(function(){ // bind a function to the change event
			        if( $(this).is(":checked") ){ // check if the radio is checked
			            var rbval = $(this).val(); // retrieve the value
			            
			            //var radioValue = $("input[name='testrb']:checked").val();
			            //alert("radioValue : "+radioValue);
			            //alert("value rb : "+rbval);
			            if(rbval == "pod")
			            	{
			            		//alert("if called");
			            		$("#test").attr('action', 'MyOrderListServlet');
			            		$("#test").attr('method', 'get');
			            		//alert("if end");
			            	}
			            else
			            	{
			            		//alert("else start called");
			            		$("#test").attr('action', 'pgRedirect.jsp');
			            		$("#test").attr('method', 'post');
			            		//alert("else end");
			            	}
			        }
			    });
		});
	$(document).ready(
			function(){
				$("#testrbcod") // select the radio by its id
			    .change(function(){ // bind a function to the change event
			        if( $(this).is(":checked") ){ // check if the radio is checked
			            var rbval = $(this).val(); // retrieve the value
			            
			            //var radioValue = $("input[name='testrb']:checked").val();
			            //alert("radioValue : "+radioValue);			            
			            //alert("value rb : "+rbval);
			            if(rbval == "pod")
			            	{
			            		//alert("if called");
			            		$("#test").attr('action', 'MyOrderListServlet');
			            		$("#test").attr('method', 'get');
			            		//alert("if end");
			            	}
			            else
			            	{
			            		//alert("else start called");
			            		$("#test").attr('action', 'pgRedirect.jsp');
			            		$("#test").attr('method', 'post');
			            		//alert("else end");
			            	}
			        }
			    });
		});
	
	
	
// 	$(document).ready(function() {
// 		$("#uAddress").change(function() {
// 			if ($(this).is(":checked")) {
// 				alert(" #uAddress  if called");
// 				$('#dvAddress').attr('required', false);
// 				$('#dvPincode').attr('required', false);
// 				$("#dvAddress").hide();
// 				$("#dvPincode").hide();
// 				alert(" #uAddress  if end");
// 			} 
			
// 			else {
// 				alert(" #uAddress  else start called");
// 				$("#dvAddress").show();
// 				$("#dvPincode").show();
// 				$('#dvAddress').prop('required',true);
// 				$('#dvPincode').prop('required',true);
// 				alert("  #uAddress else end");
// 			}
// 		});
// 	});
	
	//chkAddress
// 	$(document).ready(function() {
// 		$("#chkAddress").change(function() {
// 			if ($(this).is(":checked")) {
// 				alert(" #chkAddress   if called");
// 				$("#dvAddress").show();
// 				$("#dvPincode").show();
// 				$('#dvAddress').attr('required', true);
// 				$('#dvPincode').attr('required', true);
// 				alert(" #chkAddress  if end");
// 			} 
			
// 			else {
// 				alert(" #chkAddress  else start called");
// 				$('#dvAddress').attr('required', false);
// 				$('#dvPincode').attr('required', false);
// 				$("#dvAddress").hide();
// 				$("#dvPincode").hide();
// 				alert(" #chkAddress  else end");
// 			}
// 		});
// 	});
	
	
	
	
	function checkselected()
	{
		alert("c2");	
		alert("c3");
		var ele = document.getElementByName(" paymentmode");
		alert("c4");
		alert(""+ele[0].value);
			
				for(var i=0,len=ele.length;i<len;i++)
				{
					if(ele[i].checked)
					{
						alert(ele[i].value);
						break;
					}
				}
				alert("c5");
	}		
		
		
		
	function checkOne(checkbox){
	var cboxes=document.getElementsByName('check')
	cboxes.forEach((item)=>
	{
		if(item!== checkbox) item.checked = false
	})
	}
		


		function CallCartServlet() {
			document.location.href = "UserCartListServlet";
		}
		
		//OrderShippingServlet
// 		function shipping() {
//   		alert("Handler for .click() called.");
//   		var orderid = $('input:hidden[name=ORDER_ID]').val();
//   		alert(orderid);
//   		var address;
//   		if(($(".uAddress").prop("checked") == true)){
//             alert("  .uAddress Checkbox is checked.");
           
//             address = $('input:hidden[name=shipping]').val();
            
//             address("addres : "+address);
//             alert(address);
//             return false;
//          }
//   		else if( ($(".chkAddress").prop("checked") == true) &&( (documnet.getElementById("dvAddress")=="")&&(documnet.getElementById("dvPincode")=="") ) )
//   			{//"dvAddress" "dvPincode"
//   			address  = documnet.getElementById("dvAddress") + documnet.getElementById("dvPincode");
//   			alert(address);
//   			return false;
//   			}
// 		else
// 			{
// 			alert("  .uAddress Checkbox is checked.");
//             address = $('input:hidden[name=shipping]').val();
//             address("addres : "+address);
//             alert(address);
//             return false;
// 			}
  		
// 		}

		$(document).ready(function(){
			
			$( "form" ).submit(function( event ) {
									
					
					          
             var orderid = $('input:hidden[name=ORDER_ID]').val();
    		alert(orderid);
    		var amt = $('input:hidden[name=TXN_AMOUNT]').val();
    		alert(amt);
    		var uid = $('input:hidden[name=userid]').val();
    		alert(uid);
    		var nop = $('input:hidden[name=products]').val();
    		alert(nop);
    		var radioValue = $("input[name='testrb']:checked").val();
    		alert("radioValue : "+radioValue);
			
			var address = $('input:hidden[name=shipping]').val();
            alert("addres : "+address);
            alert(address);
    		
    		
    		$.get('OrderShippingServlet', {
               saddress  : address,
               orderId : orderid,
               amount : amt,
               userId : uid,
               items : nop,
               ptype : radioValue
        }, function(responseText) {
                //$('#OrderShippingServlet').text(responseText);
                
        });	
			});
			
		});
	</script>
</body>
</html>