package com.simple.bookshop.service.impl;

import com.simple.bookshop.bean.Cart;
import com.simple.bookshop.mapper.CartMapper;
import com.simple.bookshop.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartMapper cartMapper;

    public void addCart(Cart cart) {
        // TODO Auto-generated method stub
        cartMapper.addCart(cart);
    }


}
