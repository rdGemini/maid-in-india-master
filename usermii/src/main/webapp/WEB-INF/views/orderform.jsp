<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
		<% if(session.getAttribute("user")==null)
	response.sendRedirect("login");%>
	<main class="page-main"  style="background-image:url('/usermii/resources/images/bedroom-cleaningres2.jpg'); background-repeat: no-repeat;background-attachment: fixed; background-size: 100% 100%">
		<!-- Breadcrumbs Block -->
		<div class="block breadcrumbs">
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="home.jsp">Home</a></li>
					<li>Select a service</li>
				</ul>
			</div>
		</div>
		
		 <div class="block">
			<div class="container">
				<h2 class="text-center h-lg h-decor">Select a Service</h2>
				<div class="text-center max-750">
					<p class="p-lg">Let us use our years of experience, skilled employees, and advanced procedures to ensure a clean and healthy environment for your employees, customers and guests.</p>
				</div>
				<div class="row services-carousel" style="color: #fff;">
				<c:forEach items="${services}" var="service">
					<div class="col-sm-2 col-lg-4" style="height:50%">
						<div class="service-card">
							<div class="service-card-icon"><i class="${service.icon}"></i></div>
							<h5 class="service-card-title">${service.name}</h5>
							<a href="/usermii/user/residentialform" class="btn btn-border">Next</a>
						</div>
					</div>
					</c:forEach>
					
					
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