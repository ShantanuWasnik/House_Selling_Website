package com.example.demo.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.Users;
import com.example.demo.Repo.UserRepo;
import com.example.demo.Services.UserService;

@Service
public class UserDao implements UserService {
    @Autowired
	UserRepo ur;
    
	@Override
	public void userregister(Users u1) {
		 
		ur.save(u1);

	}

	@Override
	public Users checkdata(String x, String y) {
		System.out.println("Username: " + x + ", Password: " + y);
		return ur.findByUnameAndUpass(x, y);
	}

	 




}
