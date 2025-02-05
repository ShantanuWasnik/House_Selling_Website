package com.example.demo.SellerModel;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class SellerModel 
{    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "uuid2") 
    private String uid;
    private String uname;
    private String unumber;
    private String uprice;
    private String filename;
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUnumber() {
		return unumber;
	}
	public void setUnumber(String unumber) {
		this.unumber = unumber;
	}
	public String getUprice() {
		return uprice;
	}
	public void setUprice(String uprice) {
		this.uprice = uprice;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	@Override
	public String toString() {
		return "SellerModel [uid=" + uid + ", uname=" + uname + ", unumber=" + unumber + ", uprice=" + uprice
				+ ", filename=" + filename + "]";
	}
	 
	     
    
    
}
