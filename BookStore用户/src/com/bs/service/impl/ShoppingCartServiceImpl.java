package com.bs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.bean.ShoppingCart;
import com.bs.bean.User;
import com.bs.mapper.ShoppingCartMapper;
import com.bs.service.ShoppingCartService;

@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {

	
	@Autowired
	private ShoppingCartMapper shoppingCartMapper;
	public List<ShoppingCart> queryShoppingCarts(String uname) {
		return shoppingCartMapper.queryShoppingCarts(uname);
	}
	public void updateShoppingCarts(ShoppingCart shoppingCart){
		shoppingCartMapper.updateShoppingCarts(shoppingCart);
	}
	public void removeShoppingCart(Integer cid) {
		shoppingCartMapper.removeShoppingCart(cid);
	}
	public ShoppingCart queryCart(Integer cid){
		return shoppingCartMapper.queryCart(cid);
	}
	
}
