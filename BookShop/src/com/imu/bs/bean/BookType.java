package com.imu.bs.bean;

public class BookType {
	@Override
	public String toString() {
		return "BookType [btid=" + btid + ", btname=" + btname + "]";
	}
	private Integer btid;
	private String btname;
	public Integer getBtid() {
		return btid;
	}
	public void setBtid(Integer btid) {
		this.btid = btid;
	}
	public String getBtname() {
		return btname;
	}
	public void setBtname(String btname) {
		this.btname = btname;
	}
	
}
