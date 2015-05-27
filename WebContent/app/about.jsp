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
	<div id="content-container" class="container-fluid">
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" onclick="activateEffect()"><a href="home.jsp">Home</a></li>
            <li role="presentation" onclick="activateEffect()"><a href="user/myacount.jsp">Minha Conta</a></li>
            <li role="presentation" onclick="activateEffect()"><a href="messages.jsp">Mensagens</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">Sitemesh e Bootstrap</h3>
      </div>

      <div class="jumbotron">
        <h1>Gerencie seus templates</h1>
        <p class="lead">Através do padrão decorators o sitemesh automatiza a gestão de layouts para a sua aplicação. Esqueça os includes de jsp e seja mais produtivo utilizando esse framework.</p>
        <p><a class="btn btn-lg btn-success" href="http://wiki.sitemesh.org/wiki/display/sitemesh/Setup+SiteMesh+in+5+Minutes+or+Less" role="button">Saiba mais</a></p>
      </div>

      <div class="row marketing">
        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
          <h4>Java</h4>
          <p>Feito em Java, uma linguagem largamente usada para aplicações corporativas.</p>
        </div>

        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
           <h4>Open Source</h4>
          <p>Um projeto open source totalmente compatível com Apache Software License.</p>
        </div>
      </div>

    </div> <!-- /container -->
    
    <div style="margin-bottom: 77px;"></div>
    
    <c:import url="/template/footer.jsp"></c:import>
    
	<!-- JS -->
	<c:url value="/resources/js/" var="jslink"/>
	<script type="text/javascript" src="${jslink}app.js"></script>
	<%-- <script type="text/javascript" src="${jslink}jquery.min.js"></script>
	<script type="text/javascript" src="${jslink}bootstrap.min.js"></script> --%>
</body>
</html>