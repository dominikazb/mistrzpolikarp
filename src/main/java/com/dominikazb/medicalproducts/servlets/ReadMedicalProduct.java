package com.dominikazb.medicalproducts.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/readMedicalProduct")
public class ReadMedicalProduct extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String inputMedicalProduct = (String)request.getParameter("inputMedicalProduct");
		HttpSession session = request.getSession();
		session.setAttribute("inputMedicalProduct", inputMedicalProduct);
		response.sendRedirect("/listOfMedicalDoctors");
	}
}
