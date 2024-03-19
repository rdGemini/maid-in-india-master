<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.mii.model.Agency"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% if(session.getAttribute("agency")==null)
	response.sendRedirect("error");%> 
<div class="sidebar" data-active-color="rose" data-background-color="black" data-image="/miiagency/resources/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/sidebar-1.jpg">
    <center>
    <div class="logo">
        <a href="/miiagency/agency/home" class="simple-text logo-mini">
             <img src="/miiagency/resources/img/maid.png" style="height:55px; width:40px; margin-left:-5px; margin-top:-10px">
        </a>

        <a href="/miiagency/agency/home" class="simple-text logo-normal">
        	<!-- <img src="/MII_Admin/logo.png" style="height:100px; width:100px; margin-left:-20px"><br>
        	--><img src="/miiagency/resources/img/text.png" style="height:100px; width:230px; margin-left:-25px; margin-top:-35px; margin-bottom:-30px">  
         
         </a>
    </div>
</center>
    <div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
                <i class="material-icons" style="color:white; text-align: center;">person</i>
            </div>
            <div class="info">
                <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                    <span>
                         <% Agency agency = (Agency)session.getAttribute("agency"); %> 
                         <% out.println(agency.getName()); %>  
                        <b class="caret"></b>
                    </span>
                </a>
                <div class="clearfix"></div>
                <div class="collapse" id="collapseExample">
                    <ul class="nav">
                        <li>
                            <a href="/miiagency/agency/viewAgency">
                                <span class="sidebar-mini"> MP </span>
                                <span class="sidebar-normal"> My Profile </span>
                            </a>
                        </li>
                        <li>
                            <a href="/miiagency/agency/editAgency">
                                <span class="sidebar-mini"> EP </span>
                                <span class="sidebar-normal"> Edit Profile </span>
                            </a>
                        </li>
                        <li>
                            <a href="/miiagency/agency/changePassword">
                                <span class="sidebar-mini"> CP </span>
                                <span class="sidebar-normal"> Change Password </span>
                            </a>
                        </li>
                         <li>
                            <a href="/miiagency/agency/deleteAgency">
                                <span class="sidebar-mini"> CP </span>
                                <span class="sidebar-normal"> Delete Profile </span>
                            </a>
                        </li>
                        <li>
                            <a href="/miiagency/agency/login">
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
                <a href="/miiagency/agency/home">
                    <i class="material-icons">dashboard</i>
                    <p> Dashboard </p>
                </a>
            </li>
            
            <li>
                <a data-toggle="" href="/miiagency/maid/maidList">
                    <i class="material-icons">format_list_bulleted</i>
                    <p> Manage Maid </p>
                </a>
            </li>

            <li>
                <a data-toggle="" href="/miiagency/booking/bookingList">
                    <i class="material-icons">format_list_bulleted</i>
                    <p> Manage Bookings 
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
                    <i class="material-icons">content_paste</i>
                    <p> Generate Cashbook </p>
                </a>
            </li>
            
            <li>
                <a href="/miiagency/agency/faq">
                    <i class="material-icons">apps</i>
                    <p> FAQ </p>
                </a>
            </li>
            
        </ul>
    </div>
</div>

</body>
</html>