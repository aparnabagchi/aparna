package com.test.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.test.service.impl.cartService;

import com.test.model.Cart;
import com.test.model.Product;
import com.test.model.User;
import com.test.service.ProductsService;


@Controller
public class FurnitureController {

	Path path;
	@Autowired
	private ProductsService productsService;
	@Autowired
	private cartService cartServices;
	FurnitureController(){}
	FurnitureController(ProductsService productsService){
			this.productsService=productsService;
	}
	
	
	@RequestMapping(value = { "/", "/index" })
	public ModelAndView indexPage() {

		return new ModelAndView("index");
	}

	
	@RequestMapping(value = "/contactUs")
	public ModelAndView contactPage() {
		return new ModelAndView("contactUs");
	}
	
	@RequestMapping("/viewProduct")
	public String getProductById(@RequestParam("productId") int productId, Model model){
		Product p = productsService.getProduct(productId);
		model.addAttribute("product", p);
		return "viewProduct";
	}
	

@RequestMapping(value ="/deleteProduct" , method = RequestMethod.GET)
	    public String deleteproduct(@RequestParam int productId) {
			System.out.println("productid in controller "+productId);
			productsService.delete(productId);
	        return "redirect:product";
	    }
	
@RequestMapping(value="/Login", method=RequestMethod.GET)
public String login()
{
return "Login";
}

	@RequestMapping(value = "/AboutUs")
	public ModelAndView aboutPage() {

		return new ModelAndView("AboutUs");
	}

	@RequestMapping(value = {"/product" }, method = RequestMethod.GET)
    public String listproduct(ModelMap model) {
 
        List<Product> products = productsService.getAllProducts();
        model.addAttribute("products", products);
        return "product";
    }

	/*
	 @RequestMapping(value="/product.do" , method = RequestMethod.GET )
		public ModelAndView productWithKey(@RequestParam(value="searchKey",defaultValue="") String searchKey) throws IOException{
			
			ModelAndView mav = new ModelAndView("product");
			
			//System.out.println(searchKey);
			//System.out.println(new datajs());
			
			mav.addObject("searchKey",searchKey);
			mav.addObject("dataValue", productsService.getAllProducts());
			
			return mav ;
		}
	*/
	 
	 /*

/*
	@RequestMapping(value = "/product")
	public ModelAndView productsPage() {

		ListClass list = new ListClass();
		ModelAndView model = new ModelAndView("product");
		model.addObject("list", list.getlist());
		return model;
	}
	*/
	/*
		@RequestMapping(value ="/admin/Registration", method = RequestMethod.GET)
		public String adminregistrationPage(Map<String, Object> map) {
			Product prodRegistration = new Product();
			map.put("Registration", prodRegistration);
			map.put("productList", productsService.getAllProducts());
			return "Registration";

		}*/
	 
		@RequestMapping("/Registration")
		public String addprodu1(ModelMap map) {
			Product prodRegistration = new Product();
			map.put("product", prodRegistration);
			//map.put("productList", productsService.getAllProducts());
			return "Registration";

		}
	
		
		
		@RequestMapping(value="/admin/Registration",method=RequestMethod.POST)
		public ModelAndView addNewProduct(@ModelAttribute("product") Product p, HttpServletRequest request, BindingResult result)
		{
			
			productsService.add(p);
			String filename=null;
			int res = 0;
				System.out.println("enter func");
			ServletContext context=request.getServletContext();
			String path=context.getRealPath("/resources/"+p.getProductId()+".jpg");
			System.out.println("Path = "+ path );
			System.out.println("File name = "+p.getImage().getOriginalFilename());
			File f=new File(path);
			if(!p.getImage().isEmpty())
			{
			try
			{
			//filename=p.getImage().getOriginalFilename();
			byte[] bytes=p.getImage().getBytes();
			BufferedOutputStream bs=new BufferedOutputStream(new
			FileOutputStream(f));
			bs.write(bytes);
			bs.close();
			System.out.println("Image uploaded");
			
			System.out.println("Data Inserted");
			}
			catch(Exception ex)
			{
			System.out.println(ex.getMessage());
			}
			}
			
			return new ModelAndView("product","", null);
			
		}
//for retrieving data
/*
	@RequestMapping(value = "/admin/Registration.do", method = RequestMethod.GET)
	public String admindoActions(@ModelAttribute Product products,
			BindingResult results, @RequestParam String action,
			Map<String, Object> map,HttpServletRequest request) {
		Product productResult = new Product();
		
		switch (action.toLowerCase()) {
		case "add":
			 
                  productsService.add(products);
                  productResult=products;
			break;
		case "update":
			productsService.edit(products);
            productResult=products;
			break;
		case "delete":
			productsService.delete(products.getProductId());
            productResult=new Product();
			break;
		case "search":
               Product searchProducts=productsService.getProduct(products.getProductId());
               productResult=searchProducts !=null ? searchProducts : new Product();
			break;

		}
		
		map.put("Registration", productResult);
		map.put("productList", productsService.getAllProducts());
		return "Registration";}
//for operations

*/
		@RequestMapping("/editProduct")
		public String editProductById(@RequestParam("productId") int productId, Model model){
			Product p = productsService.getProduct(productId);
			model.addAttribute("product", p);
			return "editProduct";
		}
		@RequestMapping(value="/editProducts/{productId}", method=RequestMethod.POST)
		public String editProduct(@PathVariable("productId")Integer productId,
		        @ModelAttribute("product") Product product, Map model){
		 
		    productsService.edit(product);
		    List productList=productsService.getAllProducts();
		    model.put("productList", productList);
		 
		    return "redirect:/product";
		}
		
		@RequestMapping("/cart")
		public String getCart(@RequestParam("productId") int productId, Model model){
			Product p = productsService.getProduct(productId);
			model.addAttribute("product", p);
			
			return "cart";
		}
		
		@RequestMapping("/deleteCart")
		 public String deleteCart(@RequestParam int productId) {
			productsService.delete(productId);
		  return "redirect:cart";
		 }
		
		@RequestMapping("/orderConfirmation")
		public String setCart(@RequestParam("productId") int productId, Model model){
			Product p = productsService.getProduct(productId);
			model.addAttribute("product", p);
			
			return "orderConfirmation";
		}
		
		@ModelAttribute("instOrder")
		public Cart authentication()
		{
			return new Cart();
		}
		@RequestMapping("/orderConfirm")
		public String addNewOrder(@ModelAttribute("instOrder") Cart cart , BindingResult result,Model model)
		{
			
			 Authentication auth=SecurityContextHolder.getContext().getAuthentication();
			 String name=auth.getName();
			 cart.setQuantity(1);
			 cart.setUsername(name);
		     cartServices.addTocart(cart);
		     model.addAttribute("cart", cart);
		   
		   
			return "thankCustomer";
		}
}