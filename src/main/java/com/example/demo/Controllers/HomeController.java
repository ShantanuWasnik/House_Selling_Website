package com.example.demo.Controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Model.Users;
import com.example.demo.Services.UserService;


@Controller
public class HomeController 
{   @Autowired
	UserService u;
	
	 @RequestMapping("/")
     public String one(HttpSession h1,Model m)
     {   
		 String x=(String)h1.getAttribute("temp");
		 m.addAttribute("kk",x);
    	 return "index";
     }
	 
	 @RequestMapping("/RegisterUser")
     public String two()
     {
    	 return "RegisterUser";
     }
	 
	 @RequestMapping("/SaveUser")
     public String three(@ModelAttribute Users u1)
     {   
		 u.userregister(u1);
    	 return "index";
     }
	 
	 @RequestMapping("/LoginUser")
	 public String three()
	 {
		  
		 return "LoginUser";
	 }
	 
	 @PostMapping("/CheckCred")
	 public String four(@RequestParam("t1") String uname,@RequestParam("t2") String upassword,HttpSession h1)
	 {
		 
		 
		Users h= u.checkdata(uname, upassword);
		 
		   if(h!=null)
		   { 
			   h1.setAttribute("temp",h.getUname());
			   
			   return "redirect:/";
		   }
		  
		 return "redirect:/LoginUser";
	 }
	
	 @RequestMapping("/SellPro")
	 public String five(HttpSession h1)
	 {
		 if(h1.getAttribute("temp")==null)
		 {
			 return "redirect:/LoginUser";
		 }
		  
		 return "SellPro";
	 }
	 
	 

	 @RequestMapping("/Logout")
	 public String six(HttpSession h1)
	 {
		 h1.invalidate(); 
		 return "redirect:/";
	 }
	 
	 
	 
	 

}
