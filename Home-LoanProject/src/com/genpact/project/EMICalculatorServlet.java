package com.genpact.project;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EMICalculatorServlet")
public class EMICalculatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Retrieve and process form data
        double loanAmount = Double.parseDouble(request.getParameter("loanAmount"));
        int loanTenure = Integer.parseInt(request.getParameter("loanTenure"));
		double interestRate = Double.parseDouble(request.getParameter("interestRate"));

		// Perform EMI calculation logic
        double monthlyInterestRate = interestRate / 100 / 12;
		int numberOfPayments = loanTenure;
		// P*R*{((1+R)^n)/((1+R)^n-1)}
		double emiParam = loanAmount * monthlyInterestRate * (Math.pow(1 + monthlyInterestRate, numberOfPayments)
				/ (Math.pow(1 + monthlyInterestRate, numberOfPayments) - 1));
		// Round off the result to three decimal places
		emiParam = Math.round(emiParam * 1000.0) / 1000.0;
		// Set the result in request scope
		request.setAttribute("emiParam", emiParam);

		// Forward to the same page to display the result
		RequestDispatcher dispatcher = request.getRequestDispatcher("Calculator.jsp");
		dispatcher.forward(request, response);
    }
}
