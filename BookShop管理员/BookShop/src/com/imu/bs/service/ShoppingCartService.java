package com.imu.bs.service;

import java.util.List;

import com.imu.bs.bean.ShoppingCart;
import com.imu.bs.bean.User;

public interface ShoppingCartService {
	public List<ShoppingCart> queryShoppingCarts(User user);
	public void removeShoppingCart(ShoppingCart shoppingCart);
}
