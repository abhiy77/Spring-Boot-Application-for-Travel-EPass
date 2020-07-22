package com.epass.travel.model;

public class DistrictData {
	private String id;
	private String state;
	private String name;
	private String confirmed;
	private String recovered;
	private String deaths;
	private String oldConfirmed;
	private String oldRecovered;
	private String oldDeaths;
	private String zone;
	
	@Override
	public String toString() {
		return "DistrictData [id=" + id + ", state=" + state + ", name=" + name + ", confirmed=" + confirmed
				+ ", recovered=" + recovered + ", deaths=" + deaths + ", oldConfirmed=" + oldConfirmed
				+ ", oldRecovered=" + oldRecovered + ", oldDeaths=" + oldDeaths + ", zone=" + zone + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getConfirmed() {
		return confirmed;
	}

	public void setConfirmed(String confirmed) {
		this.confirmed = confirmed;
	}

	public String getRecovered() {
		return recovered;
	}

	public void setRecovered(String recovered) {
		this.recovered = recovered;
	}

	public String getDeaths() {
		return deaths;
	}

	public void setDeaths(String deaths) {
		this.deaths = deaths;
	}

	public String getOldConfirmed() {
		return oldConfirmed;
	}

	public void setOldConfirmed(String oldConfirmed) {
		this.oldConfirmed = oldConfirmed;
	}

	public String getOldRecovered() {
		return oldRecovered;
	}

	public void setOldRecovered(String oldRecovered) {
		this.oldRecovered = oldRecovered;
	}

	public String getOldDeaths() {
		return oldDeaths;
	}

	public void setOldDeaths(String oldDeaths) {
		this.oldDeaths = oldDeaths;
	}

	public String getZone() {
		return zone;
	}

	public void setZone(String zone) {
		this.zone = zone;
	}
	
}