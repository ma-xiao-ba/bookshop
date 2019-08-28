package com.bs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.bean.Cart;
import com.bs.mapper.CartMapper;
import com.bs.service.CartService;

@Service
public class CartServiceImpl implements CartService{

	@Autowired
	private CartMapper cartMapper;
	public void addCart(Cart cart) {
		// TODO Auto-generated method stub
		cartMapper.addCart(cart);
	}
	
	
}
