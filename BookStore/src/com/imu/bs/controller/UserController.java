package com.imu.bs.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.imu.bs.bean.User;
import com.imu.bs.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	@RequestMapping("/login")
	public String login(User user,HttpSession session){
		if(userService.login(user)){
			if(user.getUrole()==1){
				session.setAttribute("user",user);
				return "redirect:/adminQueryBook.action";
			}else{
				session.setAttribute("user",user);
				return "first";
			}
		}else{
			return "error";
		}
		
	}
	
	@RequestMapping("/register")
	public String register(User user){
		userService.register(user);
		return "first";
	}
	@RequestMapping("/logout")
	public String loginout(HttpSession session){
		session.invalidate();
		return "first";
	}
}
