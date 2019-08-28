package com.bs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.bean.ShoppingCart;
import com.bs.bean.User;
import com.bs.service.ShoppingCartService;

@Controller
public class ShoppingCartController {
	@Autowired
	private ShoppingCartService shoppingCartService;
	@RequestMapping("/queryShoppingCarts")
	public String queryShoppingCarts(HttpSession session){
		
		session.setAttribute("shoppingCarts", shoppingCartService.queryShoppingCarts("zhangsan"));
		return "cart";
	}
	@RequestMapping("/updateShoppingCarts")
	public void updateShoppingCarts(Integer cid,Integer number,HttpSession session){
		ShoppingCart sc = new ShoppingCart();
		sc.setCnumber(number);
		sc.setCid(cid);
		shoppingCartService.updateShoppingCarts(sc);
	}
	@RequestMapping("/removeShoppingCart")
	public void removeShoppingCart(Integer cid){
		shoppingCartService.removeShoppingCart(cid);
	}
}
