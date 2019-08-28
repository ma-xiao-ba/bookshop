package com.imu.bs.bean;

public class ShoppingCart {
	private Integer cid;
	private String bpic;
	private Integer cnumber;
	private String bname;
	private float price;
	private float amount;
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getBpic() {
		return bpic;
	}
	public void setBpic(String bpic) {
		this.bpic = bpic;
	}
	public Integer getCnumber() {
		return cnumber;
	}
	public void setCnumber(Integer cnumber) {
		this.cnumber = cnumber;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
}
