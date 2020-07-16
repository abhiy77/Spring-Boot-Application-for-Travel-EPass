package com.epass.travel.model;

import java.util.Arrays;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table(name = "userInfo")
public class User {
	// Personal info
	@Id
	private String email;

	private String fullName;
	private String phoneNum;
	private String password;
	private String gender;
	private String address;

	// Travel info
	private Date startDate;
	private Date returnDate;
	private String reason;
	private String vehicleNo;
	private String source;
	private String destination;

	// Proof document
	private String docType;
	private String docName;
	@Lob
	private byte[] docBytes;

	// Image document
	private String imageType;
	private String imageName;
	@Lob
	private byte[] imageBytes;

	private boolean isAdmin;
	private boolean verified;
	private String status = "Pending";

	@Autowired
	@OneToOne(targetEntity = ConfirmationToken.class, fetch = FetchType.EAGER)
	@JoinColumn(nullable = false,name = "email")
	private ConfirmationToken token;

	// Getters and Setters

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getVehicleNo() {
		return vehicleNo;
	}

	public void setVehicleNo(String vehicleNo) {
		this.vehicleNo = vehicleNo;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getDocType() {
		return docType;
	}

	public void setDocType(String docType) {
		this.docType = docType;
	}

	public String getDocName() {
		return docName;
	}

	public void setDocName(String docName) {
		this.docName = docName;
	}

	public byte[] getDocBytes() {
		return docBytes;
	}

	public void setDocBytes(byte[] docBytes) {
		this.docBytes = docBytes;
	}

	public boolean isAdmin() {
		return isAdmin;
	}

	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}

	public boolean isVerified() {
		return verified;
	}

	public void setVerified(boolean verified) {
		this.verified = verified;
	}

	public String getImageType() {
		return imageType;
	}

	public void setImageType(String imageType) {
		this.imageType = imageType;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public byte[] getImageBytes() {
		return imageBytes;
	}

	public void setImageBytes(byte[] imageBytes) {
		this.imageBytes = imageBytes;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "User [email=" + email + ", fullName=" + fullName + ", phoneNum=" + phoneNum + ", password=" + password
				+ ", gender=" + gender + ", address=" + address + ", startDate=" + startDate + ", returnDate="
				+ returnDate + ", reason=" + reason + ", vehicleNo=" + vehicleNo + ", source=" + source
				+ ", destination=" + destination + ", docType=" + docType + ", docName=" + docName + ", docBytes="
				+ Arrays.toString(docBytes) + ", imageType=" + imageType + ", imageName=" + imageName + ", imageBytes="
				+ Arrays.toString(imageBytes) + ", isAdmin=" + isAdmin + ", verified=" + verified + ", status=" + status
				+ ", token=" + token + ", getEmail()=" + getEmail() + ", getFullName()=" + getFullName()
				+ ", getPhoneNum()=" + getPhoneNum() + ", getPassword()=" + getPassword() + ", getGender()="
				+ getGender() + ", getAddress()=" + getAddress() + ", getStartDate()=" + getStartDate()
				+ ", getReturnDate()=" + getReturnDate() + ", getReason()=" + getReason() + ", getVehicleNo()="
				+ getVehicleNo() + ", getSource()=" + getSource() + ", getDestination()=" + getDestination()
				+ ", getDocType()=" + getDocType() + ", getDocName()=" + getDocName() + ", getDocBytes()="
				+ Arrays.toString(getDocBytes()) + ", isAdmin()=" + isAdmin() + ", isVerified()=" + isVerified()
				+ ", getImageType()=" + getImageType() + ", getImageName()=" + getImageName() + ", getImageBytes()="
				+ Arrays.toString(getImageBytes()) + ", getStatus()=" + getStatus() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
}