package com.bs.mapper;

import java.util.List;

import com.bs.bean.Cart;
import com.bs.bean.ShoppingCart;

public interface ShoppingCartMapper {
	public List<ShoppingCart> queryShoppingCarts(String uname);
	public void updateShoppingCarts(ShoppingCart shoppingCart);
	public void removeShoppingCart(Integer cid);
	public ShoppingCart queryCart(Integer cid);
}
