package com.sad.controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sad.entity.Car;
import com.sad.entity.Customer;
import com.sad.entity.MockDatabase;
import com.sad.entity.SoldCars;
import com.sad.service.SadService;

import dataTransferObject.BidDTO;

@Controller
//@SessionAttributes("loggedInUser")
public class SadController {

	@Autowired
	SadService s1;
	@Autowired
	MockDatabase mD1;
	@Autowired
	Customer c1;

	@GetMapping({ "/", "/index" })
	public String callWelcome(Model model, HttpSession session) {
		model.addAttribute("randomcar", s1.randomCar());
		model.addAttribute("randomcar1", s1.randomCar());
		return "index";
	}

	@GetMapping("/inventory")
	public String carInventory(Model model, HttpSession session) {
		model.addAttribute("allCars", mD1.getAllCars());
		return "inventory";
	}

	@GetMapping("/carssold")
	public String carsSold(Model model, HttpSession session) {
		model.addAttribute("allCars", s1.sortSoldCarsByDate());

		//model.addAttribute("allCars", s1.setCarSellDateToString());
		return "carssold";
	}

	@GetMapping("/cardetails")
	public String carCarDetails(@RequestParam String vinNumber, Model model) {
		model.addAttribute("listing", s1.findByVinNumber(vinNumber));
		Car car = s1.findByVinNumber(vinNumber);
		String car1 = car.getDateOfPurchase();
		model.addAttribute("numberofdays", s1.olderThen120(car1));
		return "cardetails";
	}

	@GetMapping("/bidding")
	public String carCarBidding(@RequestParam String vinNumber, Model model, HttpSession session) {

		Car car = s1.findByVinNumber(vinNumber);
		Double boughtPrice = car.getBoughtPrice();
		System.out.println(car);
		BidDTO bidDto = new BidDTO();
		bidDto.setVin(vinNumber);
		bidDto.setMinSellPrice(s1.bidMin(boughtPrice));
		model.addAttribute("bidDto", bidDto);
		System.out.println(s1.bidMin(boughtPrice));
		return "bidding";

	}

	@PostMapping("/bidding")
	public String placeBid(@ModelAttribute("bidDto") BidDTO bid, Model model) {

		Car car1 = s1.findByVinNumber(bid.getVin());
		Double boughtPrice = car1.getBoughtPrice();
		Double sellPrice = car1.getSellPrice();
		Double minSellPrice = s1.bidMin(sellPrice);
		if (boughtPrice < minSellPrice) {
			mD1.saveSoldCar(new SoldCars(c1.getCustomerID(), car1.getVin(), minSellPrice, s1.sellDate()));
			mD1.removeCar(car1);
		}

		return "redirect:/afterbid";
	}

	@GetMapping("/afterbid")
	public String afterBid(Model model, HttpSession session) {
		model.addAttribute("randomcar", s1.randomCar());
		model.addAttribute("randomcar1", s1.randomCar());
		return "afterbid";
	}

	@GetMapping("/newcar")
	public String addCarPage(Model page) {
		page.addAttribute("car", new Car());
		return "addcar";
	}

	@PostMapping("/newcar")
	public String addNewCar(@ModelAttribute("car") Car car) {
		mD1.saveCars(car);

		return "redirect:/inventory";
	}

	@GetMapping("/customerlogin")
	public String customerLogin(Model model, HttpSession session) {
		model.addAttribute("customer", new Customer());

		return "customerlogin";
	}

	@PostMapping("/customerlogin")
	public String checkLoginForm(Model model, @ModelAttribute("customer") Customer customer, HttpSession session) {
		Customer customer2 = s1.findCustomer(customer.getUserName(), customer.getCustomerPassword());
		boolean authenticated = s1.authenticate(customer);
		if (authenticated) {
			session.setAttribute("loggedInUser", customer2);
			System.out.println(authenticated);
			return "redirect:/index";
		} else {
			model.addAttribute("customer", customer);
			return "notacustomer";
		}

	}

	@GetMapping("/signout")
	public String signOut(HttpSession session) {
		session.removeAttribute("loggedInUser");
		return "redirect:/index";
	}

	@GetMapping("/customersignup")
	public ModelAndView customerSignUp(Model model) {

		return new ModelAndView("customersignup", "customer", new Customer());
	}

	@PostMapping("/customersignup")
	public String handleSignUp(@ModelAttribute("customer") Customer customer) {
		mD1.saveCustomer(customer);

		return "indexCustomerLogin";
	}

	@GetMapping("/aboutus")
	public String aboutUs(Model model, HttpSession session) {
		return "aboutus";
	}

	@GetMapping("/contact")
	public String conatct(Model model, HttpSession session) {
		return "contact";
	}

	@GetMapping("/customerlistingDb")
	public String customerListingDb(Model page, HttpSession session) {
		page.addAttribute("allCustomers", mD1.getAllCustomer());
		return "customerlistingDb";
	}

	@PostMapping("/carsearch")
	public ModelAndView searchForCar(HttpServletRequest searched) {
		String dataToString = searched.getParameter("searched");
		ArrayList<Car> cars = s1.searchFor(dataToString);
		if (cars.size() > 0) {
			return new ModelAndView("searchcars", "caRs", cars);
		} else {
			return new ModelAndView("nocarsfound", "allCars", mD1.getAllCars());
		}
	}
}
