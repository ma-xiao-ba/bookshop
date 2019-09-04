package com.imu.bs.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.imu.bs.bean.Book;
import com.imu.bs.bean.BookTypeVO;
import com.imu.bs.bean.BookType;
import com.imu.bs.service.BookService;
import com.imu.bs.service.BookTypeService;
import com.imu.bs.tool.UtilTool;
@Controller
public class BookController {
	@Autowired
	private BookService bookService;
	@Autowired
	private BookTypeService bookTypeService;
	
	@RequestMapping("/queryHottestBooks")
	public String queryHottestBooks(HttpSession session){
		session.setAttribute("queryHottestBooks", bookService.queryHottestBooks());
		session.setAttribute("queryLatestBooks", bookService.queryLatestBooks());
		List<BookType> bookType=bookTypeService.quaryBookType();
		session.setAttribute("queryBookType", bookType);
		return "index";
	}
	@RequestMapping("/modifyBook")
	public String modify(Book book,HttpSession session){
		bookService.modify(book);
		return "";
	}
	@RequestMapping("/removeBook")
	public String remove(Integer bid,HttpSession session){
		bookService.remove(bid);
		return "";
	}
	@RequestMapping("/bookDetail")
	public String queryBookById(Integer bid,HttpSession session){
		session.setAttribute("book", bookService.queryBookById(bid));
		return "single";
	}
	@RequestMapping("/queryBooksByType")
	public String queryBooksByType(String btname,HttpSession session){

		try {
			if(!btname.equals(new String(btname.getBytes("utf-8"),"utf-8")))
				btname =new String(btname.getBytes("ISO-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<BookTypeVO> list = bookService.queryBooksByType(btname);
		session.setAttribute("booksByType", bookService.queryBooksByType(btname));
		session.setAttribute("pageIndex",1);
		List<BookTypeVO> showBooks = new ArrayList<BookTypeVO>();
		for(int i=0;i<8&&i<list.size();i++){
			showBooks.add(list.get(i));
		}
		session.setAttribute("showBook", showBooks);
		session.setAttribute("pageMax", list.size()/8+1);
		return "bookList";
	}
	
	@RequestMapping("/queryBooksByName")
	public String queryBooksByName(HttpServletRequest request){
		String bname=(String) request.getParameter("bname");
		try {
			if(!bname.equals(new String(bname.getBytes("utf-8"),"utf-8")))
				bname =new String(bname.getBytes("ISO-8859-1"),"utf-8");
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<BookTypeVO> list = bookService.queryBooksByName(bname);
		request.getSession().setAttribute("booksByType", list);
		request.getSession().setAttribute("pageIndex",1);
		List<BookTypeVO> showBooks = new ArrayList<BookTypeVO>();
		for(int i=0;i<8&&i<list.size();i++){
			showBooks.add(list.get(i));
		}
		request.getSession().setAttribute("showBook", showBooks);
		request.getSession().setAttribute("pageMax", list.size()/8+1);
		return "bookList";
	}
	
	@RequestMapping("/pagination")
	public String pagination(Integer pageIndex,HttpSession session){
		System.out.println(1);
        int pageSize=8;
        int page=(pageIndex-1)*pageSize;
        List<BookTypeVO> books=new ArrayList<BookTypeVO>();
        List<BookTypeVO> list=(List<BookTypeVO>) session.getAttribute("booksByType");
        int p = (pageIndex-1)*8;
        Integer max=(Integer) session.getAttribute("pageMax");
        
        if(pageIndex==max+1){
        	books = (List<BookTypeVO>) session.getAttribute("showBook");
        	pageIndex--;
        }else if(pageIndex==0){
        	pageIndex++;
        	books = (List<BookTypeVO>) session.getAttribute("showBook");
        }else{
        	for(int i=p;i<p+8&&i<list.size();i++){
        		books.add(list.get(i));
        	}
        }
        
        session.setAttribute("showBook", books);
        session.setAttribute("pageIndex",pageIndex);
		
		return "bookList";
	}
	@RequestMapping("/adminQueryBook")
	public String adminQueryBook(HttpSession session){
		session.setAttribute("booktype", bookTypeService.quaryBookType());
		session.setAttribute("books", bookService.queryBooksByType("."));
		return "bookmanage";
	}
	@RequestMapping("/addBook")
	public String addbook(HttpServletRequest request,Book book) throws IllegalStateException, IOException {

		  String sqlPath = null; 

	      String localPath="C:\\app\\Tomcat 8.0\\webapps\\BookStore\\images\\book\\";
	      String localPath1="E:\\Java_project\\eclipse\\BookStore\\WebRoot\\images\\book\\";

	      String filename=null;  
	      if(!book.getFile().isEmpty()){    
	          String uuid = UUID.randomUUID().toString().replaceAll("-","");  
	 
	          String contentType=book.getFile().getContentType();  

	          String suffixName=contentType.substring(contentType.indexOf("/")+1);

	          filename=uuid+"."+suffixName; 
	          System.out.println("filename:"+filename);
	          
	         // System.out.println(localPath+filename);
	          book.getFile().transferTo(new File(localPath+filename));
	      }

	      sqlPath = "images/book/"+filename;
	      book.setBimage(sqlPath);
	      book.setBisbn(UtilTool.getOnumber());
	     // System.out.println(book.toString());
	      bookService.addBook(book);
	     // System.out.println("sql:"+sqlPath);
		  return "redirect:/adminQueryBook.action";
	}
	@RequestMapping("/changeStock")
	public String changeStock(Book book) {
		bookService.changeStock(book);
		return "redirect:/adminQueryBook.action";
	}
}
