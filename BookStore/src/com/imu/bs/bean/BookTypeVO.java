package com.imu.bs.bean;

public class BookTypeVO {
	private Integer bid;
	private String bisbn;
	private String bname;
	private String bauthor;
	private String bpublisher;
	private double bprice;
	private Integer btid;
	private String bimage;
	private Integer bstock;
	private String bcontent;
	private String bregdt;
	private String btname;
	
	
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public String getBisbn() {
		return bisbn;
	}
	public void setBisbn(String bisbn) {
		this.bisbn = bisbn;
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
	public double getBprice() {
		return bprice;
	}
	public void setBprice(double bprice) {
		int b = (int) (bprice*10);
		bprice = b/10.0;
		this.bprice = bprice;
	}
	public Integer getBtid() {
		return btid;
	}
	public void setBtid(Integer btid) {
		this.btid = btid;
	}
	public String getBimage() {
		return bimage;
	}
	public void setBimage(String bimage) {
		this.bimage = bimage;
	}
	public Integer getBstock() {
		return bstock;
	}
	public void setBstock(Integer bstock) {
		this.bstock = bstock;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBregdt() {
		return bregdt;
	}
	public void setBregdt(String bregdt) {
		this.bregdt = bregdt;
	}
	public String getBtname() {
		return btname;
	}
	public void setBtname(String btname) {
		this.btname = btname;
	}
	
}
