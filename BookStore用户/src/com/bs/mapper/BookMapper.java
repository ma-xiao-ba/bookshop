package com.bs.mapper;

import java.util.List;

import com.bs.bean.Book;
import com.bs.bean.BookTypeVO;

public interface BookMapper {
	public List<BookTypeVO> queryLatestBooks();
	public List<BookTypeVO> queryHottestBooks();
	public void modify(Book book);
	public void remove(Integer bid);
	public Book queryBookById(Integer bid);
	public List<BookTypeVO> queryBooksByType(String btname);
	public List<BookTypeVO> queryBooksByName(String bname);
}
