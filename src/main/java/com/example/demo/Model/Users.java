package com.example.demo.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Users 
{  
   @Id
   @GeneratedValue(strategy=GenerationType.AUTO)
   private int uid;
   private String uname;
   private String umail;
   private String upass;
   private String ucpass;
public int getUid() {
	return uid;
}
public void setUid(int uid) {
	this.uid = uid;
}
public String getUname() {
	return uname;
}
public void setUname(String uname) {
	this.uname = uname;
}
public String getUmail() {
	return umail;
}
public void setUmail(String umail) {
	this.umail = umail;
}
public String getUpass() {
	return upass;
}
public void setUpass(String upass) {
	this.upass = upass;
}
public String getUcpass() {
	return ucpass;
}
public void setUcpass(String ucpass) {
	this.ucpass = ucpass;
}
@Override
public String toString() {
	return "Users [uid=" + uid + ", uname=" + uname + ", umail=" + umail + ", upass=" + upass + ", ucpass=" + ucpass
			+ "]";
}
   
   
}
