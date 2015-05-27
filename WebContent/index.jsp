<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<%request.getSession(true); %>
	<c:import url="/template/header.jsp"></c:import>
	
	<c:if test="${null != msg}">
		<div class="alert alert-warning" role="alert">
			<strong>Atenção!</strong> ${msg}
		</div>
	</c:if>
	
	<div id="pnl-login">
		<div class="panel panel-default">
		  <div class="panel-heading">
	  		<h3 class="panel-title">Login</h3>
		  </div>
		  <div class="panel-body">
		    <form id="frmlogin" action="main" method="post">
			    <div class="form-group">
					<label for="txt-username">Usuário</label>
					<input type="text" class="form-control" id="txt-username" name="login" placeholder="Seu nome de usuário" required>
				</div>
				<div class="form-group">
					<label for="txt-password">Senha</label>
					<input type="password" class="form-control" id="txt-password" name="password" placeholder="Sua senha" required>
				</div>
		    </form>
		  </div>
		  <div class="panel-footer">
		  	<button id="btn-login" form="frmlogin" type="submit" class="btn btn-default btn-lg btn-block">Entrar</button>
		  </div>
		</div>
	</div>
	
	<c:import url="/template/footer.jsp"></c:import>
	
	<!-- JS -->
	<%-- <c:url value="/resources/js/" var="jslink"/>
	<script type="text/javascript" src="${jslink}jquery.min.js"></script>
	<script type="text/javascript" src="${jslink}bootstrap.min.js"></script> --%>
</body>
</html>