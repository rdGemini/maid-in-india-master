<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/pages/lock.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:41 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<%@include file = "head.jsp" %>
</head>

<body class="off-canvas-sidebar">
  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->
    <nav class="navbar navbar-primary navbar-transparent navbar-absolute">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href=" #pablo ">
            <img src="/miiadmin/maid.png" style="height:125px; width:100px; margin-top:-40px">
            <img src="/miiadmin/text.png" style="height:100px; width:230px; margin-left:70px; margin-top:-115px; margin-bottom:-30px">
            </a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="home.jsp">
                        <i class="material-icons">dashboard</i>
                        Dashboard
                    </a>
                </li>
                <li class= "">
                    <a href="login.jsp">
                        <i class="material-icons">fingerprint</i>
                        Login
                    </a>
                </li>
                <li class= " active ">
                    <a href="lock.jsp">
                        <i class="material-icons">lock_open</i>
                        Lock
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>


    <div class="wrapper wrapper-full-page">
            <div class="full-page lock-page" filter-color="black" data-image="/miiadmin/resources/img/lock.jpg">

    <!--   you can change the color of the filter page using: data-color="blue | green | orange | red | purple" -->

        <div class="content">
            <form method="#" action="home.jsp">
                <div class="card card-profile card-hidden">
                    <div class="card-avatar">
                        <a href="#pablo">
                            <img class="avatar" src="/miiadmin/resources/img/faces/avatar.jpg" alt="...">
                        </a>
                    </div>
                    <div class="card-content">
                        <h4 class="card-title">Tania Andrew</h4>
                        <div class="form-group label-floating">
                            <label class="control-label">Enter Password</label>
                            <input type="password" class="form-control">
                        </div>
                    </div>
                    <div class="card-footer">
                        <button type="button" class="btn btn-rose btn-round">Unlock</button>
                    </div>
                </div>
            </form>
        </div>

        <%@include file = "footer.jsp" %>
    </div>

    </div>
</body>

    
</body>

    <!--   Core JS Files   -->
   <script src="/miiadmin/resources/js/jquery.min.js" type="text/javascript"></script>
<script src="/miiadmin/resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/miiadmin/resources/js/material.min.js" type="text/javascript"></script>
<script src="/miiadmin/resources/js/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>

<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<script src="cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>

<!-- Library for adding dinamically elements -->
<script src="/miiadmin/resources/js/arrive.min.js" type="text/javascript"></script>

<!-- Forms Validations Plugin -->
<script src="/miiadmin/resources/js/jquery.validate.min.js"></script>

<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="/miiadmin/resources/js/moment.min.js"></script>

<!--  Charts Plugin, full documentation here: https://gionkunz.github.io/chartist-js/ -->
<script src="/miiadmin/resources/js/chartist.min.js"></script>

<!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="/miiadmin/resources/js/jquery.bootstrap-wizard.js"></script>

<!--  Notifications Plugin, full documentation here: http://bootstrap-notify.remabledesigns.com/    -->
<script src="/miiadmin/resources/js/bootstrap-notify.js"></script>

<!--   Sharrre Library    -->
<script src="/miiadmin/resources/js/jquery.sharrre.js"></script>

<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="/miiadmin/resources/js/bootstrap-datetimepicker.js"></script>

<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script src="/miiadmin/resources/js/jquery-jvectormap.js"></script>

<!-- Sliders Plugin, full documentation here: https://refreshless.com/nouislider/ -->
<script src="/miiadmin/resources/js/nouislider.min.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD1_8C5Xz9RpEeJSaJ3E_DeBv8i7j_p6Aw"></script>

<!--  Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="/miiadmin/resources/js/jquery.select-bootstrap.js"></script>

<!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
<script src="/miiadmin/resources/js/jquery.datatables.js"></script>

<!-- Sweet Alert 2 plugin, full documentation here: https://limonte.github.io/sweetalert2/ -->
<script src="/miiadmin/resources/js/sweetalert2.js"></script>

<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="/miiadmin/resources/js/jasny-bootstrap.min.js"></script>

<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="/miiadmin/resources/js/fullcalendar.min.js"></script>

<!-- Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="/miiadmin/resources/js/jquery.tagsinput.js"></script>

<!-- Material Dashboard javascript methods -->
<script src="/miiadmin/resources/js/material-dashboard98f3.js?v=1.3.0"></script>

<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="/miiadmin/resources/js/demo.js"></script>

<script>
// Facebook Pixel Code Don't Delete
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','connect.facebook.net/en_US/fbevents.js');

try{
  fbq('init', '111649226022273');
  fbq('track', "PageView");

}catch(err) {
  console.log('Facebook Track Error:', err);
}

</script>
<noscript>
  <img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=111649226022273&amp;ev=PageView&amp;noscript=1"
  />
</noscript>





    <script type="text/javascript">
        $().ready(function(){
            demo.checkFullPageBackgroundImage();

            setTimeout(function(){
                // after 1000 ms we add the class animated to the login/register card
                $('.card').removeClass('card-hidden');
            }, 700)
        });
    </script>





<!-- Mirrored from demos.creative-tim.com/bs3/material-dashboard-pro/examples/pages/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Jan 2020 08:43:40 GMT -->
   
</html>
