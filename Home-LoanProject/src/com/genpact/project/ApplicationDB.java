package com.genpact.project;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ApplicationDB {

	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/homeloan";
	private static final String JDBC_USERNAME = "root";
	private static final String JDBC_PASSWORD = "Aswin2002477";

	public void saveEmploymentDetails(String employmentType, String employerName, String organizationType,
			String retirementAge) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD)) {
				String sql = "INSERT INTO employment_details (employment_type, employer_name, organization_type, retirement_age) VALUES (?, ?, ?, ?)";
				try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
					preparedStatement.setString(1, employmentType);
					preparedStatement.setString(2, employerName);
					preparedStatement.setString(3, organizationType);
					preparedStatement.setString(4, retirementAge);
					preparedStatement.executeUpdate();
					System.out.println(employmentType + " " + retirementAge);
				}
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			// Handle exceptions appropriately
		}
	}
}
