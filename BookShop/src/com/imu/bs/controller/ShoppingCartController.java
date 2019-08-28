package com.imu.bs.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.imu.bs.bean.ShoppingCart;
import com.imu.bs.bean.User;
import com.imu.bs.service.ShoppingCartService;

@Controller
public class ShoppingCartController {
	@Autowired
	private ShoppingCartService shoppingCartService;
	@RequestMapping("/queryShoppingCarts")
	public String queryShoppingCarts(User user,HttpSession session){
		session.setAttribute("shoppingCarts", shoppingCartService.queryShoppingCarts(user));
		return null;
	}
	@RequestMapping("/removeShoppingCart")
	public String removeShoppingCart(ShoppingCart shoppingCart){
		shoppingCartService.removeShoppingCart(shoppingCart);
		return null;
	}
}
