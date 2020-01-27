package com.dominikazb.medicalproducts.engine;

import java.io.IOException;
import java.net.URL;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.stream.Collectors;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;
import com.dominikazb.medicalproducts.engine.MedicalProduct;;

public class ReadJSon {
	
	Map<MedicalProduct, ArrayList<Object>> medicalDoctorsAndProductsMap = new HashMap<>();
	TreeMap<MedicalProduct, ArrayList<Object>> medicalDoctorsAndProductsMapSorted = new TreeMap<>();
	
	@SuppressWarnings("unchecked")
	public TreeMap<MedicalProduct, ArrayList<Object>> readJSonFile() throws JsonParseException, JsonMappingException, IOException {	
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
			String timeOfUse = (String) newMap.get("timeOfUse");
			String limitForFunding = (String) newMap.get("limitForFunding");
			String patientsShares = (String) newMap.get("patientsShares");
			
			MedicalProduct medicalProduct = new MedicalProduct(uniqueID, medicalID, productsName, timeOfUse, limitForFunding, patientsShares);
			ArrayList<Object> listOfDoctorsArrayList = (ArrayList<Object>) newMap.get("doctor");
			medicalDoctorsAndProductsMap.put(medicalProduct, listOfDoctorsArrayList);
		}
		
		//sort the map by uniqueID field
		medicalDoctorsAndProductsMapSorted.putAll(medicalDoctorsAndProductsMap);
		
		return medicalDoctorsAndProductsMapSorted;
	}
	
	public ArrayList<String> getListOfMedicalProducts(TreeMap<MedicalProduct, ArrayList<Object>> inputMap) {
		ArrayList<String> listOfMedicalProducts = new ArrayList<>();
		for(Map.Entry<MedicalProduct, ArrayList<Object>> entry : inputMap.entrySet()) {
			listOfMedicalProducts.add(entry.getKey().getMedicalID() + " - " + entry.getKey().getName());
		}	
		return listOfMedicalProducts;
	}
	
	public ArrayList<String> getListOfMedicalDoctors(TreeMap<MedicalProduct, ArrayList<Object>> inputMap) {
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