<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Save emp</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" />

</head>
<body>
	<div class="container">
		<h3>Employee Directory</h3>
		<hr>
		<p class="h4 mb-4">Save Employee</p>
		<form action="#" th:action="@{/employees/save}"
			th:object="${employee}">
			<input type="hidden" th:field="*{id}">
			<input type="text" th:field="*{firstName}"  class="form-control mb-4 col-4" placeholder="first name">
			<input type="text" th:field="*{lastName}"  class="form-control mb-4 col-4" placeholder="last name">
			<input type="text" th:field="*{email}" class="form-control mb-4 col-4" placeholder="Email">
			<button type="submit" class="btn btn-info col-2">Save</button>
			</form>
			<hr>
			<a href="@{/employees/list}">Back to employee </a>
	</div>
</body>
</html>