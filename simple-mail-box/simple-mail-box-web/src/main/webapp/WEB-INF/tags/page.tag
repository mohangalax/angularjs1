<%@ tag pageEncoding="UTF-8" %>

<%@ attribute name="title" fragment="true" %>
<%@ attribute name="head" fragment="true" %>
<%@ attribute name="js" fragment="true" %>
<%@ attribute name="ngApp" type="java.lang.String" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="no-js" data-ng-app="${ngApp}">
	<head>
		<!-- page metadata -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    
		<title> Mail Box <c:if test="${not empty title && title != ''}"> | </c:if>  <jsp:invoke fragment="title"/> </title>
	
		<!-- stylesheets -->
		<link rel="stylesheet" href="/mail/libs/css/bootstrap.min-3.3.7.css"/>
		
		<!-- app stylesheets -->
		<link rel="stylesheet" href="/mail/css/app.css"/>
		<jsp:invoke fragment="head"/>
	
	</head>
	<body>
		<main>
		    <jsp:doBody/>
	    </main>
	    
		<!--  external libraries  -->    
	    <script src="/mail/libs/js/angular1/angular.min-1.6.1.js"></script>
		
	    <!-- app scripts -->
	    <script src="/mail/js/app.js"></script>
	    <jsp:invoke fragment="js"/>
		
	</body>
</html>