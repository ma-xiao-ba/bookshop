package com.bs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.bean.Book;
import com.bs.bean.BookTypeVO;
import com.bs.mapper.BookMapper;
import com.bs.service.BookService;

@Service
public class BookServiceImpl implements BookService{

	@Autowired
	private BookMapper bookMapper; 
	public List<BookTypeVO> queryHottestBooks() {
		// TODO Auto-generated method stub
		return bookMapper.queryHottestBooks();
	}

	public List<BookTypeVO> queryLatestBooks() {
		// TODO Auto-generated method stub
		return bookMapper.queryLatestBooks();
	}

	public void modify(Book book) {
		// TODO Auto-generated method stub
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


}
