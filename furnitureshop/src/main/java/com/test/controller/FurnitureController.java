package com.test.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.test.model.ListClass;
import com.test.model.Product;
import com.test.service.ProductsService;

@Controller
public class FurnitureController {
	@Autowired
	private ProductsService productsService;

	@RequestMapping(value = { "/", "/index" })
	public ModelAndView indexPage() {

		return new ModelAndView("index");
	}

	@RequestMapping(value = "/contactUs")
	public ModelAndView contactPage() {
		return new ModelAndView("contactUs");
	}

	@RequestMapping(value = "/Login")
	public ModelAndView loginPage() {

		return new ModelAndView("Login");
	}

	@RequestMapping(value = "/signUp")
	public ModelAndView signUpPage() {

		return new ModelAndView("signUp");
	}

	@RequestMapping(value = "/AboutUs")
	public ModelAndView aboutPage() {

		return new ModelAndView("AboutUs");
	}

	
	 @RequestMapping(value = "/test", method = RequestMethod.POST)
	 public ModelAndView testPage() {
	 
	 return new ModelAndView("test"); }
	

	@RequestMapping(value = "/product")
	public ModelAndView productsPage() {

		ListClass list = new ListClass();
		ModelAndView model = new ModelAndView("product");
		model.addObject("list", list.getlist());
		return model;
	}

	@RequestMapping(value = "/Registration", method = RequestMethod.GET)
	public String registrationPage(Map<String, Object> map) {
		Product prodRegistration = new Product();
		map.put("Registration", prodRegistration);
		map.put("productList", productsService.getAllProducts());
		return "Registration";

	}

	@RequestMapping(value = "/Registration.do", method = RequestMethod.GET)
	public String doActions(@ModelAttribute Product products,
			BindingResult results, @RequestParam String action,
			Map<String, Object> map) {
		Product productResult = new Product();
		
		switch (action.toLowerCase()) {
		case "add":
                  productsService.add(products);
                  productResult=products;
			break;
		case "edit":
			productsService.edit(products);
            productResult=products;
			break;
		case "delete":
			productsService.delete(products.getProductId());
            productResult=products;
			break;
		case "search":
               Product searchProducts=productsService.getProduct(products.getProductId());
               productResult=searchProducts !=null ? searchProducts : new Product();
			break;

		}
		
		map.put("Registration", productResult);
		map.put("productList", productsService.getAllProducts());
		return "Registration";

}}
