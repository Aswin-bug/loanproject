package com.genpact.project;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ApplicationServlet")
public class ApplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve and process form data from Application.jsp
		String employmentType = request.getParameter("employmentType");
		String employerName = request.getParameter("employerName");
		String organizationType = request.getParameter("organizationType");
		String retirementAge = request.getParameter("retirementAge");

		// Store data in session for future use (e.g., in PersonalDetails.jsp)
		HttpSession session = request.getSession();
		session.setAttribute("employmentType", employmentType);
		session.setAttribute("employerName", employerName);
		session.setAttribute("organizationType", organizationType);
		session.setAttribute("retirementAge", retirementAge);

		// Redirect to PersonalDetails.jsp
		response.sendRedirect("PersonalDetails.jsp");
	}
}
