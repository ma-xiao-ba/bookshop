package com.imu.bs.bean.vo;

public class OrderBookVO {
	private String bimage;
	private String bname;
	private String bauthor;
	private String bpublisher;
	private String btname;
	private String bcontent;
	private Integer odnumber;
	private float bprice;
	private Double totalamount;
	
	public String getBimage() {
		return bimage;
	}
	public void setBimage(String bimage) {
		this.bimage = bimage;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBauthor() {
		return bauthor;
	}
	public void setBauthor(String bauthor) {
		this.bauthor = bauthor;
	}
	public String getBpublisher() {
		return bpublisher;
	}
	public void setBpublisher(String bpublisher) {
		this.bpublisher = bpublisher;
	}
	public String getBtname() {
		return btname;
	}
	public void setBtname(String btname) {
		this.btname = btname;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	
	public Integer getOdnumber() {
		return odnumber;
	}
	public void setOdnumber(Integer odnumber) {
		this.odnumber = odnumber;
	}
	
	
	public float getBprice() {
		return bprice;
	}
	public void setBprice(float bprice) {
		this.bprice = bprice;
	}
	public Double getTotalamount() {
		int t = new Double(bprice*odnumber*10).intValue();
		return t/10.0;
	}
	public void setTotalamount(Double totalamount) {
		this.totalamount = totalamount;
	}
	@Override
	public String toString() {
		return "OrderBookVO [bauthor=" + bauthor + ", bcontent=" + bcontent
				+ ", bname=" + bname + ", bimage=" + bimage + ", bprice=" + bprice
				+ ", bpublisher=" + bpublisher + ", btname=" + btname
				+ ", odnumber=" + odnumber + ", totalamount=" + totalamount
				+ "]";
	}
	
}
