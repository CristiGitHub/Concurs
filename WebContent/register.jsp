<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="js/log.js"></script>
  <link rel="stylesheet" href="css/login.css">   
   <link rel="stylesheet" href="css/register.css">  
  
  <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
  <%@page import="hibernate.Users" %>
  <%@page import="hibernate.main" %>
<%
Users ua=new Users();
main me=new main();
String p1 = request.getParameter("username");
String p2 = request.getParameter("email");
String p3 = request.getParameter("password");
String p4 = request.getParameter("confirm-password");
boolean p1Valid = p1 != null && me.UserGetId(p1)==0 && p1.length() >= 4  && p1.length() <= 20;
boolean p2Valid = p2 !=null && me.EmailEx(p2)==0; 
boolean p3Valid = p3 !=null && p3.length() >=4 && p3.length() <=15;
boolean p4Valid = p4 !=null && p3.equals(p4) && p4.length() >= 4;
if(p1Valid && p2Valid && p3Valid)
 {main au =new main();
	au.Register(p1,p3,p2);
	request.login(p1, p3);
	response.sendRedirect("Home");

}
	%>
	<style>
	.pass_show{position: relative} 

.pass_show .ptxt { 

position: absolute; 

top: 50%; 

right: 10px; 

z-index: 1; 

color: #f36c01; 

margin-top: -10px; 

cursor: pointer; 

transition: .3s ease all; 

} 

.pass_show .ptxt:hover{color: #333333;} 
	</style>
</head>
<body>

<div class="container">
    <div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-login">
													<div class="panel-heading">
														<div class="row">
															<div class="col-xs-6">
																<a href="<c:url value = "Home"/>" id="login-form-link">Login</a>
															</div>
															<div class="col-xs-6">
																<a href="<c:url value = "register.jsp"/>" class="active" id="register-form-link">Register</a>
															</div>
														</div>
														<hr>
													</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
													<form id="register-form " action="register.jsp" method="POST" role="form">
														<div class="form-group  has-feedback <%= !p1Valid ? "has-error" : "" %>">
															<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
														</div>
														<div class="form-group has-feedback <%=!p2Valid ? "has-error" : ""%>" >
															<input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="">
														</div>
														<div class="form-group has-feedback <%=!p3Valid ? "has-error" : ""%>" >
															<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
														</div>
														<div class="form-group has-feedback <%=!p4Valid ? "has-error" : ""%>" >
															<input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
														</div>
														<div class="form-group">
															<div class="row">
																<div class="col-sm-6 col-sm-offset-3">
																	<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
																</div>
															</div>
														</div>
													</form>
							</div>
						</div>
					</div>	
					
							 
			</div>
		</div>
	</div>	
</div>		 		 
</body>
</html>
