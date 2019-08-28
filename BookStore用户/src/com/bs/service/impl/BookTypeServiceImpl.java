package com.bs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.bean.BookTypes;
import com.bs.mapper.BookTypeMapper;
import com.bs.service.BookTypeService;

@Service
public class BookTypeServiceImpl implements BookTypeService {

	@Autowired
	private BookTypeMapper bookTypeMapper;
	public List<BookTypes> quaryBookType() {
		// TODO Auto-generated method stub
		return bookTypeMapper.quaryBookType();
	}

}
