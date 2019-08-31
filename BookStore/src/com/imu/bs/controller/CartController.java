package com.imu.bs.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.imu.bs.bean.Cart;
import com.imu.bs.bean.User;
import com.imu.bs.mapper.CartMapper;
import com.imu.bs.service.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	@RequestMapping("/addCart")
	public String addCart(Integer bid,Integer cnumber,HttpSession session){
		User user = (User) session.getAttribute("user");
		if(user==null) {
			return "login";
		}
		Cart cart = new Cart();
		cart.setBid(bid);
		cart.setCnumber(cnumber);
		cart.setUname(user.getUname());
		cartService.addCart(cart);
		return "index";
	}
}
