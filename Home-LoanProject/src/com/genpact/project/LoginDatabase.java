package com.genpact.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDatabase {
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/homeloan";
	private static final String JDBC_USERNAME = "root";
	private static final String JDBC_PASSWORD = "Aswin2002477";

	public static boolean registerUser(String email, String password) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD)) {
				String sql = "INSERT INTO login (email, password) VALUES (?, ?)";
				try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
					preparedStatement.setString(1, email);
					preparedStatement.setString(2, password);
					int rowsAffected = preparedStatement.executeUpdate();

					return rowsAffected > 0;
				}
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	public static boolean authenticateUser(String email, String password) {
		try {
			// Load the JDBC driver
			Class.forName("com.mysql.cj.jdbc.Driver");

			// Establish a connection to the database
			try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD)) {
				// Prepare the SQL statement to select data from the table
				String sql = "SELECT * FROM login WHERE TRIM(email) = ? AND TRIM(password) = ?";
				try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
					preparedStatement.setString(1, email);
					preparedStatement.setString(2, password);

					// Execute the SQL statement
					ResultSet resultSet = preparedStatement.executeQuery();
					// Check if a matching record was found
					if (resultSet.next()) {
						// Matching user found, return true
						return true;
					} else {
						// No matching user found, return false
						return false;
					}
				}
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}

