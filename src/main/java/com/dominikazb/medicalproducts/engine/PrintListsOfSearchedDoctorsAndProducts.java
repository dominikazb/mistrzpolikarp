package com.dominikazb.medicalproducts.engine;

import java.util.ArrayList;
import java.util.Map;

public class PrintListsOfSearchedDoctorsAndProducts {
	
	public void getListOfMedicalDoctorsForParticularProduct() {
		
	}
	
	
	public ArrayList<String> getListOfMedicalProductsForParticularSpecialty(Map<MedicalProduct, ArrayList<Object>> inputMap, String medicalDoctor) {
		ArrayList<String> listOfMedicalProducts = new ArrayList<>();
		
		for(Map.Entry<MedicalProduct, ArrayList<Object>> entry : inputMap.entrySet()) {
			MedicalProduct medicalProduct = entry.getKey();
			String nameOfMedicalProduct = medicalProduct.getName();
			for(Object object : entry.getValue()) {
				String product = object.toString();
				if(medicalDoctor.equals(product)) {
					listOfMedicalProducts.add(nameOfMedicalProduct);
					
				}
			}
		}
		System.out.println("what??");
		return listOfMedicalProducts;
	}
	
	
	
}