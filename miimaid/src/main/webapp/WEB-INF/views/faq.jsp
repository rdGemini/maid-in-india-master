<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/forms/validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:45 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
	<%@include file="head.jsp" %>
</head>
<body >
  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->

	<div class="wrapper">
    <!--
        Tip 1: You can change the color of active element of the sidebar using: data-active-color="purple | blue | green | orange | red | rose"
        Tip 2: you can also add an image using data-image tag
        Tip 3: you can change the color of the sidebar with data-background-color="white | black"
    -->
    <%@include file = "sidebar.jsp" %>
	<div class="main-panel">
	<%@include file = "header.jsp" %>
				<div class="content">
					<div class="container-fluid">
					 	    <div class="header text-center">
        <h3 class="title" >FAQs</h3>
        
    </div>
    <div class="row" style="margin-top:-30px">
    <div class="col-md-6" style="margin-left:23.5%">
        <ul class="timeline timeline-simple">
		    <li class="timeline-inverted">
		    	
		        <div class="timeline-badge warning">
		        <a href="../user/viewuser.jsp" style="color:white">
		        	<i class="material-icons">person</i></a>
			    </div>
		    	<div class="timeline-panel">
			        <div class="timeline-heading">
			        	<a href="../user/viewuser.jsp" style="color:white">
			        	<span class="label label-warning">User Name</span></a>
			        </div>
			        <div class="timeline-body">
			        	<h3>Q : How are you ?</h3>
			        	<form>
			        	<input type="text" class="form-control">
			        	<button type="submit" class="btn btn-rose btn-fill" style="background-color:#ff9800">Submit</button>
			        	<button type="submit" class="btn btn-rose btn-fill" style="background-color:#ff9800; margin-left:57%">Next</button>
			        	</form>
			        </div>
					
		    	</div>
		    </li>
		    		</ul>
    </div>
       <div class="col-md-6">
        <ul class="timeline timeline-simple">
		    <li class="timeline-inverted">
		        <div class="timeline-badge danger">
		        	<a href="../user/viewuser.jsp" style="color:white">
					<i class="material-icons">person</i></a>
			    </div>
		    	<div class="timeline-panel">
			        <div class="timeline-heading">
			        	<a href="../user/viewuser.jsp" style="color:white">
			        	<span class="label label-danger">User Name</span></a>
			        </div>
			        <div class="timeline-body">
			        	<h3>Q : What services do you offer?</h3>
			        	<h4>We offer a range of services from weekly cleaning to one-time cleaning to move-in and move-out cleaning. You can see the different services by visiting the front page and clicking on the "Services" button halfway down the page.</h4>
			        </div>
					</div>
		    </li>
		    <li class="timeline-inverted">
		        <div class="timeline-badge success">
		        	<a href="../user/viewuser.jsp" style="color:white">
				    <i class="material-icons">person</i></a>
			    </div>
		    	<div class="timeline-panel">
			        <div class="timeline-heading">
			        	<a href="../user/viewuser.jsp" style="color:white">
			          <span class="label label-success">User Name</span></a>
			        </div>
			        <div class="timeline-body">
			            <h3>Q : How can I get a quote?</h3>
			        	<h4>Simply visit the signup flow to book a cleaning and as you provide information about your house and schedule, your quote will dynamically adjust.</h4></div>
		      	</div>
		    </li>
		    <li class="timeline-inverted">
		    	<div class="timeline-badge info">
		    		<a href="../user/viewuser.jsp" style="color:white">
				    <i class="material-icons">person</i></a>
				</div>
		    	<div class="timeline-panel">
			        <div class="timeline-heading">
			        	<a href="../user/viewuser.jsp" style="color:white">
			          <span class="label label-info">User Name</span></a>
			        </div>
		        	<div class="timeline-body">
						<h3>Q : Am I charged the full quoted amount even if it doesn't take that long to clean my house?</h3>
			        	<h4>No, you're only charged based on the amount of time your cleaner was actually at your home working. If they finish early, you aren't charged the full amount quoted.</h4>
		        	</div>
		    	</div>
		    </li>
		</ul>
    </div>
    <div class="col-md-6">
        <ul class="timeline timeline-simple">
		    <li class="timeline-inverted">
		        <div class="timeline-badge danger">
		        	<a href="../user/viewuser.jsp" style="color:white">
					<i class="material-icons">person</i></a>
			    </div>
		    	<div class="timeline-panel">
			        <div class="timeline-heading">
			        	<a href="../user/viewuser.jsp" style="color:white">
			        	<span class="label label-danger">User Name</span></a>
			        </div>
			        <div class="timeline-body">
			        	<h3>Q : Does someone have to visit my house before I can book a cleaning?</h3>
			        	<h4>Absolutely not! We wouldn't want pushy sales people coming to our house so we would never do that to you. You can get a quote and book your cleaning online. It takes about one minute.</h4></div>
		    	</div>
		    </li>
		    <li class="timeline-inverted">
		        <div class="timeline-badge success">
		        	<a href="../user/viewuser.jsp" style="color:white">
				    <i class="material-icons">person</i></a>
			    </div>
		    	<div class="timeline-panel">
			        <div class="timeline-heading">
			        	<a href="../user/viewuser.jsp" style="color:white">
			          <span class="label label-success">User Name</span></a>
			        </div>
			        <div class="timeline-body">
			            <h3>Q : What if I'm not happy with my cleaning?</h3>
			        	<h4>Please get in touch with us right away and we'll make arrangements to rectify the situation. We have a satisfaction guarantee that we stand by.</h4></div>
		      	</div>
		    </li>
		    <li class="timeline-inverted">
		    	<div class="timeline-badge info">
		    		<a href="../user/viewuser.jsp" style="color:white">
				    <i class="material-icons">person</i></a>
				</div>
		    	<div class="timeline-panel">
			        <div class="timeline-heading">
			        	<a href="../user/viewuser.jsp" style="color:white">
			          <span class="label label-info">User Name</span></a>
			        </div>
		        	<div class="timeline-body">
						<h3>Q : What's included in a standard cleaning?</h3>
			        	<h4>Here's a listing of what gets cleaned in every room of your house during a standard cleaning. You can also request extra items via your customer dashboard.</h4>
		        	</div>
		    	</div>
		    </li>
		</ul>
    </div>
    </div>

					</div>
				</div>
  		<%@include file = "footer.jsp" %>
	</div>
</body>
	<!--   Core JS Files   -->
	<%@include file = "corejsfiles.jsp" %>
</html>
    