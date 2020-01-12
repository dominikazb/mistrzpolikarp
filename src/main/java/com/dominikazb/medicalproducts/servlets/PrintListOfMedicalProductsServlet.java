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

@WebServlet("/listOfMedicalProducts")
public class PrintListOfMedicalProductsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
       
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TreeMap<MedicalProduct, ArrayList<Object>> initialMapOfMedicalProductsAndDoctors = (TreeMap<MedicalProduct, ArrayList<Object>>) getServletContext().getAttribute("initialMapOfMedicalProductsAndDoctors");
		HttpSession session = request.getSession(false);
		PrintListsOfSearchedDoctorsAndProducts printLists = new PrintListsOfSearchedDoctorsAndProducts();
		ArrayList<String> listOfMedicalProductsForParticularSpecialty = printLists.getListOfMedicalProductsForParticularSpecialty(initialMapOfMedicalProductsAndDoctors, (String)session.getAttribute("inputMedicalDoctor"));
		request.setAttribute("listOfMedicalProductsForParticularSpecialty", listOfMedicalProductsForParticularSpecialty);
		

		
		
		request.getRequestDispatcher("/listOfMedicalProducts.jsp").forward(request, response);
	}


}
