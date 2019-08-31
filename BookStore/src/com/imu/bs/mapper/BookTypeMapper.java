package com.imu.bs.mapper;

import java.util.List;

import com.imu.bs.bean.BookType;

public interface BookTypeMapper {
	public List<BookType> quaryBookType();
	public void modifyBookType(BookType bookType);
	public void addbBookType(BookType bookType);
}
