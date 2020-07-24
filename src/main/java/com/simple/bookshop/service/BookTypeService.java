package com.simple.bookshop.service;

import com.simple.bookshop.bean.BookType;

import java.util.List;

public interface BookTypeService {
    List<BookType> quaryBookType();

    boolean modifyBookType(BookType bookType);

    boolean addBookType(BookType bookType);


}
