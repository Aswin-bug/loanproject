package com.genpact.project;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EligibilityCalculatorServlet")
public class EligiblityCalculatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve user input
		double monthlyIncome = Double.parseDouble(request.getParameter("monthlyIncome"));
		// double interestRate =
		// Double.parseDouble(request.getParameter("interestRate"));

		// Perform eligibility calculation logic
		double eligibilityAmount = 60 * (0.6 * monthlyIncome);

		// Set the result in request scope
		request.setAttribute("eligibilityAmount", eligibilityAmount);

		// Forward to the same page to display the result
		RequestDispatcher dispatcher = request.getRequestDispatcher("Calculator.jsp");
		dispatcher.forward(request, response);
	}
}

