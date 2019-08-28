package com.bs.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.bean.User;
import com.bs.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	@RequestMapping("/login")
	public String login(User user,HttpSession session){
		if(userService.login(user)){
			session.setAttribute("user",user);
			return "ok";
		}else{
			return "error";
		}
		
	}
}
