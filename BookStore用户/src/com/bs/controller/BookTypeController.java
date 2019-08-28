package com.bs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.bean.BookTypes;
import com.bs.service.BookTypeService;

@Controller
public class BookTypeController {

	@Autowired
	private BookTypeService bookTypeService;
	@RequestMapping("/quaryBookType")
	public void quaryBookType(HttpSession session){
		session.setAttribute("bookType", bookTypeService.quaryBookType());
	}
}
