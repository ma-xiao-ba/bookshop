package com.imu.bs.mapper;

import java.util.List;

import com.imu.bs.bean.ShoppingCart;
import com.imu.bs.bean.User;

public interface ShoppingCartMapper {
	public List<ShoppingCart> queryShoppingCarts(User user);
	public void removeShoppingCart(ShoppingCart shoppingCart);
}
