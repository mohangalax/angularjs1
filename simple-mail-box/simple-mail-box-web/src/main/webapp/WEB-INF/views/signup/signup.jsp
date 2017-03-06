<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<t:page>
	<jsp:attribute name="title">Sign Up</jsp:attribute>
	<jsp:attribute name="ngApp">signUp</jsp:attribute>
	<jsp:attribute name="head">
		<link rel="stylesheet" href="/mail/css/signup.css" />
	</jsp:attribute>
	<jsp:attribute name="js">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-messages/1.6.1/angular-messages.min.js"></script>
		<script src="/mail/js/signup/signup_controller.js"></script>
		<script src="/mail/js/signup/signup_service.js"></script>
	</jsp:attribute>
	<jsp:body>
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
			<div class="navbar-header">
			  <a class="navbar-brand" href="#">Mail Box</a>
			</div>
		
			<ul class="nav navbar-nav navbar-right">
			  <li><a href="login"><spring:message code="home.link.signin" /></a></li>
			</ul>
		  </div>
		</nav>
		<div class="container-fluid" data-ng-controller="SignUpController as signCtrl">
			<div class="col-sm-5">
				<div class="panel">
					<div class="panel-body">
						<form class="form-horizontal" name="signUp" data-ng-submit="signCtrl.submit()" novalidate>
							<div class="row">
								<div class="form-group">
									<label class="control-label col-sm-4" for="firstName">First Name:</label>
									<div class="col-sm-6">
								    	<input name="firstName" type="text" class="form-control" data-ng-model="signCtrl.user.firstName" placeholder="Enter First Name" required>
								    </div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="control-label col-sm-4" for="lastName">Last Name:</label>
									<div class="col-sm-6">
								    	<input name="lastName" type="text" class="form-control" data-ng-model="signCtrl.user.lastName" placeholder="Enter Last Name" required>
								    </div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="control-label col-sm-4" for="email">Email address:</label>
									<div class="col-sm-6">
								    	<input name="email" type="email" class="form-control" data-ng-model="signCtrl.user.email" placeholder="Enter email" required>
								    </div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="control-label col-sm-4" for="password">Password:</label>
									<div class="col-sm-6">
								    	<input name="password" type="password" class="form-control" data-ng-model="signCtrl.password" placeholder="Enter Password" required>
								    </div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="control-label col-sm-4" for="confirmPassword">Confirm Password:</label>
									<div class="col-sm-6">
								    	<input name="confirmPassword" type="password" class="form-control" data-ng-model="signCtrl.user.password" data-compare-to="signCtrl.password" placeholder="Enter Confirm Password" required>
								    </div>
								    <div data-ng-messages="signUp.confirmPassword.$error">
							            <div data-ng-message="compareTo" class="messages">Should match with above Password field</div>
							        </div>
								</div>
							</div>
							<div class="row">
								<div class="alert alert-success col-sm-8" data-ng-if="signCtrl.infoMsg">{{signCtrl.infoMsg}}</div>
	                        	<div class="form-actions pull-right col-sm-4">
	                            	<input type="submit"  value="Create Account" class="btn btn-primary btn-sm" data-ng-disabled="signUp.$invalid">
	                              	<button type="button" data-ng-click="signCtrl.reset()" class="btn btn-warning btn-sm" data-ng-disabled="signUp.$pristine">Reset Form</button>
	                          	</div>
	                      	</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</jsp:body>
</t:page>