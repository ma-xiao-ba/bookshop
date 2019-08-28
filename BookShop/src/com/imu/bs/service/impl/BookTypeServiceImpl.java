package com.imu.bs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imu.bs.bean.BookType;
import com.imu.bs.mapper.BookTypeMapper;
import com.imu.bs.service.BookTypeService;

@Service
public class BookTypeServiceImpl implements BookTypeService {

	@Autowired
	private BookTypeMapper bookTypeMapper;
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

	public List<BookType> queryBookTypes() {
		return bookTypeMapper.queryBookTypes();
	}

}
