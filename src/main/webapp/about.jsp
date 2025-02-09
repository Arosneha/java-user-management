<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

<head>

<title>About Page</title>

<link rel="stylesheet" href="style.css">

<style>



/* General Styles */

body {

font-family: 'Arial', sans-serif;

margin: 0;

padding: 0;

}

h2 {

font-size: 34px;

text-align: center;

margin-top: 60px;

color: #fff;

}
P{

padding: 5px;

line-height: 1.5;

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


.navbar-brand {

background-color: rgba(13, 86, 164, 0.8);

color: #fff;

padding: 8px 16px;

text-decoration: none;

border-radius: 4px;

font-weight: bold;

cursor: pointer;

}

.navbar-brand:hover {

background-color: #343536;

color: #fff;
}
ul {

list-style: none;

padding: 5px;

}

ul li {

margin-bottom: 10px;

padding: 5px;

}

/* Footer */

footer {

text-align: center;

padding: 15px;

background-color: rgba(13,86, 164. 0.8);

color: #fff;

font-size: 16px;
}



.main{

background-color: rgb(105, 104, 104);

width: 1000px

margin: 50px auto;

color: white;

border-radius: 20px:

box-shadow: 0 0 10px rgb(77,76,76);

}

</style>

</head>

<body>

<jsp:include page="header.jsp"/>

<div class="main">

<h2>About Us</h2>

<p>

Welcome to our User Management App! Our mission is to provide a user-friendly solution for efficient and organized user data management.

</p>

<p>

<strong>Our Story:</strong>

</p>

<p>

Founded in [Year], we embarked on a journey to simplify the way individuals and businesses manage their user records. Our team of dedicated professionals

combines expertise in software development with a passion for creating intuitive and reliable applications.</p>

<p>

<strong>What Sets Us Apart:</strong></p>
<p>

At User Management App, we pride ourselves on delivering a product that prioritizes simplicity without compromising functionality. Our commitment to

user satisfaction drives us to continually enhance and optimize our application.

</p>

<p>

<strong>Core Values:</strong>

</p>

<ul>

<li><strong>Innovation:</strong> We embrace creativity and innovation to stay ahead in the rapidly evolving world of technology.</li>

<li><strong>User-Centric:</strong> Our focus is on creating solutions that meet the needs and expectations of our users.</li>

<li><strong>Reliability:</strong> We believe in providing a reliable and robust platform that users can trust for their data management needs.</li>

<li><strong>Community:</strong> Building a supportive community is integral to our vision. We value collaboration and feedback from our users.</li>

</ul>

</div> <jsp:include page="footer.jsp" />

</body>

</html>

