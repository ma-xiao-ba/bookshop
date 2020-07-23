package com.simple.bookshop.service.impl;

import com.simple.bookshop.bean.Book;
import com.simple.bookshop.bean.BookTypeVO;
import com.simple.bookshop.mapper.BookMapper;
import com.simple.bookshop.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Resource
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
        return bookMapper.queryBooksByType(btname);
    }

    public List<BookTypeVO> queryBooksByName(String bname) {
        return bookMapper.queryBooksByName(bname);
    }

    public boolean addBook(Book book) {
        boolean flag = false;
        try {
            bookMapper.addBook(book);
            System.out.println(book.toString());
            flag = true;
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return flag;
    }


    public void changeBookSales(Integer bsales, Integer bid) {
        bookMapper.changeBookSales(bsales, bid);
    }

    public void changeStock(Book book) {
        bookMapper.changeStock(book);
    }


}
