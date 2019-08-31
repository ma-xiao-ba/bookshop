package com.imu.bs.bean;

public class User {
	@Override
	public String toString() {
		return "User [uid=" + uid + ", umark=" + umark + ", uname=" + uname
				+ ", uphone=" + uphone + ", upwd=" + upwd + ", urealname="
				+ urealname + ", uregdt=" + uregdt + ", urole=" + urole + "]";
	}
	private Integer uid;//用户编号
	private String uname;//用户帐号
	private String upwd;//用户密码
	private String urealname;//真实姓名
	private String uregdt;//注册日期
	private String uphone;//用户电话
	private Integer urole;//用户角色
	private String umark;//用户备注
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUrealname() {
		return urealname;
	}
	public void setUrealname(String urealname) {
		this.urealname = urealname;
	}
	public String getUregdt() {
		return uregdt;
	}
	public void setUregdt(String uregdt) {
		this.uregdt = uregdt;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public Integer getUrole() {
		return urole;
	}
	public void setUrole(Integer urole) {
		this.urole = urole;
	}
	public String getUmark() {
		return umark;
	}
	public void setUmark(String umark) {
		this.umark = umark;
	}
	
}
