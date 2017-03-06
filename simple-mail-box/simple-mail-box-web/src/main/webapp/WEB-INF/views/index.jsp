<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<t:page>
	<jsp:attribute name="title">Home</jsp:attribute>
	<jsp:attribute name="head">
		<link rel="stylesheet" href="/mail/css/home.css" />
	</jsp:attribute>
	<jsp:body>
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
			<div class="navbar-header">
			  <a class="navbar-brand" href="#">Mail Box</a>
			</div>
		
			<ul class="nav navbar-nav navbar-right">
			  <li><a href="login"><spring:message code="home.link.signin" /></a></li>
			  <li><a href="signup"><spring:message code="home.link.createaccount" /></a></li>
			</ul>
		  </div>
		</nav>
	</jsp:body>
</t:page>