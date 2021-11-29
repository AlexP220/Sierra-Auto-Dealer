package com.sad.entity;

public class Car {
	private String make;
	private String model;
	private String vin;
	private int year;
	private String imageURL;
	private String dateOfPurchase;
	private boolean newCar;
	private Double boughtPrice;
	private Double sellPrice;
	private CarDescription carDescription;
	//DecimalFormat df = new DecimalFormat("#,###.##");	
	
	
	public Car(String make, String model, String vin, int year, String imageURL, String dateOfPurchase, boolean newCar,
			Double boughtPrice, Double sellPrice, CarDescription carDescription) {
		super();
		this.make = make;
		this.model = model;
		this.vin = vin;
		this.year = year;
		this.imageURL = imageURL;
		this.dateOfPurchase = dateOfPurchase;
		this.newCar = newCar;
		this.boughtPrice = boughtPrice;
		this.sellPrice = sellPrice;
		this.carDescription = carDescription;
	}




	public Car() {
		
	}

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getVin() {
		return vin;
	}

	public void setVin(String vin) {
		this.vin = vin;
	}

	public int getYear() {
		return year;
	}

	
	public void setYear(int year) {
		this.year = year;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public String getDateOfPurchase() {
		
		return dateOfPurchase;
	}

	public void setDateOfPurchase(String dateOfPurchase) {
		this.dateOfPurchase = dateOfPurchase;
	}

	public boolean isNewCar() {
		return newCar;
	}

	public void setNewCar(boolean newCar) {
		this.newCar = newCar;
	}

	public CarDescription getCarDescription() {
		return carDescription;
	}

	public void setCarDescription(CarDescription carDescription) {
		this.carDescription = carDescription;
	}

	public Double getBoughtPrice() {
		
//		double sellBoughteFmt =Double.valueOf(df.format(boughtPrice));
//		return sellBoughteFmt;
		return boughtPrice;
	}

	public void setBoughtPrice(Double boughtPrice) {
		this.boughtPrice = boughtPrice;
	}
	

	public Double getSellPrice() {
//		double sellPriceFmt = Double.valueOf(df.format(sellPrice));
//		return sellPriceFmt;
		return sellPrice;
	}


	public void setSellPrice(Double sellPrice) {
		this.sellPrice = sellPrice;
	}
	
	


	@Override
	public String toString() {
		return "Car [make=" + make + ", model=" + model + ", vin=" + vin + ", year=" + year + ", imageURL=" + imageURL
				+ ", dateOfPurchase=" + dateOfPurchase + ", newCar=" + newCar + ", carDescription=" + carDescription
				+ "]";
	}


	

}
