package com.simple.bookshop.controller;

import com.simple.bookshop.bean.User;
import com.simple.bookshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login(User user, HttpSession session) {
        if (userService.login(user)) {
            if (user.getUrole() == 1) {
                session.setAttribute("user", user);
                return "redirect:/adminQueryBook.action";
            } else {
                session.setAttribute("user", user);
                return "first";
            }
        } else {
            return "error";
        }

    }

    @RequestMapping("/register")
    public String register(User user) {
        userService.register(user);
        return "first";
    }

    @RequestMapping("/logout")
    public String loginout(HttpSession session) {
        session.invalidate();
        return "first";
    }
}
