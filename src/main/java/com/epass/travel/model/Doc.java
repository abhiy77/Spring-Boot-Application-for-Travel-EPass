package com.epass.travel.model;

import javax.persistence.Lob;

import org.springframework.stereotype.Component;

@Component
public class Doc {
	
	private String docName;
	private String docType;
	
	@Lob
	private byte[] data;
	
	public Doc() {}

	public Doc(String docName, String docType, byte[] data) {
		super();
		this.docName = docName;
		this.docType = docType;
		this.data = data;
	}

	public String getDocName() {
		return docName;
	}

	public void setDocName(String docName) {
		this.docName = docName;
	}

	public String getDocType() {
		return docType;
	}

	public void setDocType(String docType) {
		this.docType = docType;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

}