package com.dominikazb.medicalproducts.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dominikazb.medicalproducts.engine.MedicalProduct;


@WebServlet("/read")
public class ReadServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Map<MedicalProduct, ArrayList<Object>> medicalProductsDoctorsMap = (Map<MedicalProduct, ArrayList<Object>>) getServletContext().getAttribute("medicalProductsDoctorsMap");


		
		request.getRequestDispatcher("/earthquakesList.jsp").forward(request, response);
	}
	   
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


//		ArrayList<String> resultsListOfMedicalProductsForParticularSpecialty = printLists.getListOfMedicalProductsForParticularSpecialty(medicalProductsDoctorsMap, "Lekarz okulistyki");
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		
	}
	
}
