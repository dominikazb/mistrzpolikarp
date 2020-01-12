package com.dominikazb.medicalproducts.engine;

import java.io.Serializable;
import java.util.Comparator;



public class MedicalProduct implements Serializable, Comparable<MedicalProduct> {

	private static final long serialVersionUID = 1L;
	
	private int uniqueID;
	private String medicalID;
	private String name;
	
	public MedicalProduct(int uniqueID, String medicalID, String name) {
		super();
		this.uniqueID = uniqueID;
		this.medicalID = medicalID;
		this.name = name;
	}

	public int getUniqueID() {
		return uniqueID;
	}

	public void setUniqueID(int uniqueID) {
		this.uniqueID = uniqueID;
	}

	public String getMedicalID() {
		return medicalID;
	}

	public void setMedicalID(String medicalID) {
		this.medicalID = medicalID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return String.format("MedicalProduct [uniqueID=%s, medicalID=%s, name=%s]", uniqueID, medicalID, name);
	}
	
	@Override
    public int compareTo(MedicalProduct mp){
        return Comparator.comparing(MedicalProduct::getUniqueID)
                .compare(this, mp);
    }
	
}
