package com.imu.bs.mapper;

import java.util.List;

import com.imu.bs.bean.Cart;
import com.imu.bs.bean.ShoppingCart;

public interface ShoppingCartMapper {
	public List<ShoppingCart> queryShoppingCarts(String uname);
	public void updateShoppingCarts(ShoppingCart shoppingCart);
	public void removeShoppingCart(Integer cid);
	public ShoppingCart queryCart(Integer cid);
}
