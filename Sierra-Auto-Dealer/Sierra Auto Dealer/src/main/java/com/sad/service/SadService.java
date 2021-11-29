package com.sad.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sad.entity.Car;
import com.sad.entity.Customer;
import com.sad.entity.MockDatabase;
import com.sad.entity.SoldCars;

@Service
public class SadService {

	@Autowired
	MockDatabase mD2;

	public int findCustomerID() {
		return mD2.getAllCustomer().size();
	}

	public boolean authenticate(Customer customer) {
		List<Customer> allCustomer = mD2.getAllCustomer();
		String userName = customer.getUserName();
		String password = customer.getCustomerPassword();
		boolean authenticated = false;
		for (Customer loopCustomer : allCustomer) {
			if (loopCustomer.getUserName().equals(userName) && loopCustomer.getCustomerPassword().equals(password)) {
				authenticated = true;
				// return authenticated;
			}
		}
		return authenticated;
	}

	public Car findByVinNumber(String vinNumber) {
		Car display = new Car();
		for (Car item : mD2.getAllCars()) {
			String displayitem = item.getVin();
			if (vinNumber.equals(displayitem)) {
				display = item;
				return display;
			}
		}
		return null;
	}

	
	////////////SEARCH METHOD FOR NAV BAR - MAKE or MODEL////////////////
	
	public ArrayList<Car> searchFor(String searchReq) {
		String schToLoCase = searchReq.toLowerCase();
		
		ArrayList<Car> cars = new ArrayList<Car>();
		for (Car item : mD2.getAllCars()) {
			if (schToLoCase.equals(item.getModel().toLowerCase()) || (schToLoCase.equals(item.getMake().toLowerCase()) )) {
				cars.add(item);
				
			}
		}
		return cars;
	}

	public Double bidMin(Double boughtPrice) {
		// Double bpToDouble = Double.parseDouble(boughtPrice);
		Double subtractAmount = (boughtPrice * .1);
		Double minBidPrice = (boughtPrice - subtractAmount);
		return minBidPrice;
	}

	public boolean sellPriceOk(Double sellPrice, String minSellPrice) {
		if (sellPrice < Double.parseDouble(minSellPrice)) {
			return true;
		}
		return false;
	}

	
	public Customer findCustomer(String username, String password) {
		Customer newCustomer = new Customer();
		for (Customer cust : mD2.getAllCustomer()) {
			if (cust.getUserName().equals(username) && cust.getCustomerPassword().equals(password)) {
				newCustomer = cust;
				return newCustomer;
			}
		}
		return null;
	}

	/////////// DATE FORMAT AND OLDER THERN 120 DAYS////////////////

	public boolean olderThen120(String carPurchaseDate) {
		LocalDate date1 = LocalDate.now();
		LocalDate now = stringDateToLocalDate(carPurchaseDate);
		LocalDate nowPlus120Days = now.plusDays(120);
		if (date1.isAfter(nowPlus120Days) || date1.isEqual(nowPlus120Days)) {
			System.out.println("Yes, car is 120 days past purchase date");
			return true;
		} else {
			System.out.println("No, car is not 120 days past purchase date");
			return false;
		}
	}

	public String dateFormatter(String date) {
		// takes in MM/DD/YYYY
		System.out.println(date+"here7");
		String[] dateSplit = date.split("/");
		System.out.println(Arrays.toString(dateSplit));
		if(dateSplit.length < 2) {
			return date;
		}
		String month = dateSplit[0];
		String day = dateSplit[1];
		String year = dateSplit[2];
		String date2 = year + "-" + month + "-" + day;
		// returns YYYY-MM-DD
		return date2;

	}

	public LocalDate stringDateToLocalDate(String date) {
		String inputDate = dateFormatter(date);
		String date1 = inputDate;
		LocalDate localDate = LocalDate.parse(date1);
		return localDate;

	}

	public String sellDate() {
		LocalDate today = LocalDate.now();
		String formattedDate = today.format(DateTimeFormatter.ofLocalizedDate(FormatStyle.LONG));
		formattedDate = today.format(DateTimeFormatter.ofLocalizedDate(FormatStyle.SHORT));
		return formattedDate;
	}
	
	public LocalDate carDate(String date) {
		LocalDate date1 = stringDateToLocalDate(dateFormatter(date));
		return date1;
	}
	public String carDateString(String date) {
		String date1 = dateFormatter(date);
		return date1;
	}
	
	public ArrayList<SoldCars> setCarSellDateToString(){
		System.out.println("here15");
		ArrayList<SoldCars> car1 = mD2.getAllSoldCars();
		for(int i = 0; i < car1.size() ; i++) {
			car1.get(i).setSellDate(dateFormatter(car1.get(i).getSellDate()));;
			
		}
		return car1;
	}

	////////////RANDOM CAR FOR INDEX PAGE////////////////////////

	public Car randomCar() {
		Random random = new Random();
		int randomIndex = random.nextInt(mD2.getAllCars().size());
		return mD2.getAllCars().get(randomIndex);
	}
	
	//////////SORT SELL DATE BY RECENT FIRST////////////


	public ArrayList<SoldCars> sortSoldCarsByDate(){
		System.out.println("here1");
		//ArrayList<SoldCars> cars = new ArrayList<SoldCars>();
		ArrayList<SoldCars> car1 = setCarSellDateToString();
		SoldCars temp;
		//System.out.println("here2: " + dateFormatter(car1.get(0).getSellDate()));
		System.out.println(car1.size());
		for(int i = 0 ; i < car1.size(); i++ ) {
			System.out.println("here3");
			LocalDate dI = stringDateToLocalDate(car1.get(i).getSellDate());
			System.out.println("here4");
			
			for (int j = 0; j < car1.size(); j++) {
				System.out.println("here5");
				LocalDate dJ = stringDateToLocalDate(car1.get(j).getSellDate());
				System.out.println("here6");
				
				if(dI.isAfter(dJ) || dI.isEqual(dJ) ){
					
					temp = car1.get(i);
	                    car1.set(i,car1.get(j) );
	                    car1.set(j, temp);
				}
			}
		
		}
		return car1;
	}
		
		
		
		
	
	
	
	
	
	

}
