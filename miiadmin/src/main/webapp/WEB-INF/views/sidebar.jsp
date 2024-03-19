<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.mii.model.Admin"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% if(session.getAttribute("admin")==null)
	response.sendRedirect("error");%> 
	  
<div class="sidebar" data-active-color="rose" data-background-color="black" data-image="/miiadmin/resources/img/sidebar-1.jpg">
    <center>
    <div class="logo">
        <a href="/miiadmin/admin/home" class="simple-text logo-mini">
             <img src="/miiadmin/resources/img/maid.png" style="height:55px; width:40px; margin-left:-5px; margin-top:-10px">
        </a>

        <a href="/miiadmin/admin/home" class="simple-text logo-normal">
        	<!-- <img src="/miiadmin/logo.png" style="height:100px; width:100px; margin-left:-20px"><br>
        	--><img src="/miiadmin/resources/img/text.png" style="height:100px; width:230px; margin-left:-25px; margin-top:-35px; margin-bottom:-30px">  
         
         </a>
    </div>
</center>
    <div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
            	<% if(session.getAttribute("admin")==null){%> 
                	<img src="/miiadmin/resources/img/faces/avatar.jpg" />
                <% }else{ %>
                <img src="/miiadmin/resources/images/profilePicture/${admin.profilePicture}" />
                <% } %>
            </div>
            <div class="info">
                <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                    <span>
                     	<% Admin admin = (Admin)session.getAttribute("admin"); %> 
                         <% out.println(admin.getName()); %>  
                         <b class="caret"></b>
                    </span>
                </a>
                <div class="clearfix"></div>
                <div class="collapse" id="collapseExample">
                    <ul class="nav">
                        <li>
                            <a href="/miiadmin/admin/viewProfile">
                                <span class="sidebar-mini"> MP </span>
                                <span class="sidebar-normal"> My Profile </span>
                            </a>
                        </li>
                        <li>
                            <a href="/miiadmin/admin/editAdmin">
                                <span class="sidebar-mini"> EP </span>
                                <span class="sidebar-normal"> Edit Profile </span>
                            </a>
                        </li>
                        <li>
                            <a href="/miiadmin/admin/registerAdmin">
                                <span class="sidebar-mini"> AA </span>
                                <span class="sidebar-normal"> Add Admin </span>
                            </a>
                        </li>
                        <li>
                            <a href="/miiadmin/admin/adminList">
                                <span class="sidebar-mini"> MA </span>
                                <span class="sidebar-normal"> Manage Admin </span>
                            </a>
                        </li>
                        <li>
                            <a href="/miiadmin/admin/changePassword">
                                <span class="sidebar-mini"> CP </span>
                                <span class="sidebar-normal"> Change Password </span>
                            </a>
                        </li>
                        <li>
                            <a href="/miiadmin/admin/login">
                                <span class="sidebar-mini"> LO </span>
                                <span class="sidebar-normal"> Logout </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <ul class="nav">

            <li>
                <a href="/miiadmin/admin/home">
                    <i class="material-icons">dashboard</i>
                    <p> Dashboard </p>
                </a>
            </li>
            
            <li>
                <a data-toggle="" href="/miiadmin/agency/agencyList">
                    <i class="material-icons">format_list_bulleted</i>
                    <p> Manage Agency </p>
                </a>
            </li>

            <li>
                <a data-toggle="" href="/miiadmin/maid/maidList">
                    <i class="material-icons">format_list_bulleted</i>
                    <p> Manage Maid </p>
                </a>
            </li>

            <li>
                <a  href="/miiadmin/user/userList">
                    <i class="material-icons">format_list_bulleted</i>
                    <p> Manage User 
                    </p>
                </a>
            </li>

            <li>
                <a data-toggle="" href="/miiadmin/booking/bookingList">
                    <i class="material-icons">format_list_bulleted</i>
                    <p> Manage Bookings 
                    </p>
                </a>
            </li>

            <li>
                <a data-toggle="" href="#">
                    <i class="material-icons">format_list_bulleted</i>
                    <p> Manage Payments 
                    </p>
                </a>
            </li>

            <li>
                <a href="#">
                    <i class="material-icons">payment</i>
                    <p> Pay To Maid </p>
                </a>
            </li>

            <li>
                <a href="#">
                    <i class="material-icons">payment</i>
                    <p> Pay To Agency </p>
                </a>
            </li>

            <li>
                <a href="#">
                    <i class="material-icons">content_paste</i>
                    <p> Generate Reports </p>
                </a>
            </li>
            
            <li>
                <a href="/miiadmin/admin/faq">
                    <i class="material-icons">apps</i>
                    <p> FAQ </p>
                </a>
            </li>
            
        </ul>
    </div>
</div>

</body>
</html>