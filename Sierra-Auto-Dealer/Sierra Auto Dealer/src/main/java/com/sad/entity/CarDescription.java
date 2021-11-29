package com.sad.entity;

public class CarDescription  {
	private String color;
	private int milage;
	private String description;
	
	
	
	public CarDescription(String color, int milage, String description) {
		this.color = color;
		this.milage = milage;
		this.description = description;
	}

	public CarDescription () {
		
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getMilage() {
		return milage;
	}

	public void setMilage(int milage) {
		this.milage = milage;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "CarDescription [color=" + color + ", milage=" + milage + ", description=" + description + "]";
	}
	
	

}
