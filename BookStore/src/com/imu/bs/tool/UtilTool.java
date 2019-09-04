package com.imu.bs.tool;

import java.util.Date;

public class UtilTool {
	public static String getOnumber()
	   {
		   //得到系统时间的微秒数
		   long L=new Date().getTime();
		   String l=String.valueOf(L).substring(1,9);
		   //得到随机数，截取需要的字符串
		   double d=Math.random();
		   String s=String.valueOf(d).substring(4,9);
		   return (l+s);
	   }
	   public static void main(String[] args) {
		System.out.println(getOnumber());
	}

}
