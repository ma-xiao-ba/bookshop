package com.imu.bs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.imu.bs.bean.BookType;
import com.imu.bs.service.BookTypeService;

@Controller
public class BookTypeController {

	@Autowired
	private BookTypeService bookTypeService;
	@RequestMapping("/quaryBookType")
	public void quaryBookType(HttpSession session){
		session.setAttribute("bookType", bookTypeService.quaryBookType());
	}
}
