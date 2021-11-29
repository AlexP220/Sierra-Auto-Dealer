package com.sad.entity;

import java.util.ArrayList;
import org.springframework.stereotype.Component;

@Component
public class MockDatabase {
	

	private ArrayList<Customer> customer = new ArrayList<Customer>();

	private ArrayList<Employee> employee = new ArrayList<Employee>();

	private ArrayList<SoldCars> soldCars = new ArrayList<SoldCars>();

	private ArrayList<Car> allCars = new ArrayList<Car>();

	public MockDatabase() {

		

		allCars.add(new Car("Toyota", "Rav4", "0", 2018, "/images/2018Rav4.0.jfif", "11/17/2021", true, 3200.99,
				4000.00, new CarDescription("Grey", 8, "Decent car but the transmission sucks.")));
		allCars.add(new Car("Ford", "F-150", "1", 2010, "/images/2010F150.1.jfif", "05/02/2011", false, 1000.00, 2000.00,
				new CarDescription("Blue", 156200, "I giant POS")));
		allCars.add(new Car("Oldmobile", "Delta 88", "2", 1990, "/images/1990Delta88.2.jfif", "09/06/1989", false,
				2530.00, 3530.00, new CarDescription("Red", 86414, "Sweet car, killer bass")));
		allCars.add(new Car("Chevrolet", "1500 Conversion Van", "3", 1991, "/images/1991ChevVan.3.jfif", "04/17/1995",
				false, 5000.00, 6000.00, new CarDescription("Black", 110000, "Room for 7")));
		allCars.add(new Car("Ford", "Escape", "4", 2021, "/images/2021Escape.4.jfif", "11/01/2021", true, 42000.99,
				45000.88, new CarDescription("Yellow", 4, "Another giant POS")));
		allCars.add(new Car("Ford", "Bronco", "5", 2021, "/images/2021Bronco.5.jfif", "10/30/2021", true, 62000.04,
				70000.005, new CarDescription("Orange", 3, "Come with full factory warranty in which you will need!")));
		allCars.add(new Car("Ford", "F-150", "6", 2011, "/images/2011F150.6.jpg", "05/02/2011", false, 1325.00, 2325.00,
				new CarDescription("Silver", 156200, "I giant POS")));
		allCars.add(new Car("Ford", "Bronco", "7", 2021, "/images/2021Bronco.7.jpg", "10/29/2021", true, 62540.04,
				65540.04,
				new CarDescription("Red", 10, "How do you know when a Ford is out of oil?...It stops leaking!")));
		allCars.add(new Car("Ford", "Excursion", "8", 2021, "/images/2021Excursion.8.jpg", "11/03/2021", true, 86147.04,
				90000.00, new CarDescription("Flames", 51,
						"After you test drive it (good luck) you'll realize you can't afford it.")));
		allCars.add(new Car("Dodge", "Ram1500", "9", 1998, "/images/1999Ram1500.9.jpg", "08/21/2009", false, 8200.04,
				9000.00, new CarDescription("Red", 97658,
						"Strong enough to tow your mobile home! Runs off of hopes and dreams!")));
		
		
		soldCars.add(new SoldCars("29",147255.30,"01/21/2015"));
		soldCars.add(new SoldCars("53",1800.50,"11/23/2021"));
		soldCars.add(new SoldCars("78",6871.99,"07/01/2018"));

		employee.add(new Employee("John", "Doe", 1, "johndoe"));
		employee.add(new Employee("Billy", "Madison", 2, "billymadison"));

		customer.add(new Customer("Michael", "Jackson", "8989 he he", "mj@gmail.com", "775-585-6989", "michaeljackson",
				"123"));
		customer.add(new Customer("Bill", "Clinton", "1776 pRESIDENT WAY", "bc@gmail.com", "258-415-4587",
				"billclinton", "123"));

	}

	
	public void saveCars(Car car) {
		allCars.add(car);
	}

	public ArrayList<Car> getAllCars() {
		return this.allCars;
	}
	
	public void removeCar(Car car) {
		allCars.remove(car);
	}

	public void saveSoldCar(SoldCars soldCar) {
		soldCars.add(soldCar);
	}

	public ArrayList<SoldCars> getAllSoldCars() {
		return this.soldCars;
	}

	public void saveEmployee(Employee employees) {
		employee.add(employees);
	}

	public ArrayList<Employee> getAllEmployee() {
		return this.employee;
	}

	public void saveCustomer(Customer customers) {
	
		customer.add(customers);
	}

	public ArrayList<Customer> getAllCustomer() {
		return this.customer;
	}

	public Car findCar(String vin) {
		for (Car loopedCar : allCars) {
			if (loopedCar.getVin().equals(vin)) {
				return loopedCar;
			}
		}
		return null;
	}




//	public int findCustomerID() {
//		int count=0;
//		for(Customer loopedCustomer : customer) {
//			if(loopedCustomer.getCustomerID() > count) {
//				count = loopedCustomer.getCustomerID();
//				
//			}
//		}
//			return count++;
//	}

//	public int findMaxCustomerID(int id) {
//		Customer max = Collections.max(customer);
//		int maxID=max.getCustomerID();
//	}

}
