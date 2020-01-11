package com.dominikazb.medicalproducts.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import com.dominikazb.medicalproducts.engine.MedicalProduct;
import com.dominikazb.medicalproducts.engine.ReadJSon;


public class ContextListenerImpl implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext sc = sce.getServletContext();
		ReadJSon readJson = new ReadJSon();
		try {
			Map<MedicalProduct, ArrayList<Object>> medicalProductsDoctorsMap = readJson.readJSonFile();
			ArrayList<String> listOfMedicalDoctors = readJson.getListOfMedicalDoctors(medicalProductsDoctorsMap);
			ArrayList<String> listOfMedicalProducts = readJson.getListOfMedicalProducts(medicalProductsDoctorsMap);
			sc.setAttribute("medicalProductsDoctorsMap", medicalProductsDoctorsMap);
			sc.setAttribute("listOfMedicalDoctors", listOfMedicalDoctors);
			sc.setAttribute("listOfMedicalProducts", listOfMedicalProducts);
			
			
			System.out.println("this is only read once, right?");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {

	}
}