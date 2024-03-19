<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/tables/extended.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:46 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
	<%@include file = "head.jsp" %>
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
					 	    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header card-header-icon" data-background-color="rose">
                    <i class="material-icons">assignment</i>
                </div>
                <div class="card-content">
                    <h4 class="card-title">User</h4>  
                    <div class="material-datatables">
                        <div id="datatables_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                        <div class="row"><div class="col-sm-6">
                        <div class="dataTables_length" id="datatables_length">
                        <label class="form-group form-group-sm">Show 
                        <select name="datatables_length" aria-controls="datatables" class="form-control">
                        <option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="-1">All</option>
                        </select> entries
                        <span class="material-input"></span></label></div></div>
                        <div class="col-sm-6"><div id="datatables_filter" class="dataTables_filter"><label class="form-group form-group-sm is-empty">
                        <input type="search" class="form-control" placeholder="Search records" aria-controls="datatables"><span class="material-input"></span></label></div></div></div><div class="row"><div class="col-sm-12"><table id="datatables" class="table table-striped table-no-bordered table-hover dataTable dtr-inline" cellspacing="0" width="100%" style="width: 100%;" role="grid" aria-describedby="datatables_info">
                            <thead>
                                <tr role="row">
                                <th class="sorting_asc" tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">Name</th>
                                <th class="sorting" tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-label="Position: activate to sort column ascending">EmailID</th>
                                <th class="sorting" tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 150px;" aria-label="Office: activate to sort column ascending">Contact No</th>
                                </tr>
                            </thead>
                            <!-- <tfoot>
                                <tr><th rowspan="1" colspan="1">Name</th>
                                <th rowspan="1" colspan="1">EmailID</th>
                                <th rowspan="1" colspan="1">Contact No</th>
                                </tr>
                            </tfoot> -->
                            <tbody>
                            <c:forEach items="${users}" var="user">
                            <tr role="row" class="odd">
                                    <td tabindex="0" class="sorting_1">${user.name}</td>
                                    <td>${user.emailId}</td>
                                    <td>${user.phoneNo}</td>
                                    <td class="td-actions text-right">
                                    	<a href="/miiadmin/user/viewUser/${user.userId}">
                                        <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="View">
                                            <i class="material-icons">person</i>
                                        </button></a>
                                    	<a href="/miiadmin/user/deleteUser/${user.userId}">
                                        <button type="button" rel="tooltip" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove" onclick="demo.showSwal('delete-message')">
                                            <i class="material-icons">close</i>
                                        </button></a>
                                        
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                        </table></div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="datatables_info" role="status" aria-live="polite">Showing 1 to 10 of 40 entries</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_full_numbers" id="datatables_paginate"><ul class="pagination"><li class="paginate_button first disabled" id="datatables_first"><a href="#" aria-controls="datatables" data-dt-idx="0" tabindex="0">First</a></li><li class="paginate_button previous disabled" id="datatables_previous"><a href="#" aria-controls="datatables" data-dt-idx="1" tabindex="0">Previous</a></li><li class="paginate_button active"><a href="#" aria-controls="datatables" data-dt-idx="2" tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="datatables" data-dt-idx="3" tabindex="0">2</a></li><li class="paginate_button "><a href="#" aria-controls="datatables" data-dt-idx="4" tabindex="0">3</a></li><li class="paginate_button "><a href="#" aria-controls="datatables" data-dt-idx="5" tabindex="0">4</a></li><li class="paginate_button next" id="datatables_next"><a href="#" aria-controls="datatables" data-dt-idx="6" tabindex="0">Next</a></li><li class="paginate_button last" id="datatables_last"><a href="#" aria-controls="datatables" data-dt-idx="7" tabindex="0">Last</a></li></ul></div></div></div></div>
                    </div>
            
                    <!-- <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center">1</th>
                                    <th><a href="viewuser.jsp" style="color:black">User Name</a></th>
                                    <td class="td-actions text-right">
                                    	<a href="viewuser.jsp">
                                        <button type="button" rel="tooltip" class="btn btn-info btn-simple" rel="tooltip" data-placement="bottom" title="View">
                                            <i class="material-icons">person</i>
                                        </button></a>
                                        <a href="#" class="btn btn-simple btn-danger btn-icon remove" rel="tooltip" data-placement="bottom" title="Remove">
                                        <i class="material-icons">close</i></a>
                                    </td>
                                </tr>                                
                            </thead>
                            
                        </table>
                        
                    </div> -->
                </div>
            </div>
        </div>
        
			<%@include file = "footer.jsp" %>
		</div>
	</div>
</body>
	<!--   Core JS Files   -->
	<%@include file = "corejsfiles.jsp" %>
</html>
