package com.dominikazb.medicalproducts.engine;

import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

public class PrintListsOfSearchedDoctorsAndProducts {
	
	public ArrayList<String>  getListOfMedicalDoctorsForParticularProduct(TreeMap<MedicalProduct, ArrayList<Object>> inputMap, String searchedMedicalProduct) {
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
	
	
	public ArrayList<String> getListOfMedicalProductsForParticularSpecialty(TreeMap<MedicalProduct, ArrayList<Object>> inputMap, String searchedMedicalDoctor) {
		ArrayList<String> listOfMedicalProducts = new ArrayList<>();

		for(Map.Entry<MedicalProduct, ArrayList<Object>> entry : inputMap.entrySet()) {
			String medicalProduct = entry.getKey().getMedicalID() + " - " + entry.getKey().getName();
			for(Object object : entry.getValue()) {
				String medicalDoctor = object.toString();
				if(searchedMedicalDoctor.equals(medicalDoctor)) {
					listOfMedicalProducts.add(medicalProduct);	
				}
			}
		}
		return listOfMedicalProducts;
	}
	
}