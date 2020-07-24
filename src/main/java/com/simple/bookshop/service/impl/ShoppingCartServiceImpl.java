package com.simple.bookshop.service.impl;

import com.simple.bookshop.bean.ShoppingCart;
import com.simple.bookshop.mapper.ShoppingCartMapper;
import com.simple.bookshop.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {


    @Autowired
    private ShoppingCartMapper shoppingCartMapper;

    public List<ShoppingCart> queryShoppingCarts(String uname) {
        return shoppingCartMapper.queryShoppingCarts(uname);
    }

    public void updateShoppingCarts(ShoppingCart shoppingCart) {
        shoppingCartMapper.updateShoppingCarts(shoppingCart);
    }

    public void removeShoppingCart(Integer cid) {
        shoppingCartMapper.removeShoppingCart(cid);
    }

    public ShoppingCart queryCart(Integer cid) {
        return shoppingCartMapper.queryCart(cid);
    }

}
