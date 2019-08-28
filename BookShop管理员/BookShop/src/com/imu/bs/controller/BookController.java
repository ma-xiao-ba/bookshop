package com.imu.bs.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;


import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.imu.bs.bean.Book;


@Controller
public class BookController {

	@RequestMapping("/addbook")
	public String addbook(HttpServletRequest request,Book book)
			throws IllegalStateException, IOException {
		//保存数据库的路径
		  String sqlPath = null; 
		  //定义文件保存的本地路径
	      String localPath="D:\\File\\";
	      //定义 文件名
	      String filename=null;  
	      if(!book.getFile().isEmpty()){  
	          //生成uuid作为文件名称  
	          String uuid = UUID.randomUUID().toString().replaceAll("-","");  
	          //获得文件类型（可以判断如果不是图片，禁止上传）  
	          String contentType=book.getFile().getContentType();  
	          //获得文件后缀名 
	          String suffixName=contentType.substring(contentType.indexOf("/")+1);
	          //得到 文件名
	          filename=uuid+"."+suffixName; 
	          //文件保存路径
	          book.getFile().transferTo(new File(localPath+filename));  
	      }
	      //把图片的相对路径保存至数据库
	      sqlPath = "/images/"+filename;
	      System.out.println(sqlPath);
	      //model.addAttribute("user", user);
		  return "null";
	}
}
