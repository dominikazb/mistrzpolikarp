package com.dominikazb.medicalproducts.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.TreeMap;

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
			TreeMap<MedicalProduct, ArrayList<Object>> initialMapOfMedicalProductsAndDoctors = readJson.readJSonFile();
			ArrayList<String> initialListOfMedicalProducts = readJson.getListOfMedicalProducts(initialMapOfMedicalProductsAndDoctors);
			ArrayList<String> initialListOfMedicalDoctors = readJson.getListOfMedicalDoctors(initialMapOfMedicalProductsAndDoctors);
			sc.setAttribute("initialMapOfMedicalProductsAndDoctors", initialMapOfMedicalProductsAndDoctors);
			sc.setAttribute("listOfMedicalProducts", initialListOfMedicalProducts);
			sc.setAttribute("listOfMedicalDoctors", initialListOfMedicalDoctors);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {

	}
}