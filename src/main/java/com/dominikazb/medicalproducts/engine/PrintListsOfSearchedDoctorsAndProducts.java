package com.dominikazb.medicalproducts.engine;

import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;

public class PrintListsOfSearchedDoctorsAndProducts {
	
	public ArrayList<String>  getListOfMedicalDoctorsForParticularProduct(Map<MedicalProduct, ArrayList<Object>> inputMap, String searchedMedicalProduct) {
		ArrayList<String> listOfMedicalDoctors = new ArrayList<>();
		for(Map.Entry<MedicalProduct, ArrayList<Object>> entry : inputMap.entrySet()) {
			String nameAndMedicalIdOfMedicalProduct = entry.getKey().getMedicalID() + " - " + entry.getKey().getName();
			ArrayList<Object> listOfMedicalDoctorsFromInputMap = entry.getValue();

			for(Object o : listOfMedicalDoctorsFromInputMap) {
				if(searchedMedicalProduct.equals(nameAndMedicalIdOfMedicalProduct)) {
					String medicalDoctorString = o.toString();
					listOfMedicalDoctors.add(medicalDoctorString);
				}
			}
		}
		Collections.sort(listOfMedicalDoctors, Collator.getInstance(new Locale("pl", "PL")));
		return listOfMedicalDoctors;
	}
	
	
	public ArrayList<String> getListOfMedicalProductsForParticularSpecialty(Map<MedicalProduct, ArrayList<Object>> inputMap, String medicalDoctor) {
		ArrayList<String> listOfMedicalProducts = new ArrayList<>();
		for(Map.Entry<MedicalProduct, ArrayList<Object>> entry : inputMap.entrySet()) {
			MedicalProduct medicalProduct2 = entry.getKey();
			String nameOfMedicalProduct2 = medicalProduct2.getMedicalID() + " - " + medicalProduct2.getName();
			for(Object object : entry.getValue()) {
				String product = object.toString();
				if(medicalDoctor.equals(product)) {
					listOfMedicalProducts.add(nameOfMedicalProduct2);	
				}
			}
		}
		

		
		Collections.sort(listOfMedicalProducts, Collator.getInstance(new Locale("pl", "PL")));
		return listOfMedicalProducts;
	}
	
}