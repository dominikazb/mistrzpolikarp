package com.dominikazb.medicalproducts.engine;

import java.io.Serializable;
import java.util.Comparator;



public class MedicalProduct implements Serializable, Comparable<MedicalProduct> {

	private static final long serialVersionUID = 1L;
	
	private int uniqueID;
	private String medicalID;
	private String name;
	private String timeOfUse;
	private String limitForFunding;
	private String patientsShares;
	
	public MedicalProduct(int uniqueID, String medicalID, String name, String timeOfUse, String limitForFunding, String patientsShares) {
		super();
		this.uniqueID = uniqueID;
		this.medicalID = medicalID;
		this.name = name;
		this.timeOfUse = timeOfUse;
		this.limitForFunding = limitForFunding;
		this.patientsShares = patientsShares;
		
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

	public String getTimeOfUse() {
		return timeOfUse;
	}

	public void setTimeOfUse(String timeOfUse) {
		this.timeOfUse = timeOfUse;
	}

	public String getLimitForFunding() {
		return limitForFunding;
	}

	public void setLimitForFunding(String limitForFunding) {
		this.limitForFunding = limitForFunding;
	}

	public String getPatientsShares() {
		return patientsShares;
	}

	public void setPatientsShares(String patientsShares) {
		this.patientsShares = patientsShares;
	}
	
	@Override
	public String toString() {
		return String.format(
				"MedicalProduct [uniqueID=%s, medicalID=%s, name=%s, timeOfUse=%s, limitForFunding=%s, patientsShares=%s]",
				uniqueID, medicalID, name, timeOfUse, limitForFunding, patientsShares);
	}

	@Override
    public int compareTo(MedicalProduct mp){
        return Comparator.comparing(MedicalProduct::getUniqueID)
                .compare(this, mp);
    }
	
}
