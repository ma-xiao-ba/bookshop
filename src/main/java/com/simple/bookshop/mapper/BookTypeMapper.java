package com.simple.bookshop.mapper;

import com.simple.bookshop.bean.BookType;

import java.util.List;

public interface BookTypeMapper {
    List<BookType> quaryBookType();

    void modifyBookType(BookType bookType);

    void addbBookType(BookType bookType);
}
