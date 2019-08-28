package com.imu.bs.service;

import java.util.List;

import com.imu.bs.bean.BookType;

public interface BookTypeService {
	public List<BookType> queryBookTypes();
	public boolean modifyBookType(BookType bookType);
}
