<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="sidebar" data-active-color="rose" data-background-color="black" data-image="/MII_Maid/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/sidebar-1.jpg">
    <center>
    <div class="logo">
         <a href="/MII_Maid/home.jsp" class="simple-text logo-mini">
             <img src="/MII_Maid/maid.png" style="height:55px; width:40px; margin-left:-5px; margin-top:-10px">
        </a>

        <a href="/MII_Maid/home.jsp" class="simple-text logo-normal">
        	<!-- <img src="/MII_Admin/logo.png" style="height:100px; width:100px; margin-left:-20px"><br>
        	--><img src="/MII_Maid/text.png" style="height:100px; width:230px; margin-left:-25px; margin-top:-35px; margin-bottom:-30px">  
         
         </a>
    </div>
</center>
    <div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
                <img src="/MII_Maid/demos.creative-tim.com/bs3/material-dashboard-pro/assets/img/faces/avatar.jpg" />
            </div>
            <div class="info">
                <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                    <span>
                         Tania Andrew 
                        <b class="caret"></b>
                    </span>
                </a>
                <div class="clearfix"></div>
                <div class="collapse" id="collapseExample">
                    <ul class="nav">
                        <li>
                            <a href="/MII_Maid/pages/maid/viewmaid.jsp">
                                <span class="sidebar-mini"> MP </span>
                                <span class="sidebar-normal"> My Profile </span>
                            </a>
                        </li>
                        <li>
                            <a href="/MII_Maid/pages/maid/editmaid.jsp">
                                <span class="sidebar-mini"> EP </span>
                                <span class="sidebar-normal"> Edit Profile </span>
                            </a>
                        </li>
                        <li>
                            <a href="/MII_Maid/pages/maid/editmaid.jsp">
                                <span class="sidebar-mini"> CP </span>
                                <span class="sidebar-normal"> Change Password </span>
                            </a>
                        </li>
                        <li>
                            <a href="/MII_Maid/pages/maid/editmaid.jsp">
                                <span class="sidebar-mini"> CA </span>
                                <span class="sidebar-normal"> Change Availibility </span>
                            </a>
                        </li>
                        <li>
                            <a href="/MII_Maid/login.jsp">
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
                <a href="/MII_Maid/home.jsp">
                    <i class="material-icons">dashboard</i>
                    <p> Dashboard </p>
                </a>
            </li>
            
            <li>
                <a data-toggle="" href="/MII_Maid/pages/booking/managebooking.jsp">
                    <i class="material-icons">format_list_bulleted</i>
                    <p> Manage Bookings 
                    </p>
                </a>
            </li>

            <li>
                <a href="#">
                    <i class="material-icons">content_paste</i>
                    <p> Generate Cashbook </p>
                </a>
            </li>
            
            <li>
                <a href="/MII_Maid/pages/calendar.jsp">
                    <i class="material-icons">date_range</i>
                    <p> Calendar </p>
                </a>
            </li>
            
            <li>
                <a href="/MII_Maid/pages/faq/faq.jsp">
                    <i class="material-icons">apps</i>
                    <p> FAQ </p>
                </a>
            </li>
            
        </ul>
    </div>
</div>

</body>
</html>