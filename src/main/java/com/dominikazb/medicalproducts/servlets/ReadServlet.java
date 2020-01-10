package com.dominikazb.medicalproducts.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dominikazb.medicalproducts.engine.MedicalProduct;
import com.dominikazb.medicalproducts.engine.ReadJSon;


@WebServlet("/read")
public class ReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		ReadJSon readJson = new ReadJSon();	
		Map<MedicalProduct, ArrayList<Object>> medicalProductsDoctorsMap = readJson.readJSonFile();
		ArrayList<String> listOfMedicalProducts = readJson.getListOfMedicalProducts(medicalProductsDoctorsMap);
		session.setAttribute("listOfMedicalProducts", listOfMedicalProducts);

		
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		
	}

}
