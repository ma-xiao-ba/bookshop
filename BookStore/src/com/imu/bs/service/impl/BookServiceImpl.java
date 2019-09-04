package com.imu.bs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imu.bs.bean.Book;
import com.imu.bs.bean.BookTypeVO;
import com.imu.bs.mapper.BookMapper;
import com.imu.bs.service.BookService;

@Service
public class BookServiceImpl implements BookService{

	@Autowired
	private BookMapper bookMapper; 
	public List<BookTypeVO> queryHottestBooks() {
		return bookMapper.queryHottestBooks();
	}

	public List<BookTypeVO> queryLatestBooks() {
		return bookMapper.queryLatestBooks();
	}

	public void modify(Book book) {
		bookMapper.modify(book);
	}

	public void remove(Integer bid) {
		// TODO Auto-generated method stub
		bookMapper.remove(bid);
		
	}

	public Book queryBookById(Integer bid) {
		// TODO Auto-generated method stub
		return bookMapper.queryBookById(bid);
	}

	public List<BookTypeVO> queryBooksByType(String btname) {
		// TODO Auto-generated method stub
		return bookMapper.queryBooksByType(btname);
	}

	public List<BookTypeVO> queryBooksByName(String bname) {
		// TODO Auto-generated method stub
		return bookMapper.queryBooksByName(bname);
	}

	public boolean addBook(Book book) {
		boolean flag=false;
		try {
			bookMapper.addBook(book);
			System.out.println(book.toString());
			flag = true;
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return flag;
	}

	@Override
	public void changeBookSales(Integer bsales, Integer bid) {
		// TODO Auto-generated method stub
		bookMapper.changeBookSales(bsales, bid);
	}

	@Override
	public void changeStock(Book book) {
		bookMapper.changeStock(book);
		
	}






}
