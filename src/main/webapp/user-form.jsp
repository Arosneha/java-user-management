<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

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

<jsp:include page="header.jsp" /> <br>

<div class="container col-md-5">

<div class="card">

<div class="card-body">

<c:if test="${user == null}">

<form action="insert" method="post">

</c:if>

<c:if test="${user != null}">

<form action="update" method="post">

</c:if>

<caption>

<h2>

<c:if test="${user != null}">

Edit User

</c:if>

<c:if test="${user == null}">

Add New User

</c:if>

</h2>

</caption>
<c:if test="${user != null}">

<input type="hidden" name="id" value="<c:out value='${user.id}'/>" />

</c:if>

<fieldset class="form-group">

<label>User Name</label>

<input type="text" value="${user.name}" class="form-control"

name="name">

</fieldset>

<fieldset class="form-group">

<label>User Email</label>

<input type="text" value="${user.email}" class="form-control"

name="email">

</fieldset>

<fieldset class="form-group">

<label>User Country</label>

<input type="text" value="${user.country}" class="form-control"

name="country">

</fieldset>

<button type="submit" class="btn btn-success">Save</button>

</form>

</div>

</div>

</div>

</body>

</html>

