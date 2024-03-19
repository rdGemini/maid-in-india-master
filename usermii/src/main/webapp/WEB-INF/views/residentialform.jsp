<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
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
	<main class="page-main">
		<!-- Breadcrumbs Block -->
		<div class="block breadcrumbs">
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="home.jsp">Home</a></li>
					<li>Residential Cleaning</li>
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
								<%if(request.getParameter("errorMsg") != null){ %>
                                <div style="color: red;margin-left:180px"><%= request.getParameter("errorMsg") %></div>
                                <%} %>
								
							<form:form id="" action="/usermii/user/findMaid" method="post"  modelAttribute="booking" enctype="multipart/form-data">
								<h3>Book your cleaning service</h3>
								<div class="divider-line"></div>
								
								<h5>Home Information</h5>
								
								<!-- <p>Select residence</p>
								<div class="label-box-wrap">
									<div>
										<input type="radio" name="often" id="radio1" value="ones" checked>
										<label for="radio1"><b>Flat</b></label>
									</div>
									<div>
										<input type="radio" name="often" id="radio2" value="weekly">
										<label for="radio2"><b>Bungalow</b></label>
									</div>
									<div>
										<input type="radio" name="often" id="radio3" value="2 week">
										<label for="radio3"><b>Independent House</b></label>
									</div>
								</div>
								 <div class="divider"></div> -->
								<!-- <div class="divider-line"></div>  -->
								<p>Tell us about your home and family</p>
								<p>How many Bedrooms ? &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; How many members ?</p>
								<div class="row">
									<div class="col-sm-6">
										<div class="qty-count qty-count--order">
											<span class="count-reduce">-</span>
											<form:input type="text" path="bedrooms" class="count-input" value="2" name="bedrooms" />
											<span class="count-add">+</span>
										</div>
										<div class="text-center input-comment" style="margin-top:9px">(Store-room & kitchen not included)</div>
									</div>
									<div class="col-sm-6">
										<div class="qty-count qty-count--order">
											<span class="count-reduce">-</span>
											<form:input type="text" path="members" class="count-input" value="2" name="members" />
											<span class="count-add">+</span>
										</div>
										<!-- <div class="text-center input-comment" style="margin-top:9px">(Store-room & kitchen not included)</div> -->
									</div>
									
								</div>
								<div id="res">
								<div class="divider-line"></div>
								<h6>Service Requested</h6>
								<p>Select the services which you would like to book.</p>
								<div class="row">
									<div class="col-sm-6">
									<c:forEach items="${services}" var="s">
									 <form:checkbox class="removeLater" id="myCheck" path="selectedServices" value = "${s.serviceId}" name="selectedServices" checked=""/> ${s.name}   
										<p style="text-align:right; margin-top:-25px">&#8377; ${s.charges}</p>
									</c:forEach>
									<span class="material-input" id="errService" style="color:red;"></span>
									</div>
								</div>
								</div>

								<div class="divider-line"></div>
								
								<p>When would you like us to come? &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Start time &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;How many days ?</p>
								<span class="hidden-xs"></span>
								<div class="row">
									<div class="col-sm-4 col-md-5">
										<div class="">
											<form:input type="date" id="dateOfBooking" path="dateOfBooking" name="date" class="form-control input-custom input-custom--sm" min="2020-08-12" placeholder="" required="true"/>
										</div>
									</div>
									<!-- <div class="visible-xs text-center">
										<p>Any time between</p>
									</div> -->
									<div class="col-sm-8 col-md-7 text-center-xs">
										
										<div class="" style="width:45%;">
											<%-- <form:select name="startTime" path="startTime" class="input-custom input-custom--sm">
												<form:option value="8:00 AM" >8:00 AM</form:option>
												<form:option value="9:00 AM">9:00 AM</form:option>
											</form:select> --%>
											<form:input type="time" path="startTime" name="startTime" class="form-control input-custom input-custom--sm" placeholder="" required="true"/>
										</div>
										<div class="col-sm-7" style="margin-left:47%; margin-top:-15%">
										<div class="qty-count qty-count--order">
											<span class="count-reduce">-</span>
											<form:input type="text" path="noOfDays" class="count-input" value="2" name="days"/>
											<span class="count-add">+</span>
										</div></div>
									</div>
								</div>
								<div class="row">
								<div class="col-sm-10">
									<label style="margin-left:0%;color:#A9A9A9;">Gender Preference:</label>
										<form:radiobutton name="gender" path="genderPreference" value="Male" style="margin-left:1%;border:none; border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>  Male
										<form:radiobutton name="gender" path="genderPreference" value="Female" style="margin-left:1%;border:none; border-bottom: 1px solid #d7dbdf;border-radius: 0px;"/>  Female
										<form:radiobutton name="gender" path="genderPreference" value="No Preference" style="margin-left:1%;border:none; border-bottom: 1px solid #d7dbdf;border-radius: 0px;" checked="true"/> No Preference
								</div></div><br>
								<div class="row">
								<div class="col-sm-12">
									<label style="margin-left:0%;color:#A9A9A9;">Additional Note:</label>
										<form:input type="text" rows="3" cols="9" path="additionalNote" class="input-custom input-custom--sm input-full" name="additionalNote"/>	
										</div></div>
								<div class="divider"></div>
								<div class="divider-line"></div>
								 <h6>Your Location</h6>
								<p>This information will be used to locate you about your service.</p>
								<div class="row">
									<div class="col-sm-12">
										<form:input type="text" id="address" class="input-custom input-custom--sm input-full" name="address1" path="address1" placeholder="Address Line 1*" required="true"/>
									</div>
								</div>
								<div class="row">
								<div class="col-sm-12">
										<form:input type="text" id="address" class="input-custom input-custom--sm input-full" name="address2" path="address2" placeholder="Address Line 2*" required="true"/>
									</div>
								</div>
								<span class="material-input" id="errAddress" style="color:red;"></span>
								<div class="row">
									<div class="col-sm-6">
									<div class="select-wrapper select-wrapper--sm">
										<form:select name="cityId" path="cityId" title="Choose City" required="true" class="input-custom input-custom--sm collapsible">
											<form:option value="0" disabled="true">Choose City</form:option> 
											<c:forEach items="${cities}" var="c">
                         						<form:option value="${c.cityId}">${c.name}</form:option>  
                       						</c:forEach>
										</form:select>
										</div>
									</div>
									<div class="col-sm-6">
									<div class="select-wrapper select-wrapper--sm">
										<form:select id="areasByCity" name="areaId" path="areaId" title="Choose Area" required="true" class="input-custom input-custom--sm collapsible">
											<form:option value="0" disabled="true">Choose Area</form:option>
											<c:forEach items="${areas}" var="a">
                         						<form:option value="${a.areaId}">${a.name}</form:option>  
                       						</c:forEach>
										</form:select>
									</div>
									</div>
								</div>
								<span class="material-input" id="errCity" style="color:red;"></span>
								<div class="divider"></div>
								<div class="divider-line"></div>
								<p class="text-center">Thank you very much!</p>
								<div class="text-center">
									<button type="submit" class="btn btn-wide" onclick="madeAjaxCall(); checkButton();">BOOK NOW</button>
								</div>
								<div class="divider"></div>
								
							</form:form>
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
	<script type="text/javascript">
        $().ready(function(){
        	
        	
        	var checkboxes = document.getElementsByTagName('input');

        	for (var i=0; i<checkboxes.length; i++)  {
        	  if (checkboxes[i].type == 'checkbox')   {
        	    checkboxes[i].checked = false;
        	  }
        	}
        	
        	var today = new Date();
        	var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
        	//alert(date);
        	document.getElementById("dateOfBooking").min = "2020-08-18";
        	//document.getElementById("dateOfBooking").min = date; 
        });
    </script>
	<script type="text/javascript">
	$("#address").blur(function() 
			{
				var address = $("#address").val();
				if(address == "")
				{
					$("#errAddress").text("Please enter your address!!");
					document.getElementById("address").focus();
				}
				else
					$("#errAddress").text("");
				
				var checkboxes = document.getElementsByTagName('input');
				var flag=0;
		    	for (var i=0; i<checkboxes.length; i++)  {
		    	  if (checkboxes[i].type == 'checkbox')   {
		    		  if(checkboxes[i].checked == true)
		    			  {
		    			  	flag=0;
		    			  	break;
		    			  }
					   flag=1; 	    
		    	  }
		    	}
		    	if(flag==1)
		    	{
		    		$("#errService").text("Please select serivces!!");
		    		document.getElementById("myCheck").focus();
		    	}
				else
					$("#errService").text("");
	});
	function checkButton()
	{
		var checkboxes = document.getElementsByTagName('input');
		var flag=0;
    	for (var i=0; i<checkboxes.length; i++)  {
    	  if (checkboxes[i].type == 'checkbox')   {
    		  if(checkboxes[i].checked == true)
    			  {
    			  	flag=0;
    			  	break;
    			  }
			   flag=1; 	    
    	  }
    	}
    	if(flag==1)
    	{
    		$("#errService").text("Please select serivces!!");
    		document.getElementById("myCheck").focus();
    	}
		else
			$("#errService").text("");
		/* var x = document.getElementById("myCheck").checked;
		if(x==false)
			$("#errorMsg").text("Please select serivces!!");
		else
			$("#errorMsg").text(""); */
	}
  	$("#cityId").change(function() {
  		var cityId = $(this).val();
  		//alert("stateid : "+stateId);
  		/* if(cityId==0)
  		{
  			$("#errAddress").text("Please select your city!!");
			document.getElementById("address").focus();	
  		}
  		else
  			$("#errAddress").text(""); */
  	    $.ajax({
  	        type: 'GET',
  	        url: "/usermii/user/getAreas/" + cityId,
  	        success: function(data){
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
  	    });
	});
  
  </script> 
  <script type="text/javascript">

function madeAjaxCall(){

     var checkboxValues = [];
     $('input.removeLater:checked').map(function() {
                 checkboxValues.push($(this).val());
     });
     //alert(checkboxValues);
     var selectedServices = checkboxValues.toString();

    $.ajax({
        type: 'GET',
        url: "/usermii/user/getServices/" + checkboxValues,

        success: function(response){
        	//alert("success");
            /* $('#result').html("");
            var obj = JSON.parse(response);
            alert(response);
            $('#result').html(
                    "First Name:- " + obj.firstName 
              +"</br>Last Name:- " + obj.lastName  
              +"</br>Email:- " + obj.email 
              +"</br>Gender:- " + obj.gender 
              +"</br>Country:- " + obj.country
              +"</br>Fruit:-" + obj.fruit);
            document.forms["employeeForm"].reset(); */
        },

        error: function(){                      
            //alert('Error while request..');
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
