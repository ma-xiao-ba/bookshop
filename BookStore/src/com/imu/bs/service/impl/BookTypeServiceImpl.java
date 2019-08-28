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
	public List<BookType> quaryBookType() {
		// TODO Auto-generated method stub
		return bookTypeMapper.quaryBookType();
	}

}
