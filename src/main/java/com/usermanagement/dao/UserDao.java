package com.usermanagement.dao;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

import java.sql.SQLException;

import java.util.ArrayList;

import java.util.List;

import com.usermanagement.bean.User;
//Database Connection

public class UserDao {

private String jdbcURL = "jdbc:mysql://localhost:3307/user?useSSL=false";

private String jdbcUsername = "root";

private String jdbcPassword = "";

private static final String INSERT_USERS_SQL = "INSERT INTO users" + " (name, email, country) VALUES " + " (?, ?, ?);";

private static final String SELECT_USER_BY_ID = "select id,name,email,country from users where id=?";

private static final String SELECT_ALL_USERS = "select * from users";

private static final String DELETE_USERS_SQL = "delete from users where id=?";

private static final String UPDATE_USERS_SQL="update users set name=?,email=?,country=? where id=?;";

public UserDao() {

}

protected Connection getConnection() throws SQLException {

Connection connection = null;

try {

// Register the MySQL driver (optional in newer JDBC versions) 
	
	Class.forName("com.mysql.cj.jdbc.Driver"); // Replace with the appropriate driver class name

// Create the database connection

connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

} catch (SQLException e) {

// Properly handle or rethrow the SQLException

	throw e;

	} 
catch (ClassNotFoundException e) {

// Properly handle or rethrow the ClassNotFoundException 
	
	throw new RuntimeException("JDBC driver class not found.", e);

}

return  connection;
}
	// Insert User

	public void insertUser(User user) throws SQLException {

	System.out.println(INSERT_USERS_SQL);

	// try-with-resource statement will auto close the connection.

	try (Connection connection = getConnection();

	PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {

	preparedStatement.setString(1, user.getName());

	preparedStatement.setString(2, user.getEmail());

	preparedStatement.setString(3, user.getCountry());

	System.out.println(preparedStatement);

	preparedStatement.executeUpdate();

	} catch (SQLException e) {

	printSQLException(e);
	}
	}
//Select User

public User selectUser(int id) {

User user = null;

//Step 1: Establishing a Connection

try (Connection connection = getConnection();

//Step 2:Create a statement using connection object

PreparedStatement preparedStatement = connection.prepareStatement (SELECT_USER_BY_ID);)
{ 
	preparedStatement.setInt(1, id);
     
	System.out.println(preparedStatement);

//Step 3: Execute the query or update query 
	
	ResultSet rs = preparedStatement.executeQuery();
	
//Step 4: Process the ResultSet object.

while (rs.next()) {

String name = rs.getString("name");

String email = rs.getString("email");

String country = rs.getString("country");

user = new User(id, name, email, country);

}

} catch (SQLException e) {

printSQLException(e);

}

return user;

}
//Select All Users

public List<User> selectAllUsers() {

//using try-with-resources to avoid closing resources (boiler plate code)

List<User> users = new ArrayList<>();

//Step 1: Establishing a Connection

try (Connection connection = getConnection();

//Step 2:Create a statement using connection object 
	
	PreparedStatement preparedStatement = connection.prepareStatement (SELECT_ALL_USERS);) {
	
	System.out.println(preparedStatement);

//Step 3: Execute the query or update query 
	
	ResultSet rs = preparedStatement.executeQuery();
	 
	// Step 4: Process the ResultSet object.

		while (rs.next()) {

		int id = rs.getInt("id");

		String name = rs.getString("name");

		String email = rs.getString("email");

		String country = rs.getString("country");

		users.add(new User(id, name, email, country));

		}

		} catch (SQLException e) {

		printSQLException(e);

		}
		return users ;

		}
//Delete User

public boolean deleteUser(int id) throws SQLException {

boolean rowDeleted;

try (Connection connection = getConnection();

PreparedStatement statement = connection.prepareStatement (DELETE_USERS_SQL);) {

statement.setInt(1, id);

rowDeleted = statement.executeUpdate() > 0;

}
return  rowDeleted ;
}

//Update User

public boolean updateUser(User user) throws SQLException {

boolean rowUpdated;

try (Connection connection = getConnection();

PreparedStatement statement = connection.prepareStatement (UPDATE_USERS_SQL);) {

statement.setString(1, user.getName());

statement.setString(2, user.getEmail());

statement.setString(3, user.getCountry());

statement.setInt(4, user.getId());

rowUpdated = statement.executeUpdate() > 0;

}

return  rowUpdated;
}

//Error Handling

private void printSQLException(SQLException ex) {

//Print the basic details of the SQLException

System.err.println("SQLException occurred:");

System.err.println("SQLState : " + ex.getSQLState());

System.err.println("Error Code : " + ex.getErrorCode());

System.err.println("Message: " + ex.getMessage());

}

}
