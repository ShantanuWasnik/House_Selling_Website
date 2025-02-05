package com.example.demo.SellerController;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.SellerAbstraction.SellerService;
import com.example.demo.SellerModel.SellerModel;

@Controller
public class SellerController
{     @Autowired
	  SellerService ss;
	  
	  
	  @RequestMapping("/SaveInfoSeller")
      public String one(@ModelAttribute SellerModel m,@RequestParam("file") MultipartFile fname) throws Exception
      {    
		   String path="C:\\Users\\ASUS\\eclipse-workspace\\SpringBootJpaBuySell\\src\\main\\resources\\static\\images";
		   String f1=fname.getOriginalFilename();
		   File fk=new File(path);
		   fname.transferTo(new File(fk,f1));
		   m.setFilename(f1);
		   
		   ss.register(m);
		   
    	   return "index";
      }
	  
	 //buyers section//
	  
	  @RequestMapping("/Buyerdisp")
	  public String one(Model model,HttpSession h1) {
		  if(h1.getAttribute("temp")==null)
	      {
					 return "redirect:/LoginUser";
		  }
	      List<SellerModel> l1 = ss.getallinfo();
	      model.addAttribute("shan", l1);
	      return "disp";   
	      
	  }
	  
	  @RequestMapping("/del/{id}")
	     public String two(@PathVariable String id) {
	      
		  ss.deldata(id);

		  return "redirect:/Buyerdisp";
	      
	  }
	  
	  @RequestMapping("/Edit/{id}")
	     public String three(@PathVariable String id,Model m) 
	     {

		  SellerModel sm=ss.getsingleinfo(id);
		  m.addAttribute("kk",sm);
		  
		  return "Editform";
	      
	      }
	  
	  @RequestMapping("/Updatedata")
	     public String two(@ModelAttribute SellerModel st,@RequestParam("file") MultipartFile fname) throws Exception
	   {
	       SellerModel m=new SellerModel();
	       System.out.println(st);
	       m.setUid(st.getUid());
		   m.setUname(st.getUname());
		   m.setUnumber(st.getUnumber());
		   m.setUprice(st.getUprice());
		  System.out.println(st.getFilename());
		   String path="C:\\Users\\ASUS\\eclipse-workspace\\SpringBootJpaBuySell\\src\\main\\resources\\static\\images";
		   String f1=fname.getOriginalFilename();
		   File fk=new File(path);
		   fname.transferTo(new File(fk,f1));
		   
		   m.setFilename(f1);
		   
		   ss.register(m);
           
		   return "redirect:/Buyerdisp";
	      
	  }
	  
	  
	  
	  
	  
	  
}
