<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
	      <span class="navbar-brand">
	        <a class="navbar-link" href="home.jsp">Sitemesh and Bootstrap</a>
	      </span>
	    </div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${null != user}">
					<li><a class="navbar-link" href="../main?cmd=logout">Sair</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>
</header>
