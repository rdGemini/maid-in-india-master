<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					 	    <div class="row">
	
        <div class="col-md-10" style="margin-left:8%">
            <div class="card">
                <form:form id="RegisterValidation" method="post" 
								modelAttribute="register" enctype="multipart/form-data">
                    <div class="card-header card-header-icon" data-background-color="rose">
                        <i class="material-icons">person</i>
                    </div>
                    <div class="card-content">
                       
                       <h4 class="card-title">
										<c:choose>
												<c:when test="${edit}">
													Update Form
												</c:when>
												<c:otherwise>
													Registration Form
												</c:otherwise>	
										</c:choose>		
						</h4>
						 <form:input type="hidden" path="agencyId" id="agencyId"/>
						 <form:input type="hidden" path="password" id="password"/>
						  <form:input type="hidden" path="certificate" id="certificate"/>
                        <div class="form-group">
                        <div class="col-lg-12 col-md-12 col-sm-3">
                            <label class="control-label">
                               Name
                                <small>*</small>
                            </label>	
                            <form:input id="uname" class="form-control" name="name" path="name" type="text" required="true" aria-required="true"/>
                        <span class="material-input" id="errName" style="color:red;"></span></div></div>
                        <br><br>
                        <div class="form-group"><br>
                        <div class="col-lg-12 col-md-12 col-sm-3">
                            <label class="control-label">
                                Address
                                <small>*</small>
                            </label>
                            <form:input class="form-control" id="address" name="address1" path="address1" type="text" required="true" aria-required="true"/><br>
                            <form:input class="form-control" id="address" name="address2" path="address2" type="text" required="true" aria-required="true"/>
                        <span class="material-input" id="errAddress" style="color:red;"></span></div></div>
                        
                       <div class="form-group">
                        	
                            <div class="col-lg-3 col-md-3 col-sm-3" style="margin-left:5%; margin-top:2%">
									
									<form:select class="selectpicker" name="cityId" path="cityId" id="cityId" 
									data-style="btn btn-primary btn-round" title="City" required="true"
									 data-size="7" tabindex="-98" style="background-color:#ec407a">
										<c:forEach items="${cities}" var="c">
                         					<form:option value="${c.cityId}">${c.name}</form:option>  
                       					</c:forEach>
									</form:select>
							</div>
                        <span class="material-input"></span></div>
                        
                        <div class="col-lg-1 col-md-1 col-sm-1" style = "margin-top:2%; margin-left:0%"></div>
                        <div class="col-lg-3 col-md-3 col-sm-3" style = "margin-top:2%; margin-left:0%">
                      <form:select class="selectpicker" name="areaId" path="areaId" id="areasByCity"
									data-style="btn btn-primary btn-round" title="Area" required="true"
									 data-size="7" tabindex="-98" style="background-color:#ec407a">
										<c:forEach items="${areas}" var="a">
                         					 <form:option value="${a.areaId}">${a.name}</form:option>  
                       					</c:forEach>
									</form:select>
						</div>
                        <div class="col-lg-1 col-md-1 col-sm-1" style = "margin-top:2%; margin-left:0%"></div>
                        <div class="col-lg-3 col-md-3 col-sm-3" style = "margin-top:2%; margin-left:0%">
                        <div class="form-group">
                            <label class="control-label">
                                Phone No
                                <small>*</small>
                            </label>
                            <c:choose>
												<c:when test="${edit}">
													<form:input class="form-control" id="mno" name="phoneNo" path="phoneNo" type="text" required="true" aria-required="true"/>
												</c:when>
												<c:otherwise>
													<form:input class="form-control" id="mobno" name="phoneNo" path="phoneNo" type="text" required="true" aria-required="true"/>
												</c:otherwise>	
										</c:choose>	
                            
                        <span class="material-input" id="errNo" style="color:red;"></span></div>
                        </div> 
                      
                     <div class="form-group"></div>	
                     <div class="form-group">
                     
             			<div class="col-lg-5 col-md-5 col-sm-3" style="margin-left:-15px; margin-top:2%">
                            <label class="control-label">
                                Email Address
                                <small>*</small>
                            </label>
                            <c:choose>
												<c:when test="${edit}">
													<form:input class="form-control" name="email" path="emailId"
													type="email" required="true" aria-required="true" readonly="true" />
												</c:when>
												<c:otherwise>
													<form:input class="form-control" id="eid" name="email" path="emailId"
													type="email" required="true" aria-required="true" />
												</c:otherwise>	
										</c:choose>
                            <%-- <form:input class="form-control" name="emailId" id="eid" path="emailId" type="email" required="true" aria-required="true"/> --%>
                        <span class="material-input" id="errEmail" style="color:red;"></span></div></div>
                        <br><br>
                       <br><br>
                       
                       	<c:choose>
							<c:when test="${edit}">
											
							</c:when>
							<c:otherwise>
							<br>
								<div class="form-group label-floating is-empty" style="margin-top:	20%; margin-left:0px;">
                        <label class="control-label">
                                Certification
                                <small>*</small>
                            </label>                     
                        <span class="btn btn-round btn-rose btn-file" style="margin-top:5%">
						<span class="fileinput-new">Choose File</span>
						<form:input type="file" name="certificateImage" path="certificateImage" id="certificateImage" aria-invalid="false" class="valid" required="true"/><div class="ripple-container"></div></span>
                         </div>   			
							</c:otherwise>	
						</c:choose>		
                         
                         <c:choose>
            <c:when test="${edit}">
            	<div class="col-md-6" style="margin-left:0%; margin-top:0%">
            </c:when>
            <c:otherwise>
            	<div class="col-md-6" style="margin-left:48%; margin-top:-20%">
            </c:otherwise>
            </c:choose> 
                         
			<div class="card">
				<div class="card-header card-header-icon" data-background-color="rose">
					<i class="material-icons">contacts</i>
				</div>

				<div class="card-content">
					<h4 class="card-title">Bank Details</h4>
						<div class="form-group">
	                        <label class="control-label">Bank Name</label>
	                        <form:input type="text" id="bname" name="bankName" path="bankName" class="form-control"/>
	                    <span class="material-input" id="errBName" style="color:red;"></span></div>
	                    <div class="form-group">
	                        <label class="control-label">IFSC Code</label>
	                        <form:input type="text" id="ifsc" name="ifsc" path="ifsc" class="form-control"/>
	                    <span class="material-input" id="errIfsc" style="color:red;"></span></div>
	                    <div class="form-group">
	                        <label class="control-label">Account Number</label>
	                        <c:choose>
	                        <c:when test="${edit}">
            					<form:input type="text" id="ano" name="accNo" path="accNo" class="form-control"/>
            				</c:when>
            				<c:otherwise>
            					<form:input type="text" id="accno" name="accNo" path="accNo" class="form-control"/>
            				</c:otherwise>
            				</c:choose> 
	                        
	                    <span class="material-input" id="errAcc" style="color:red;"></span></div>
	                    <div class="form-group">
	                        <label class="control-label">Branch Name</label>
	                        <form:input type="text" id="brname" name="branchName" path="branchName" class="form-control"/>
	                    <span class="material-input" id="errBranch" style="color:red;"></span></div>

				</div>
			</div>
		</div>
                     
                        <div class="form-footer text-right">
                            <div class="checkbox pull-left">
                                <label>
                                    <input type="checkbox" id="myCheck" name="optionsCheckboxes" onClick='checkButton()' required="true" aria-required="true" checked="checked"></span>
                                    I agree to the <a href="#something">terms and conditions</a>.
                                    <span class="material-input" id="errorMsg" style="color:red;"></span>
                                </label>
                            </div>
                            <span class="material-input" id="errMsg" style="color:red;"></span>	
											<button type="reset" class="btn btn-rose btn-fill">Reset</button>
											<c:choose>
												<c:when test="${edit}">
													<input type="submit" id="submit" class="btn btn-rose btn-fill" onSubmit='checkError1()'
														value="Update" formaction="/miiadmin/agency/updateAgency"/>
												</c:when>
												<c:otherwise>
													<input type="submit" id="submit" class="btn btn-rose btn-fill" onSubmit='checkError2()'
														value="Register" formaction="/miiadmin/agency/addAgency"/>
												</c:otherwise>
											</c:choose></div>
                       		<!-- <button type="reset" class="btn btn-rose btn-fill">Reset</button>
                            <button type="submit" class="btn btn-rose btn-fill">Register</button> -->                
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
        <%@include file = "footer.jsp" %>			
  		</div>
	</div>
