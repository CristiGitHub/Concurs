<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="js/log.js"></script>
  <link rel="stylesheet" href="css/login.css">  
  <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
  
  
  

<!------ Include the above in your HEAD tag ---------->
<html>
<body>
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="<c:url value = "Home"/>" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="<c:url value = "register.jsp"/>" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="j_security_check" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" class="form-control" id="j_username" name="j_username" placeholder="Username" size="20">
									</div>
									<div class="form-group">
										<input type="password" class="form-control" id="j_password" name="j_password" placeholder="Password" size="20"> 
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="# tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>
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