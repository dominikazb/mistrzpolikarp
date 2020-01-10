package com.dominikazb.medicalproducts.engine;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;
import com.dominikazb.medicalproducts.engine.MedicalProduct;;

public class ReadJSon {
	
	Map<MedicalProduct, ArrayList<Object>> outputMap = new HashMap<>();
	
	@SuppressWarnings("unchecked")
	public void readJSonFile() throws JsonParseException, JsonMappingException, IOException {
		
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
			System.out.println("Medical product: " + medicalProduct);
			ArrayList<Object> listOfDoctorsArrayList = (ArrayList<Object>) newMap.get("doctor");
			for(Object c : listOfDoctorsArrayList) {
				String doctorsSpecialty = c.toString();
				System.out.println(doctorsSpecialty);
			}
			System.out.println("***********");
		}
	}
}