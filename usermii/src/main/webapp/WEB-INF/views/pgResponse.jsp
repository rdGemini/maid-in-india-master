<%@page import="com.safetyequipment.util.PaytmConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.util.*,com.paytm.pg.merchant.CheckSumServiceHelper"%>
<%
	Enumeration<String> paramNames = request.getParameterNames();
	String str = new String("");
	Map<String, String[]> mapData = request.getParameterMap();
	TreeMap<String, String> parameters = new TreeMap<String, String>();
	String paytmChecksum = "";
	while (paramNames.hasMoreElements()) {
		String paramName = (String) paramNames.nextElement();
		if (paramName.equals("CHECKSUMHASH")) {
			paytmChecksum = mapData.get(paramName)[0];
		} else {
			parameters.put(paramName, mapData.get(paramName)[0]);
		}
	}
	boolean isValideChecksum = false;
	String outputHTML = "";
	try {
		isValideChecksum = CheckSumServiceHelper.getCheckSumServiceHelper()
				.verifycheckSum(PaytmConstants.MERCHANT_KEY, parameters, paytmChecksum);
		if (isValideChecksum && parameters.containsKey("RESPCODE")) {
			if (parameters.get("RESPCODE").equals("01")) {
				outputHTML = parameters.toString();

				System.out.println(outputHTML);
			} else {
				outputHTML = "<b>Payment Failed.</b>";
			}
		} else {
			outputHTML = "<b>Checksum mismatched.</b>";
		}
	} catch (Exception e) {
		outputHTML = e.toString();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form id="pgresponse" name="pgresponse">
		<p id="paymentDet"><%=outputHTML%></p>
		<%
			System.out.println("length : " + outputHTML.length());
		%>
		<%
			for (int i = 1; i < outputHTML.length() - 1; i++) {
				str += outputHTML.charAt(i);
		%>
		<%
			}
			System.out.println("str : " + str);
		%>
		<%
			String str1[] = str.split(",");
		%>
		<table border="1" style="color: green;" id="resonseTable">
			<caption>Payment Details</caption>
			<%
				for (int j = 0; j < str1.length; j++) {
			%>
			<%
				System.out.println("str1[" + j + "] : " + str1[j]);
			%>
			<tr>
				<%
					String values[] = str1[j].split("=");
				%>
				<td><%=values[0]%></td>
				<td><%=values[1]%></td>
				<input type="hidden" name="<%=values[0].trim()%>" id="<%=values[0].trim()%>"
					value="<%=values[1].trim()%>">
			</tr>
			<%
				}
			%>
		</table>
	</form>
	<script src="plugins/jQuery/jquery.min.js"></script>
	<script type="text/javascript">
		// $("form").load(function() {
		// 			$.get('PaymentServlet', 
		// 				var outputhtml = document.getElementById("paymentDet").textContent;
		// 			}, function(responseText) {
		// 				$('#PaymentServlet').text(responseText);
		// 			});
		// });

		// $("form").load(function() {
		// 	alert("alert called in pgresponse");
		// 	var outputHtml = document.getElementById("paymentDet").textContent;
		// 	alert(outputHtml);
		// 	$.get('PaymentServlet', {
		// 		outputhtml : outputHtml
		// 	}, function(responseText) {
		// 		$('#PaymentServlet').text(responseText);
		// 	});
		// });

		$(window).on('load', function() {

			// 			 $('#resonseTable').find('tr').each(function (i, el) {
			// 			        var $tds = $(this).find('td'),
			// 			        KEY = $tds.eq(0).text(),
			// 		            VALUE = $tds.eq(1).text();

			// 			        alert(KEY);
			// 			        alert(VALUE);
			// 			        // do something with productId, product, Quantity
			// 			    });

			var bankName = $('input:hidden[name=BANKNAME]').val();
			//alert(bankName);

			var bankTxnId = $('input:hidden[name=BANKTXNID]').val();
			//alert(bankTxnId);

			var currenCy = $('input:hidden[name=CURRENCY]').val();
			//alert(currenCy);

			var getwayName = $('input:hidden[name=GATEWAYNAME]').val();
			//alert(getwayName);

			var merchantId = $('input:hidden[name=MID]').val();
			//alert(merchantId);

			var orderId = $('input:hidden[name=ORDERID]').val();
			//alert(orderId);

			var paymentMode = $('input:hidden[name=PAYMENTMODE]').val();
			//alert(paymentMode);

			var responseCode = $('input:hidden[name=RESPCODE]').val();
			//alert(responseCode);

			var responseMsg = $('input:hidden[name=RESPMSG]').val();
			//alert(responseMsg);

			var staTus = $('input:hidden[name=STATUS]').val();
			//alert(staTus);

			var txnAmt = $('input:hidden[name=TXNAMOUNT]').val();
			//alert(txnAmt);

			var txnId = $('input:hidden[name=TXNID]').val();
			//alert(txnId);

			$.get('PaymentServlet', {
				bankname : bankName,
				banktxnid : bankTxnId,
				currency : currenCy,
				gatewayname : getwayName,
				merchantid : merchantId,
				orderid : orderId,
				paymentmode : paymentMode,
				responsecode : responseCode,
				responsemsg : responseMsg,
				status : staTus,
				txnamount : txnAmt,
				txnid : txnId				
			}, function(responseText) {
				$('#PaymentServlet').text(responseText);
			});

			// code here
		});

		// 		$(document).ready(function() {
		// 				$("form").load(function() {
		// 					alert("called");
		// 						var outputHtml = document.getElementById("paymentDet").textContent;
		// 							$.get('PaymentServlet', {
		// 								outputhtml : outputHtml
		// 						}, function(responseText) {
		// 							 $('#PaymentServlet').text(responseText);
		// 					});
		// 				});
		// 	 	});
	</script>
</body>
</html>