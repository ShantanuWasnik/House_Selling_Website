package com.example.demo.SellerRepo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.SellerModel.SellerModel;

public interface SellerRepo extends JpaRepository<SellerModel,String>
{ 
	

}
