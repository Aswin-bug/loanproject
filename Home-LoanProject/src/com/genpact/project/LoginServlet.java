package com.genpact.project;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve and process form data
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// Check if the user exists (authentication)
		boolean loginSuccessful = LoginDatabase.authenticateUser(email, password);
		if (loginSuccessful) {
			// Redirect to a success page (home page)
			response.sendRedirect("Home-page.jsp");
		} else {
			// Set an error message attribute
			request.setAttribute("errorMessage", "Invalid email or password. Please try again.");

			// Forward back to the login page
			RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
			dispatcher.forward(request, response);
		}

		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	         // Registration functionality
         String email = request.getParameter("email");
         String password = request.getParameter("password");

         // Perform registration logic (insert into the database, etc.)
         boolean registrationSuccessful = LoginDatabase.registerUser(email, password);

         if (registrationSuccessful) {
             // Registration successful, you might want to redirect to a registration success page
				response.sendRedirect("success.html");
         } else {
             // Registration failed, you might want to show an error message on the registration page
				System.out.println("Enter the correct Details");

         }
     }

}

