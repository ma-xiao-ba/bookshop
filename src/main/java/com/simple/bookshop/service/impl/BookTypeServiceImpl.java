package com.simple.bookshop.service.impl;

import com.simple.bookshop.bean.BookType;
import com.simple.bookshop.mapper.BookTypeMapper;
import com.simple.bookshop.service.BookTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookTypeServiceImpl implements BookTypeService {

    @Autowired
    private BookTypeMapper bookTypeMapper;

    public List<BookType> quaryBookType() {
        // TODO Auto-generated method stub
        return bookTypeMapper.quaryBookType();
    }

    public boolean modifyBookType(BookType bookType) {
        boolean flag = false;
        try {
            bookTypeMapper.modifyBookType(bookType);
            flag = true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public boolean addBookType(BookType bookType) {
        boolean flag = false;
        try {
            bookTypeMapper.addbBookType(bookType);
            flag = true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    //admin


}
