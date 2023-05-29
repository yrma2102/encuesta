<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title></title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/main.css">
	<!-- change to match your file/naming structure -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/js/app.js"></script>
	<!-- change to match your file/naming structure -->
	</head>
	<body>
	<div class="container">
		<div class="card">
		  <div class="card-header">
		   	Submitted Info
		  </div>
		  <div class="card-body">
		    <div class="row">
			    <div class="col-6">Name :</div>
			    <div class="col-6"> <c:out value="${sessionScope.name}"/></div>
		    </div>
		    <div class="row">
			    <div class="col-6">Dojo Location :</div>
			    <div class="col-6"><c:out value="${sessionScope.location}"/></div>
		    </div>
		    <div class="row">
			    <div class="col-6">Favorite Language :</div>
			    <div class="col-6"><c:out value="${sessionScope.language}"/>!!!</div>
		    </div>
		   	<div class="row mb-3">
			    <div class="col-6">Comment :</div>
			    <div class="col-6"><c:out value="${sessionScope.comment}"/>!!</div>
		    </div>
		    <a href="/" class="btn btn-primary">Volver</a>
		  </div>
		</div>
	</div>
	
	</body>
</html>