</body>
	<!--   Core JS Files   -->
	<%@include file = "corejsfiles.jsp" %>
	<script type="text/javascript">
        $().ready(function(){
        	document.getElementById("mobno").defaultValue = "";
        	document.getElementById("accno").defaultValue = "";
        });
    </script>
<script type="text/javascript">
	$("#uname").blur(function() 
	{
		var name = $("#uname").val();
		var pattern=/^[A-Za-z .]{3,50}$/;
		if(name == "")
		{
			$("#errName").text("Please enter your name!!");
			document.getElementById("uname").focus();
		}
		else if(!(pattern.test(name)))
		{
			$("#errName").text("Only capital and small letters are allowed!!");
			document.getElementById("uname").focus();
			$("#uname").text("");
		}
		else
			$("#errName").text("");
	});
	
	$("#address").blur(function() 
			{
				var address = $("#address").val();
				if(address == "")
				{
					$("#errAddress").text("Please enter your address!!");
					document.getElementById("address").focus();
				}
				else
					$("#errAddress").text("");
	});
	
	$("#mobno").blur(function() 
			{
				var no = $("#mobno").val();
				var pattern=/^[0-9]{10}$/;
				if(no == "")
				{
					$("#errNo").text("Please enter your contact number!!");
					document.getElementById("mobno").focus();
				}
				else if(!(pattern.test(no)))
				{
					$("#errNo").text("Only numbers are allowed and size must be 10!!");
					document.getElementById("mobno").focus();
					$("#mobno").text("");
				}
				else
					$("#errNo").text("");
			});
	$("#mno").blur(function() 
			{
				var no = $("#mno").val();
				var pattern=/^[0-9]{10}$/;
				if(no == "")
				{
					$("#errNo").text("Please enter your contact number!!");
					document.getElementById("mno").focus();
				}
				else if(!(pattern.test(no)))
				{
					$("#errNo").text("Only numbers are allowed and size must be 10!!");
					document.getElementById("mno").focus();
					$("#mno").text("");
				}
				else
					$("#errNo").text("");
			});
	
	$("#bname").blur(function() 
			{
				var name = $("#bname").val();
				var pattern=/^[A-Za-z .]{1,}$/;
				if(name == "")
				{
					$("#errBName").text("Please enter your bank name!!");
					document.getElementById("bname").focus();
				}
				else if(!(pattern.test(name)))
				{
					$("#errBName").text("Only capital and small letters are allowed!!");
					document.getElementById("bname").focus();
					$("#bname").text("");
				}
				else
					$("#errBName").text("");
			});
	
	$("#brname").blur(function() 
			{
				var name = $("#brname").val();
				var pattern=/^[A-Za-z .]{1,}$/;
				if(name == "")
				{
					$("#errBranch").text("Please enter your bank branch name!!");
					document.getElementById("brname").focus();
				}
				else if(!(pattern.test(name)))
				{
					$("#errBranch").text("Only capital and small letters are allowed!!");
					document.getElementById("brname").focus();
					$("#brname").text("");
				}
				else
					$("#errBranch").text("");
			});
	
	$("#ifsc").blur(function() 
			{
				var ifsc = $("#ifsc").val();
				var pattern=/^[A-Z]{4}0[A-Z0-9a-z]{6}$/;
				if(ifsc == "")
				{
					$("#errIfsc").text("Please enter your bank ifsc number!!");
					document.getElementById("ifsc").focus();
				}
				else if(!(pattern.test(ifsc)))
				{
					$("#errIfsc").text("Follow this pattern : ABCD0123456");
					document.getElementById("ifsc").focus();
					$("#ifsc").text("");
				}
				else
					$("#errIfsc").text("");
			});
	
	$("#accno").blur(function() 
			{
				var accno = $("#accno").val();
				var pattern=/^[0-9]{9,18}$/;
				if(accno == "")
				{
					$("#errAcc").text("Please enter your bank account number!!");
					document.getElementById("accno").focus();
				}
				else if(!(pattern.test(accno)))
				{
					$("#errAcc").text("Only numbers are allowed and size must be between 9-18!!");
					document.getElementById("accno").focus();
					$("#accno").text("");
				}
				else
					$("#errAcc").text("");
			});
	
	$("#ano").blur(function() 
			{
				var accno = $("#ano").val();
				var pattern=/^[0-9]{9,18}$/;
				if(accno == "")
				{
					$("#errAcc").text("Please enter your bank account number!!");
					document.getElementById("ano").focus();
				}
				else if(!(pattern.test(accno)))
				{
					$("#errAcc").text("Only numbers are allowed and size must be between 9-18!!");
					document.getElementById("ano").focus();
					$("#ano").text("");
				}
				else
					$("#errAcc").text("");
			});
	
	function checkButton()
	{
		var x = document.getElementById("myCheck").checked;
		if(x==false)
			$("#errorMsg").text("Please agree our terms & conditions!!");
		else
			$("#errorMsg").text("");
	}	$("#errorMsg").text("");
	
