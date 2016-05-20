package com.test;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.servlet.ModelAndView;  
@Controller 
public class ProjController {
	//@RequestMapping("/index.html")
	  @RequestMapping(value={"/index"})  
	    public ModelAndView indexPage() {  
	   
	        return new ModelAndView("index");  
	    }  
	  @RequestMapping(value="/contactUs")  
	    public ModelAndView contactUs(Model model) {  
	   
	        return new ModelAndView("contactUs");  
	    }   
	  @RequestMapping(value="/AboutUs")  
	    public ModelAndView AboutUs() {  
	   
	        return new ModelAndView("AboutUs");  
	    }
	  @RequestMapping(value="")  
	    public ModelAndView Blank() {  
	   
	        return new ModelAndView("index");  
	    }
	  @RequestMapping(value="/signUp")  
	    public ModelAndView SignUp(Model model) {  
	   
	        return new ModelAndView("signUp");  
	    } 
	  @RequestMapping(value="/Login")  
	    public ModelAndView Login(Model model) {  
	   
	        return new ModelAndView("Login");  
	    } 
	  @RequestMapping(value="/product")  
	    public ModelAndView Product(Model model) {  
	   
	        return new ModelAndView("product");  
	    } 
}
