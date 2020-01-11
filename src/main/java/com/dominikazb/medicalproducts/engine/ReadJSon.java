package com.dominikazb.medicalproducts.engine;

import java.io.IOException;
import java.net.URL;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.stream.Collectors;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;
import com.dominikazb.medicalproducts.engine.MedicalProduct;;

public class ReadJSon {
	
	Map<MedicalProduct, ArrayList<Object>> outputMap = new HashMap<>();
	
	@SuppressWarnings("unchecked")
	public Map<MedicalProduct, ArrayList<Object>> readJSonFile() throws JsonParseException, JsonMappingException, IOException {	
		ObjectMapper mapper = new ObjectMapper(); 
		mapper.configure(org.codehaus.jackson.map.DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES, false); //ignore fields that are not formatted properly
		TypeReference<HashMap<Object,Object>> typeRef = new TypeReference<HashMap<Object,Object>>() {};
		HashMap<Object, Object> resultsMap = mapper.readValue(new URL("https://api.npoint.io/6d8c090332bb3db7da38"), typeRef);
		ArrayList<Object> featuresArrayList = (ArrayList<Object>) resultsMap.get("products");
		
		for(Object o : featuresArrayList) {
			Map<Object, Object> newMap = (Map<Object, Object>) o;
			String uniqueIDString = (String) newMap.get("uniqueID");
			int uniqueID = Integer.parseInt(uniqueIDString);
			String medicalID = (String) newMap.get("medicalID");
			String productsName = (String) newMap.get("name");
			
			MedicalProduct medicalProduct = new MedicalProduct(uniqueID, medicalID, productsName);
			ArrayList<Object> listOfDoctorsArrayList = (ArrayList<Object>) newMap.get("doctor");
			outputMap.put(medicalProduct, listOfDoctorsArrayList);
		}
		return outputMap;
	}
	
	public ArrayList<String> getListOfMedicalProducts(Map<MedicalProduct, ArrayList<Object>> inputMap) {
		ArrayList<String> listOfMedicalProducts = new ArrayList<>();
		//sort the list
		List<MedicalProduct> medicalProductsList = new ArrayList<>();
		for(Map.Entry<MedicalProduct, ArrayList<Object>> entry : inputMap.entrySet()) {
			medicalProductsList.add(entry.getKey());
		}	
		Collections.sort(medicalProductsList, (left, right) -> left.getUniqueID() - right.getUniqueID());
		
		for(int i=0; i < medicalProductsList.size(); i++) {
			listOfMedicalProducts.add(medicalProductsList.get(i).getMedicalID() + " - " + medicalProductsList.get(i).getName());
		}
		return listOfMedicalProducts;
	}
	
	public ArrayList<String> getListOfMedicalDoctors(Map<MedicalProduct, ArrayList<Object>> inputMap) {
		ArrayList<String> listOfMedicalDoctors = new ArrayList<>();
		for(Map.Entry<MedicalProduct, ArrayList<Object>> entry : inputMap.entrySet()) {
			for(Object medicalDoctorObject : entry.getValue()) {
				String medicalDoctor = medicalDoctorObject.toString();
				listOfMedicalDoctors.add(medicalDoctor);
			}
		}
		ArrayList<String> listWithoutDuplicates = (ArrayList<String>) listOfMedicalDoctors.stream().distinct().collect(Collectors.toList());
		Collections.sort(listWithoutDuplicates, Collator.getInstance(new Locale("pl", "PL")));
		return listWithoutDuplicates;
	}
	
	
	
	
}