</script> 
	<script type="text/javascript">
  	$("#eid").blur(function() {
  		var emailId = $("#eid").val();
  		if(emailId == "")
  		{
  			$("#errEmail").text("Please enter Email Id!!");
  			document.getElementById("eid").focus();
  		}
  		else if(emailId != "")
  		{
  			
  			//alert(emailId);
  			$.ajax({
  	  	        type: 'GET',
  	  	        url: "/miiadmin/agency/checkEmailId/" + emailId,
  	  	        success: function(data){
  	  	        	//alert(data);
  	  	            if(data=="true")
  	  	            {
  	  	            	$("#eid").val("");
  	  	            	$("#errEmail").text("Email Id already exists.");    		
  	  	            }
  	  	            else
  	  	          	{
  	  	            	$("#errEmail").text("");
  	  	            }
  	  	            	
  	  	        },
  	  	        error:function(){
  	  	            alert("error");
  	  	        }
  	  	    });
  		}
	});
 
  	$("#cityId").change(function() {
  		var cityId = $(this).val();
  		//alert("stateid : "+stateId);
  	    $.ajax({
  	        type: 'GET',
  	        url: "/miiadmin/area/getAreas/" + cityId,
  	        success: function(data){
  	        //	 $("#citiesByState").html(data).selectpicker('refresh');
  	        	 var slctSubcat=$('#areasByCity'), option="";
  	          	slctSubcat.empty();
  	          //$('.selectpicker').selectpicker('refresh'); 
  	          
  	          	
  	          //$('#citiesByState').em
  	         
  	             for(var i=0; i<data.length; i++){
  	            	// alert("hi");		
  	             	//alert(data[i].name);
  	                option = option + "<option value='"+data[i].areaId+"'>"+data[i].name+"</option>";	            }
  	          	slctSubcat.append(option); 
  	          $('#areasByCity').selectpicker('refresh');
  	          	//alert(data.length);
  	        },
  	        error:function(){
  	            alert("error");
  	        }
  	    });
	});
  
  </script> 
	
</html>
    