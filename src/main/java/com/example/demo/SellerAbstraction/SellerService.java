package com.example.demo.SellerAbstraction;

import java.util.List;

import com.example.demo.SellerModel.SellerModel;

public interface SellerService 
{
     public void register(SellerModel sm);
     
     public List<SellerModel> getallinfo();
     
     public void deldata(String id);
     
     public SellerModel getsingleinfo(String id);
     
      

	 
}
