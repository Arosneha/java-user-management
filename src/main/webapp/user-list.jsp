<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

<head>

<title>User Management Application</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    

<link rel="stylesheet" href="form.css">

<style>
body {

font-family: 'Arial', sans-serif;

margin: 0;

padding: 0;

}

/* Navigation Bar */

.navbar {

 background: linear-gradient(to right, #ff105f,#ffad06);

display: flex;

justify-content: space-between;

align-items: center;

padding: 15px;

position: sticky;

top: 0;

}
.navbar .logo {

font-size: 24px;

color: white;

font-weight: bold;

}

.navbar .nav-links a {

color: white;

text-decoration: none;

padding: 10px 15px;

font-weight: bold;

}

navbar .nav-links a:hover {

background-color:#343536;

color: #fff;

border-radius: 5px;

}

</style>

</head>
<body>

<jsp:include page="header.jsp" />

<br>

<div class="row">

<div class="container">

<h3 class="text-center">List of Users</h3>

<hr>

<div class="container text-left">

<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New User</a>

</div>

<br>

<table class="table table-bordered">

<thead>

<tr>

<th>ID</th>

<th>Name</th>

<th>Email</th>

<th>Country</th>

<th>Actions</th>

</tr>

</thead>
<tbody>

<c:forEach var="user" items="${listUsers}">

<tr>

<td><c:out value="${user.id}" /></td>

<td><c:out value="${user.name}" /></td>

<td><c:out value="${user.email}" /> </td>

<td><c:out value="${user.country}" /></td>

<td>

<a href="edit?id=<c:out value='${user.id}' />">Edit</a>

&nbsp;&nbsp;&nbsp;&nbsp;

<a href="delete?id=<c:out value='${user.id}'/>">Delete</a>

</td>

</tr>

</c:forEach>

</tbody>

</table>

</div>

</div>

</body>

</html>