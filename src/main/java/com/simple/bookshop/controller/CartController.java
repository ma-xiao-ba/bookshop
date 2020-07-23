package com.simple.bookshop.controller;

import com.simple.bookshop.bean.Cart;
import com.simple.bookshop.bean.User;
import com.simple.bookshop.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class CartController {
    @Autowired
    private CartService cartService;

    @RequestMapping("/addCart")
    public String addCart(Integer bid, Integer cnumber, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
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
