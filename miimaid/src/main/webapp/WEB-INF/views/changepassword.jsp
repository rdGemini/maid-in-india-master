<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<%@include file="head.jsp"%>
</head>
<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<div class="wrapper">
		<%@include file="sidebar.jsp"%>
		<div class="main-panel">
			<%@include file="header.jsp"%>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<%-- <div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-icon"
									data-background-color="rose">
									<i class="material-icons">perm_identity</i>
								</div>
								<div class="card-content">
									<h4 class="card-title">
										Change Password <small class="category"></small>
									</h4>
									<div class="row">
										<div class="col-md-7" style="margin-left: 100px;">
										<c:forEach items="${admins}" var="admin">
											<form:form method="post" action="/miiadmin/admin/chPassword" modelAttribute="cpass">
												<div class="input-group">
													<span class="input-group-addon"> <i
														class="material-icons">lock_outline</i>
													</span> <form:input type="password" placeholder="Old Password..."
														class="form-control" path="password" name="password" />
												</div>
												<%if(request.getParameter("errorMsg") != null){ %>
                                <div style="color: red;"><%= request.getParameter("errorMsg") %></div>
                                <%} %>
												<div class="input-group">
													<span class="input-group-addon"> <i
														class="material-icons">lock_outline</i>
													</span> <form:input type="password" placeholder="New Password..."
														class="form-control" path="npassword" name="npassword"/>
												</div>

												<div class="input-group">
													<span class="input-group-addon"> <i
														class="material-icons">lock_outline</i>
													</span> <form:input type="password" placeholder="Confirm Password..."
														class="form-control" path="cpassword" name="cpassword"/>
												</div>
												<button type="submit" class="btn btn-rose pull-center"
													style="margin-left: 100px; margin-top: 30px;">Update
													Password</button>
												<div class="clearfix"></div>
												</form:form>
												</c:forEach>
										</div>
									</div>
								</div>
							</div>
							<%@include file="footer.jsp"%>
						</div> --%>
						<div class="col-md-6" style="margin-left:25%">
			<div class="card">
				<div class="card-header card-header-icon" data-background-color="rose">
					<i class="material-icons">perm_identity</i>
				</div>

				<div class="card-content">
					<h4 class="card-title">Change Password</h4>
					<form:form method="post" action="/miimaid/maid/change" modelAttribute="cpass">
	                    <div class="form-group label-floating is-empty">
	                    <div class="col-lg-11 col-md-9 col-sm-3">
	                    <div class="input-group">
                                      	<span class="input-group-addon">
                                            <i class="material-icons">lock_outline</i>
                                        </span>
                                        <form:input type="password" required="true" placeholder="Old Password" class="form-control" path="password" name="password" />
                        </div>
	                    </div></div><br><br>
	                    <div class="form-group label-floating is-empty">
	                    <div class="col-lg-11 col-md-9 col-sm-3">
	                        <div class="input-group">
                                      	<span class="input-group-addon">
                                            <i class="material-icons">lock_outline</i>
                                        </span>
                                        <input type="password" id="registerPassword" placeholder="New Password" class="form-control" path="npassword" name="npassword" />
                                        <span class="material-input" required="true" id="errPass" style="color:red;"></span>
                        </div>
                        </div></div><br><br>
                        <div class="form-group label-floating is-empty">
	                    <div class="col-lg-11 col-md-9 col-sm-3">
	                        <div class="input-group">
                                      	<span class="input-group-addon">
                                            <i class="material-icons">lock_outline</i>
                                        </span>
                                        <input type="password" id="registerPasswordConfirmation" placeholder="Confirm Password" class="form-control" path="cpassword" name="cpassword" />
                                        <span class="material-input" required="true" id="errCPass" style="color:red;"></span>
                        </div>
                        </div></div><br><br>
                        <%if(request.getParameter("errorMsg") != null){ %>
                                <div style="color: red;"><%= request.getParameter("errorMsg") %></div>
                                <%} %>
	                    <button type="submit" class="btn btn-fill btn-rose" style="margin-left:40%">Submit</button>
	                </form:form>
				</div>
			</div>
		</div>    
					</div>
					<%@include file = "footer.jsp" %>
</body>
<!--   Core JS Files   -->
<%@include file="corejsfiles.jsp"%>
<script type="text/javascript">
$("#registerPassword").blur(function() 
			{
				var pass = $("#registerPassword").val();
				var pattern= /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
				if(pass == "")
					$("#errPass").text("Please enter password!!");
				else if(!(pattern.test(pass)))
					$("#errPass").text("Size must be greater than 8, one small letter, one capital letter and one special character is compulsory!!");
				else
					$("#errPass").text("");
			});
	
	$("#registerPasswordConfirmation").blur(function() 
			{
				var cpass = $("#registerPasswordConfirmation").val();
				var pass = $("#registerPassword").val();
				var pattern= /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
				if(cpass == "")
					$("#errCPass").text("Please enter confirm password!!");
				else if(!(pattern.test(cpass)))
					$("#errCPass").text("Size must be greater than 8, one letter and one special character is compulsory!!");
				else if(pass != cpass)
					$("#errCPass").text("Password & confirm password are must be same!!");
				else
					$("#errCPass").text("");
			});
	</script>
</html>