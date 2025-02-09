package com.usermanagement.web;

import java.io.IOException;

import java.sql.SQLException;

import java.util.List;

import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;

import javax.servlet.annotation. WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.usermanagement.dao.UserDao;

import com.usermanagement.bean.User;

@WebServlet("/")

public class UserServlet extends HttpServlet {

private static final long serialVersionUID= 1L;

private UserDao userDAO;

public void init() {

userDAO = new UserDao();

}

protected void doPost(HttpServletRequest request,HttpServletResponse response)

throws ServletException, IOException {

doGet(request,response);

}

protected void doGet(HttpServletRequest request,HttpServletResponse response)

throws ServletException, IOException {

String action = request.getServletPath();

try {

switch (action) {

case "/new":

showNewForm(request, response);

break;

case "/insert":

insertUser(request, response);

break;
case "/delete":

deleteUser(request, response);

break;

case "/edit":

showEditForm (request, response);

break;

case "/update":

updateUser(request, response);

break;


default :

listUser(request, response);

break;

}

} catch (SQLException ex) {

throw new ServletException(ex);

}
}
//List User

private void listUser(HttpServletRequest request, HttpServletResponse response)

throws SQLException, IOException, ServletException {

List<User> listUsers = userDAO.selectAllUsers();

request.setAttribute("listUsers", listUsers);

RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");

dispatcher.forward(request, response);

}

//Show New Form

private void showNewForm(HttpServletRequest request, HttpServletResponse response)

throws ServletException, IOException {

RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");

dispatcher.forward(request,response);

}
//Show Edit Form

private void showEditForm(HttpServletRequest request,

HttpServletResponse response)

throws SQLException, ServletException, IOException {

int id = Integer.parseInt(request.getParameter("id"));

User existingUser = userDAO.selectUser(id);

RequestDispatcher dispatcher = request.getRequestDispatcher ("user-form.jsp");

request.setAttribute("user", existingUser);

dispatcher.forward(request,response);

}
//Insert User

private void insertUser(HttpServletRequest request,HttpServletResponse response)

throws SQLException, IOException {

String name = request.getParameter("name");

String email = request.getParameter("email");

String country = request.getParameter("country");

User newUser = new User(name, email, country);

userDAO.insertUser(newUser);

response.sendRedirect("list");

}
//update User

private void updateUser(HttpServletRequest request,HttpServletResponse response)

throws SQLException, IOException {

String name = request.getParameter("name");

String email = request.getParameter("email");

String country = request.getParameter("country");

int id = Integer.parseInt(request.getParameter("id"));

User newone = new User(id ,name, email, country);

userDAO.updateUser(newone);

response.sendRedirect("list");

}


//Delete User

private void deleteUser(HttpServletRequest request,HttpServletResponse response)

throws SQLException, IOException {

int id = Integer.parseInt(request.getParameter("id"));

userDAO.deleteUser(id);

response.sendRedirect("list");

}

}
