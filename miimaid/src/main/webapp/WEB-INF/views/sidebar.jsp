<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.mii.model.Maid"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% if(session.getAttribute("maid")==null)
	response.sendRedirect("error");%> 
<div class="sidebar" data-active-color="rose" data-background-color="black" data-image="/MII_Maid/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/sidebar-1.jpg">
    <center>
    <div class="logo">
            <a href="/miimaid/home.jsp" class="simple-text logo-mini">
             <img src="/miimaid/resources/img/maid.png" style="height:55px; width:40px; margin-left:-5px; margin-top:-10px">
        </a>

        <a href="/miimaid/home.jsp" class="simple-text logo-normal">
        	<!-- <img src="/miimaid/logo.png" style="height:100px; width:100px; margin-left:-20px"><br>
        	--><img src="/miimaid/resources/img/text.png" style="height:100px; width:230px; margin-left:-25px; margin-top:-35px; margin-bottom:-30px">  
         
         </a>

    </div>
</center>
    <div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
                 <% if(session.getAttribute("maid")==null){%> 
                	<img src="/miimaid/resources/img/faces/avatar.jpg" />
                <% }else{ %>
                <img src="/miimaid/resources/images/profilePicture/${maid.profilePicture}" />
                <% } %>
            </div>
            <div class="info">
                <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                    <span>
                   	<% Maid maid = (Maid)session.getAttribute("maid"); %> 
                         <% out.println(maid.getName()); %>  
                         <b class="caret"></b>
                    </span>
                </a>

                <div class="clearfix"></div>
                <div class="collapse" id="collapseExample">
                    <ul class="nav">
                        <li>
                            <a href="/miimaid/maid/viewMaid">
                                <span class="sidebar-mini"> MP </span>
                                <span class="sidebar-normal"> My Profile </span>
                            </a>
                        </li>
                        <li>
                            <a href="/miimaid/maid/editMaid">
                                <span class="sidebar-mini"> EP </span>
                                <span class="sidebar-normal"> Edit Profile </span>
                            </a>
                        </li>
                        <li>
                           <a href="/miimaid/maid/changePassword">
                                <span class="sidebar-mini"> CP </span>
                                <span class="sidebar-normal"> Change Password </span>
                            </a>
                        </li>
                        <li>
                           <a href="/miimaid/maid/changeAvailability">
                                <span class="sidebar-mini"> CA </span>
                                <span class="sidebar-normal"> Change Availability </span>
                            </a>
                        </li>
                         <li>
                            <a href="/miimaid/maid/deleteMaid">
                                <span class="sidebar-mini"> DP </span>
                                <span class="sidebar-normal"> Delete Profile </span>
                            </a>
                        </li>
                        <li>
                            <a href="/miimaid/maid/login">
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
                <a href="/miimaid/maid/home">
                    <i class="material-icons">dashboard</i>
                    <p> Dashboard </p>
                </a>
            </li>
            
            <li>
                <a href="/miimaid/booking/bookingList">
                    <i class="material-icons">format_list_bulleted</i>
                    <p> Manage Bookings </p>
                </a>
            </li>
				
			 <li>
                <a href="#">
                    <i class="material-icons">content_paste</i>
                    <p> Generate Passbook </p>
                </a>
            </li> 
			
			<li>
                <a href="#">
                    <i class="material-icons">date_range</i>
                    <p> Calendar </p>
                </a>
            </li> 
			
			
            <li>
                <a href="/miimaid/maid/faq">
                    <i class="material-icons">apps</i>
                    <p> FAQ </p>
                </a>
            </li>
            
        </ul>
    </div>
</div>

</body>
</html>