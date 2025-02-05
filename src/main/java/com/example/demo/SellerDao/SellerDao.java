package com.example.demo.SellerDao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.SellerAbstraction.SellerService;
import com.example.demo.SellerModel.SellerModel;
import com.example.demo.SellerRepo.SellerRepo;

@Service
public class SellerDao implements SellerService {
    @Autowired
	SellerRepo sr;
	
	@Override
	public void register(SellerModel sm) {
       sr.save(sm);
	}

//displaying the sellers//
	@Override
	public List<SellerModel> getallinfo() {
		
		return sr.findAll();
	}

	@Override
	public void deldata(String id) {

       sr.deleteById(id);
		 
	}

	@Override
	public SellerModel getsingleinfo(String id) {
	
		return sr.getById(id);
	}

	 

	 

}
