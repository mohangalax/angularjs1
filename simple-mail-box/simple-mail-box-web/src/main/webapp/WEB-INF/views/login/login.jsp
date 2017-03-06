<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<t:page>
	<jsp:attribute name="title">Login</jsp:attribute>
	<jsp:attribute name="ngApp">login</jsp:attribute>
	<jsp:attribute name="head">
		<link rel="stylesheet" href="/mail/css/login.css" />
	</jsp:attribute>
	<jsp:attribute name="js">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-messages/1.6.1/angular-messages.min.js"></script>
		<script src="/mail/js/login/login_controller.js"></script>
		<script src="/mail/js/login/login_service.js"></script>
	</jsp:attribute>
	<jsp:body>
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
			<div class="navbar-header">
			  <a class="navbar-brand" href="#">Mail Box</a>
			</div>
		
			<ul class="nav navbar-nav navbar-right">
			  <li><a href="signup"><spring:message code="home.link.createaccount" /></a></li>
			</ul>
		  </div>
		</nav>
		<div class="container-fluid" data-ng-controller="LoginController as loginCtrl">
			<div class="col-sm-5">
				<div class="panel">
					<div class="panel-body">
						<form class="form-horizontal" name="login" data-ng-submit="loginCtrl.submit()" novalidate>
							<div class="row">
								<div class="form-group">
									<label class="control-label col-sm-4" for="email">Email address:</label>
									<div class="col-sm-6">
								    	<input name="email" type="email" class="form-control" data-ng-model="loginCtrl.email" placeholder="Enter email" required>
								    </div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="control-label col-sm-4" for="password">Password:</label>
									<div class="col-sm-6">
								    	<input name="password" type="password" class="form-control" data-ng-model="loginCtrl.password" placeholder="Enter Password" required>
								    </div>
								</div>
							</div>
							<div class="row">
	                        	<div class="form-actions pull-right col-sm-4">
	                            	<input type="submit"  value="Login" class="btn btn-primary btn-sm" data-ng-disabled="login.$invalid">
	                              	<button type="button" data-ng-click="loginCtrl.reset()" class="btn btn-warning btn-sm" data-ng-disabled="loginCtrl.$pristine">Cancel</button>
	                          	</div>
	                      	</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</jsp:body>
</t:page>