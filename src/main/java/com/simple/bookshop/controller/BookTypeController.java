package com.simple.bookshop.controller;

import com.simple.bookshop.bean.BookType;
import com.simple.bookshop.service.BookTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class BookTypeController {

    @Autowired
    private BookTypeService bookTypeService;

    @RequestMapping("/queryBookType")
    public String quaryBookType(HttpSession session) {
        session.setAttribute("bookType", bookTypeService.quaryBookType());
        return "booktypemanage";
    }

    @RequestMapping("/modifyBookType")
    public String modifyBookType(BookType bookType) {
        bookTypeService.modifyBookType(bookType);
        return "redirect:/queryBookType.action";
    }

    @RequestMapping("/addbooktype")
    public String addBookType(BookType bookType) {
        bookTypeService.addBookType(bookType);
        return "redirect:/queryBookType.action";
    }
}
