package com.imu.bs.mapper;

import java.util.List;

import com.imu.bs.bean.BookType;

public interface BookTypeMapper {
	public List<BookType> queryBookTypes();
	public void modifyBookType(BookType bookType);
}
