package com.simple.bookshop.service;

import com.simple.bookshop.bean.ShoppingCart;

import java.util.List;

public interface ShoppingCartService {
    List<ShoppingCart> queryShoppingCarts(String uname);

    void updateShoppingCarts(ShoppingCart shoppingCart);

    void removeShoppingCart(Integer cid);

    ShoppingCart queryCart(Integer cid);
}
