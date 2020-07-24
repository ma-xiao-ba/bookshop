package com.simple.bookshop.controller;

import com.simple.bookshop.bean.ShoppingCart;
import com.simple.bookshop.bean.User;
import com.simple.bookshop.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class ShoppingCartController {
    @Autowired
    private ShoppingCartService shoppingCartService;

    @RequestMapping("/queryShoppingCarts")
    public String queryShoppingCarts(HttpSession session) {
        if (session.getAttribute("user") == null) {
            return "login";
        }
        User user = (User) session.getAttribute("user");
        session.setAttribute("shoppingCarts", shoppingCartService.queryShoppingCarts(user.getUname()));
        return "cart";
    }

    @RequestMapping("/updateShoppingCarts")
    public void updateShoppingCarts(Integer cid, Integer number, HttpSession session) {
        ShoppingCart sc = new ShoppingCart();
        sc.setCnumber(number);
        sc.setCid(cid);
        shoppingCartService.updateShoppingCarts(sc);
    }

    @RequestMapping("/removeShoppingCart")
    public void removeShoppingCart(Integer cid) {
        shoppingCartService.removeShoppingCart(cid);
    }
}
