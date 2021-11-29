package com.sad.entity;

public class Employee {
	
	private String firstName;
	private String lastName;
	private int employeeID;
	private String employeePassword;
	
	public Employee(String firstName, String lastName, int employeeID, String employeePassword) {
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.employeeID = employeeID;
		this.employeePassword = employeePassword;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getEmployeeID() {
		return employeeID;
	}

	public void setEmployeeID(int employeeID) {
		this.employeeID = employeeID;
	}

	public String getEmployeePassword() {
		return employeePassword;
	}

	public void setEmployeePassword(String employeePassword) {
		this.employeePassword = employeePassword;
	}
	
	
	
	
	

}
