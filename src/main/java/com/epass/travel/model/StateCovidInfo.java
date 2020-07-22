package com.epass.travel.model;

import java.util.List;

public class StateCovidInfo {
	private String id;
	private String state;
	private String active;
	private String confirmed;
	private String recovered;
	private String deaths;
	private String aChanges,cChanges,rChanges,dChanges;
	private List<DistrictData> districtData;
	private String cchanges,dchanges,rchanges,achanges;
	
	@Override
	public String toString() {
		return "StateCovidInfo [id=" + id + ", state=" + state + ", active=" + active + ", confirmed=" + confirmed
				+ ", recovered=" + recovered + ", deaths=" + deaths + ", aChanges=" + aChanges + ", cChanges="
				+ cChanges + ", rChanges=" + rChanges + ", dChanges=" + dChanges + ", districtData=" + districtData
				+ ", cchanges=" + cchanges + ", dchanges=" + dchanges + ", rchanges=" + rchanges + ", achanges="
				+ achanges + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
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

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
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

	public String getaChanges() {
		return aChanges;
	}

	public void setaChanges(String aChanges) {
		this.aChanges = aChanges;
	}

	public String getcChanges() {
		return cChanges;
	}

	public void setcChanges(String cChanges) {
		this.cChanges = cChanges;
	}

	public String getrChanges() {
		return rChanges;
	}

	public void setrChanges(String rChanges) {
		this.rChanges = rChanges;
	}

	public String getdChanges() {
		return dChanges;
	}

	public void setdChanges(String dChanges) {
		this.dChanges = dChanges;
	}

	public List<DistrictData> getDistrictData() {
		return districtData;
	}

	public void setDistrictData(List<DistrictData> districtData) {
		this.districtData = districtData;
	}

	public String getCchanges() {
		return cchanges;
	}

	public void setCchanges(String cchanges) {
		this.cchanges = cchanges;
	}

	public String getDchanges() {
		return dchanges;
	}

	public void setDchanges(String dchanges) {
		this.dchanges = dchanges;
	}

	public String getRchanges() {
		return rchanges;
	}

	public void setRchanges(String rchanges) {
		this.rchanges = rchanges;
	}

	public String getAchanges() {
		return achanges;
	}

	public void setAchanges(String achanges) {
		this.achanges = achanges;
	}
	
}