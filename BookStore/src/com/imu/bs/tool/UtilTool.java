package com.imu.bs.tool;

import java.util.Date;

public class UtilTool {
	public static String getOnumber()
	   {
		   //得到系统时间的微秒数
		   long L=new Date().getTime();
		   //得到随机数，截取需要的字符串
		   double d=Math.random();
		   String s=String.valueOf(d);
		   return L+s.substring(4, 9);
	   }
	   public static void main(String[] args) {
		System.out.println(getOnumber());
	}

}
