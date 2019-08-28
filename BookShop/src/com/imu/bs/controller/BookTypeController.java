package com.imu.bs.controller;

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
	@RequestMapping("/queryBookTypes")
	public String queryBookTypes(HttpSession session){
		session.setAttribute("bts", bookTypeService.queryBookTypes());
		return "booktypemanage";
	}
	@RequestMapping("/modifyBookType")
	public String modifyBookType(BookType bookType){
		bookTypeService.modifyBookType(bookType);
		return "redirect:/queryBookTypes";
	}
}
