package com.imu.bs.service;

import java.util.List;

import com.imu.bs.bean.Book;
import com.imu.bs.bean.BookTypeVO;

public interface BookService {
	public List<BookTypeVO> queryLatestBooks();
	public List<BookTypeVO> queryHottestBooks();
	public void modify(Book book);
	public void remove(Integer bid);
	public Book queryBookById(Integer bid);
	public List<BookTypeVO> queryBooksByType(String btname);
	public List<BookTypeVO> queryBooksByName(String bname);
	public boolean addBook(Book book);
	public void changeBookSales(Integer bsales,Integer bid);
	public void changeStock(Book book);
}
