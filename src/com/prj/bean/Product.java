package com.prj.bean;

public class Product {
private String pid;
private String pname;
private double price;
private int num;
private double acount;

public Product() {
	super();
	
}
public Product(String pname, double price, int num, double acount) {
	super();
	this.pname = pname;
	this.price = price;
	this.num = num;
	this.acount = acount;
}
public Product(String pid, String pname, double price, int num, double acount) {
	super();
	this.pid = pid;
	this.pname = pname;
	this.price = price;
	this.num = num;
	this.acount = acount;
}
public String getPid() {
	return pid;
}
public void setPid(String pid) {
	this.pid = pid;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public int getNum() {
	return num;
}
public void setNum(int num) {
	this.num = num;
}
public double getAcount() {
	return acount;
}
public void setAcount(double acount) {
	this.acount = acount;
}
}
