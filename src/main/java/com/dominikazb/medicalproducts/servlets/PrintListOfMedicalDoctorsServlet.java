package com.dominikazb.medicalproducts.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dominikazb.medicalproducts.engine.MedicalProduct;
import com.dominikazb.medicalproducts.engine.PrintListsOfSearchedDoctorsAndProducts;

@WebServlet("/listOfMedicalDoctors")
public class PrintListOfMedicalDoctorsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TreeMap<MedicalProduct, ArrayList<Object>> initialMapOfMedicalProductsAndDoctors = (TreeMap<MedicalProduct, ArrayList<Object>>) getServletContext().getAttribute("initialMapOfMedicalProductsAndDoctors");
		HttpSession session = request.getSession(false);
		PrintListsOfSearchedDoctorsAndProducts printLists = new PrintListsOfSearchedDoctorsAndProducts();
		ArrayList<String> listOfMedicalDoctorsThatCanPrescribeParticularProduct = printLists.getListOfMedicalDoctorsForParticularProduct(initialMapOfMedicalProductsAndDoctors, (String)session.getAttribute("inputMedicalProduct"));
		request.setAttribute("listOfMedicalDoctorsThatCanPrescribeParticularProduct", listOfMedicalDoctorsThatCanPrescribeParticularProduct);
		request.getRequestDispatcher("/listOfMedicalDoctors.jsp").forward(request, response);
	}

}
