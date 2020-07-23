package com.simple.bookshop.service;

import com.simple.bookshop.bean.Book;
import com.simple.bookshop.bean.BookTypeVO;

import java.util.List;


public interface BookService {
    List<BookTypeVO> queryLatestBooks();

    List<BookTypeVO> queryHottestBooks();

    void modify(Book book);

    void remove(Integer bid);

    Book queryBookById(Integer bid);

    List<BookTypeVO> queryBooksByType(String btname);

    List<BookTypeVO> queryBooksByName(String bname);

    boolean addBook(Book book);

    void changeBookSales(Integer bsales, Integer bid);

    void changeStock(Book book);
}
