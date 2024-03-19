<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/tables/extended.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:46 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
	<%@include file = "../../head.jsp" %>
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

    <%@include file = "../../sidebar.jsp" %>
	    <div class="main-panel">
	<%@include file = "../../header.jsp" %>
			
			
				<div class="content">
					<div class="container-fluid">
					 	    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header card-header-icon" data-background-color="rose">
                    <i class="material-icons">assignment</i>
                </div>
                <div class="card-content">
                    <h4 class="card-title">Payment</h4>    
                    <div class="table-responsive">
                    <form class="navbar-form navbar-left" role="search" style="margin-left:37%; margin-top:-2%">
                <div class="form-group form-search is-empty">
                    <input type="text" class="form-control" placeholder=" Search by ID " style="width:300px">
                    <span class="material-input"></span>
                <span class="material-input"></span></div>
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                    <i class="material-icons">search</i><div class="ripple-container"></div>
                </button></form>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center">1</th>
                                    <th><a href="#.jsp" style="color:black">Payment ID</a></th>
                                    <th style="color:#ec407a">Status</th>
                                    <td class="td-actions text-right">
                                    	<a href="#.jsp">
                                        <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="View">
                                            <i class="material-icons">art_track</i>
                                        </button></a>
                                        <a href="#" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove">
                                        <i class="material-icons">close</i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="text-center">2</th>
                                    <th><a href="#.jsp" style="color:black">Payment ID</a></th>
                                    <th style="color:#ec407a">Status</th>
                                    <td class="td-actions text-right">
                                    	<a href="#.jsp">
                                        <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="View">
                                            <i class="material-icons">art_track</i>
                                        </button></a>
                                        <a href="#" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove">
                                        <i class="material-icons">close</i></a>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th class="text-center">3</th>
                                    <th><a href="#.jsp" style="color:black">Payment ID</a></th>
                                    <th style="color:#ec407a">Status</th>
                                    <td class="td-actions text-right">
                                    	<a href="#.jsp">
                                        <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="View">
                                            <i class="material-icons">art_track</i>
                                        </button></a>
                                        <a href="#" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove">
                                        <i class="material-icons">close</i></a>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th class="text-center">4</th>
                                    <th><a href="#.jsp" style="color:black">Payment ID</a></th>
                                    <th style="color:#ec407a">Status</th>
                                    <td class="td-actions text-right">
                                    	<a href="#.jsp">
                                        <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="View">
                                            <i class="material-icons">art_track</i>
                                        </button></a>
                                        <a href="#" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove">
                                        <i class="material-icons">close</i></a>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th class="text-center">5</th>
                                    <th><a href="#.jsp" style="color:black">Payment ID</a></th>
                                    <th style="color:#ec407a">Status</th>
                                    <td class="td-actions text-right">
                                    	<a href="#.jsp">
                                        <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="View">
                                            <i class="material-icons">art_track</i>
                                        </button></a>
                                        <a href="#" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove">
                                        <i class="material-icons">close</i></a>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th class="text-center">6</th>
                                    <th><a href="#.jsp" style="color:black">Payment ID</a></th>
                                    <th style="color:#ec407a">Status</th>
                                    <td class="td-actions text-right" style="border-bottom:1px solid #ddd">
                                    	<a href="#.jsp">
                                        <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="View">
                                            <i class="material-icons">art_track</i>
                                        </button></a>
                                        
                                        <a href="#" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove">
                                        <i class="material-icons">close</i></a>
                                    </td>
                                </tr>
                                
                            </thead>
                            
                        </table>
                        
                    </div>
                </div>
            </div>
        </div>
        
			<%@include file = "../../footer.jsp" %>
		</div>
	</div>
</body>
	<!--   Core JS Files   -->
	<%@include file = "../../corejsfiles.jsp" %>
</html>
