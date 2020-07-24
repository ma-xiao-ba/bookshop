package com.simple.bookshop.mapper;

import com.simple.bookshop.bean.Book;
import com.simple.bookshop.bean.BookTypeVO;

import java.util.List;


public interface BookMapper {
    List<BookTypeVO> queryLatestBooks();

    List<BookTypeVO> queryHottestBooks();

    void modify(Book book);

    void remove(Integer bid);

    Book queryBookById(Integer bid);

    List<BookTypeVO> queryBooksByType(String btname);

    List<BookTypeVO> queryBooksByName(String bname);

    void addBook(Book book);

    void changeBookSales(Integer bsales, Integer bid);

    void changeStock(Book book);
}
