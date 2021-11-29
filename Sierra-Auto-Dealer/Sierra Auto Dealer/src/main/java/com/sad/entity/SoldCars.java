package com.sad.entity;

import java.util.UUID;

public class SoldCars {
	
	private UUID sellerID;
	private String vin;
	private Double sellPrice;
	private String sellDate;
	
	
	
	public SoldCars(UUID sellerID, String vin, Double sellPrice, String sellDate) {
		
		this.sellerID = sellerID;
		this.vin = vin;
		this.sellPrice = sellPrice;
		this.sellDate = sellDate;
	}
	
	
	public SoldCars(String vin, Double sellPrice, String sellDate) {
		
		this.sellerID = UUID.randomUUID();
		this.vin = vin;
		this.sellPrice = sellPrice;
		this.sellDate = sellDate;
	}
	
	
	public SoldCars() {
		
	}


	


	public UUID getSellerID() {
		return sellerID;
	}
	public void setSellerID(UUID sellerID) {
		this.sellerID = sellerID;
	}
	public String getVin() {
		return vin;
	}
	public void setVin(String vin) {
		this.vin = vin;
	}
	public Double getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(Double sellPrice) {
		this.sellPrice = sellPrice;
	}
	public String getSellDate() {
		return sellDate;
	}
	public void setSellDate(String sellDate) {
		this.sellDate = sellDate;
	}
	
	
	

}
