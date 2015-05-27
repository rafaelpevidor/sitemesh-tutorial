<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Sitemesh Tutorial</title>
	<!-- CSS -->
	<c:url value="/resources/css/" var="csslink"/>
	<link href="${csslink}app.css" rel="stylesheet">
	<link href="${csslink}bootstrap.min.css" rel="stylesheet">
	<link href="${csslink}bootstrap-theme.min.css" rel="stylesheet">
</head>
<body>
	
	<c:import url="../template/header.jsp"></c:import>
	
	<div id="content-container" class="container-fluid">
		<div class="row">
			<aside id="sidebar" class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
				<ul class="nav nav-pills nav-stacked">
	  				<li role="presentation" onclick="activateEffect()"><a href="myaccount.jsp">Minha Conta</a></li>
	  				<li role="presentation" onclick="activateEffect()"><a href="messages.jsp">Mensagens</a></li>
	  				<li role="presentation" onclick="activateEffect()"><a href="about.jsp">Sobre</a></li>
				</ul>
			</aside>
			<div id="content" class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
				<decorator:body/>
			</div>
		</div>		
	</div>
	
	<c:import url="../template/footer.jsp"></c:import>
	
	<!-- JS -->
	<c:url value="/resources/js/" var="jslink"/>
	<script type="text/javascript" src="${jslink}app.js"></script>
	<%-- <script type="text/javascript" src="${jslink}jquery.min.js"></script>
	<script type="text/javascript" src="${jslink}bootstrap.min.js"></script> --%>
</body>
</html>