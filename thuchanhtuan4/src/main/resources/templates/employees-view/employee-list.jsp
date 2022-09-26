<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" th:href="@{/css/demoWord.css}" />
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>
	<p th:text="'Time on the server is: '+ ${theDate}" class="funny">
	<table class="table">
		<thead>
			<tr>
				<th>first name</th>
				<th>last name</th>
				<th>email</th>
			</tr>
		</thead>
		<tbody>
			<tr th:each="tempEmployee : ${employees }">
				<td th:text="${tempEmployee.firstName }">
				<td th:text="${tempEmployee.lastName }">
				<td th:text="${tempEmployee.email }">
				<td>
					<a th:href="@{/employees/showFormForUpdate(employeeId=${tempEmployee.id })" class="btn btn-info btn-sm">
					Update</a>
					<a th:href="@{/employees/delete(employeeId=${tempEmployee.id })" class="btn btn-danger btn-sm"
					onclick="if(!(confirm('Are you sure want to delete this Employee?'))) return false;">
					Delete</a>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>