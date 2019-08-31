package com.imu.bs.service;

import java.util.List;

import com.imu.bs.bean.BookType;
import com.imu.bs.bean.Order;
import com.imu.bs.bean.vo.OrderBookVO;

public interface BookTypeService {
	public List<BookType> quaryBookType();
	public boolean modifyBookType(BookType bookType);
	public boolean addBookType(BookType bookType);
	
	

}
