package com.epass.travel.model;

import java.util.Date;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.beans.factory.annotation.Autowired;

@Entity
public class ConfirmationToken {

	@Column(name = "confirmation_token")
	private String confirmationToken;


	@Temporal(TemporalType.TIMESTAMP)
	private Date createdDate;
	
	@Id
	private String email;

//	@OneToOne(targetEntity = User.class, fetch = FetchType.EAGER)
//	@JoinColumn(nullable = false,name = "email")

	public ConfirmationToken() {}
	
	public ConfirmationToken(String email) {
		createdDate = new Date();
		confirmationToken = UUID.randomUUID().toString();
		this.email = email;
	}


	public String getUserEmail() {
		return email;
	}

	public void setUserEmail(String userEmail) {
		this.email = userEmail;
	}

	public String getConfirmationToken() {
		return confirmationToken;
	}

	public void setConfirmationToken(String confirmationToken) {
		this.confirmationToken = confirmationToken;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

//	public User getUser() {
//		return user;
//	}
//
//	public void setUser(User user) {
//		this.user = user;
//	}

}