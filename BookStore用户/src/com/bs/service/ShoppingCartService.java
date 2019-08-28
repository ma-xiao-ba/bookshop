package com.bs.service;

import java.util.List;

import com.bs.bean.ShoppingCart;
import com.bs.bean.User;

public interface ShoppingCartService {
	public List<ShoppingCart> queryShoppingCarts(String uname);
	public void updateShoppingCarts(ShoppingCart shoppingCart);
	public void removeShoppingCart(Integer cid);
	public ShoppingCart queryCart(Integer cid);
}
