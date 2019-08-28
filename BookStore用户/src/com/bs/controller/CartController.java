package com.bs.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.bean.Cart;
import com.bs.mapper.CartMapper;
import com.bs.service.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	@RequestMapping("/addCart")
	public String addCart(String uname,Integer bid,Integer cnumber,HttpSession session){
		try {
			uname=new String(uname.getBytes("ISO-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Cart cart = new Cart();
		cart.setBid(bid);
		cart.setCnumber(cnumber);
		cart.setUname(uname);
		cartService.addCart(cart);
		return "index";
	}
}
