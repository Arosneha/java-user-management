<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>User Management</title>

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

top: 0px;

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

/* Main Content */

.container {

height: 400px;

padding: 30px;

box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);

background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url('img/about-page-header.jsp');
/*background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("about-page-header.jpg");*/
 
background-size: cover;
/* flexbox to center content */

display: flex;

flex-direction: column;  /* Stack items vertically */

justify-content: center; /* Center vertically */

align-items: center; /* Center horizontally */

text-align: center; /*Ensure text is centered*/
}

.navbar-brand {

 background: linear-gradient(to right, #ff105f,#ffad06);

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


</style>

</head>

<body>

<jsp:include page="header.jsp"/>

<div class="container">

<h2>Welcome to our User Management App!</h2>

<a href="<%=request.getContextPath()%>/list" class="navbar-brand">User Management App</a>

</div>

<p>

Discover the power of efficient user management with our application. Whether you are a business looking to streamline user data or an individual managing personal contacts,

our User Management Webapp is designed to make the process seamless and user-friendly.

</p>

<p>


Key Features:

</p>

<ul>

<li><strong>Easy User Interaction:</strong> Add, edit, and delete user records with just a few clicks. <>

<li><strong>intuitive Interface:</strong> Our user-friendly interface ensures a smooth experience for users of all levels <>

<li><strong>Data Security:</strong> Rest assured that your user data a secure and protected with advanced security measures. </i>

<li><strong>Time-Saving:</strong> Save valuable time with our efficient user management tools, allowing you to focus on what matters most. </li>

<p>

Explore the various functionalities and enjoy the simplicity of managing users effortlessly. Stay organized, save time, and enhance your user management experience.

</p>

<p>

Ready to get started? Click on the "Users" link in the navigation bar to access your user list or add a new user. If you have any questions or need assistance, feel free to explore the

documentation or contact our support team.

</p>

<p>

Start using our User Management App today and unlock the potential of efficient data management.

</p>



<jsp:include page="footer.jsp" />

</body>

</html>
