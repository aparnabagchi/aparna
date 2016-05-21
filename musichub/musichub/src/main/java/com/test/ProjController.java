package com.test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Date;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.test.products_collect;
import com.test.projModel;
@Controller 
public class ProjController {
	//@RequestMapping("/index.html")
	  @RequestMapping("/")  
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
	
	  @RequestMapping(value="/product" , method = RequestMethod.GET )
		public ModelAndView productWithKey(@RequestParam(value="searchKey",defaultValue="") String searchKey) throws IOException{
			
			ModelAndView mav = new ModelAndView("product");
			
			//System.out.println(searchKey);
			//System.out.println(new datajs());
			
			mav.addObject("searchKey",searchKey);
			mav.addObject("dataValue", new products_collect());
			
			return mav ;
		}

				
			}
