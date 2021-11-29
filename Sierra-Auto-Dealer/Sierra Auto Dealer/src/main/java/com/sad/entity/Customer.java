package com.sad.entity;

import java.util.ArrayList;
import java.util.Collections;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sad.service.SadService;
@Component
public class Customer {

	private String firstName;
	private String lastName;
	private UUID customerID;
	private String address;
	private String email;
	private String phoneNumber;
	private String userName;
	private String customerPassword;
	

	
	
	
	public Customer() {
		this.customerID = UUID.randomUUID();
	}




	
	
	public Customer(String firstName, String lastName, String address, String email, String phoneNumber,
			String userName, String customerPassword) {
		this.firstName = firstName;
		this.lastName = lastName;
		
		this.customerID = UUID.randomUUID();
		this.address = address;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.userName = userName;
		this.customerPassword = customerPassword;
	}



	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getFirstName() {
		return firstName;
	}
	
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public UUID getCustomerID() {
		return customerID;
	}

	public void setCustomerID(UUID customerID) {
		this.customerID = customerID;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getCustomerPassword() {
		return customerPassword;
	}

	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}



	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}




	@Override
	public String toString() {
		return "Customer [firstName=" + firstName + ", lastName=" + lastName + ", customerID=" + customerID
				+ ", address=" + address + ", email=" + email + ", phoneNumber=" + phoneNumber + ", userName="
				+ userName + ", customerPassword=" + customerPassword + "]";
	}

	
	
}
