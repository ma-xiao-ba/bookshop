package com.imu.bs.service;

import java.util.List;

import com.imu.bs.bean.ShoppingCart;
import com.imu.bs.bean.User;

public interface ShoppingCartService {
	public List<ShoppingCart> queryShoppingCarts(String uname);
	public void updateShoppingCarts(ShoppingCart shoppingCart);
	public void removeShoppingCart(Integer cid);
	public ShoppingCart queryCart(Integer cid);
}
