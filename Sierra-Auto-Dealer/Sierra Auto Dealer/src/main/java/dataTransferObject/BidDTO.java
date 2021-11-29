package dataTransferObject;

public class BidDTO {

	private String vin;
	private double bid;
	private double minSellPrice;
	
	
	public String getVin() {
		return vin;
	}
	public void setVin(String vin) {
		this.vin = vin;
	}
	public double getBid() {
		return bid;
	}
	public void setBid(double bid) {
		this.bid = bid;
	}
	public double getMinSellPrice() {
		return minSellPrice;
	}
	public void setMinSellPrice(double minSellPrice) {
		this.minSellPrice = minSellPrice;
	}
	
	
	
	
}
