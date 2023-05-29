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
			<form method="POST" action="/register">
			  <div class="form-group row mb-2">
			    <label for="inputName" class="col-sm-6 col-form-label">Your Name: </label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="inputName" name="inputName" placeholder="Name">
			    </div>
			  </div>
			    <div class="form-group row mb-2">
			    <label for="inputLocation" class="col-sm-6 col-form-label">Dojo Location: </label>
			    <div class="col-sm-6">
			      <select class="form-select" aria-label="Default select example" name="inputLocation" id="inputLocation">
					  <option value="San Jose">San Jose</option>
					  <option value="Santiago">Santiago</option>
					  <option value="Habana">Habana</option>
				</select>
			    </div>
			  </div>
			  <div class="form-group row mb-6">
			    <label for="inputLanguage" class="col-sm-6 col-form-label">Favorite Language: </label>
			    <div class="col-sm-6">
			     <select class="form-select" aria-label="Default select example"  name="inputLanguage" id="inputLanguage">
					  <option value="Java">Java</option>
					  <option value="Python">Python</option>
					  <option value="C#">C#</option>
				</select>
			    </div>
			  </div>
			  <div class="form-group row mb-2">
			    <label for="inputComment" class="col-sm-10 col-form-label">Comment (Optional)</label>
			    <div class="col-sm-12">
					<textarea class="form-control" rows="5" id="inputComment" name="inputComment"></textarea>
			    </div>
			  </div>
			  <div class="form-group row">
			    <div class="col-sm-10">
			      <button type="submit" class="btn btn-primary">Sign in</button>
			    </div>
			  </div>
			</form>
		</div>
	</body>
</html>