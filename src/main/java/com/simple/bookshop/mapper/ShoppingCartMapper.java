package com.simple.bookshop.mapper;

import com.simple.bookshop.bean.ShoppingCart;

import java.util.List;

public interface ShoppingCartMapper {
    List<ShoppingCart> queryShoppingCarts(String uname);

    void updateShoppingCarts(ShoppingCart shoppingCart);

    void removeShoppingCart(Integer cid);

    ShoppingCart queryCart(Integer cid);
}
