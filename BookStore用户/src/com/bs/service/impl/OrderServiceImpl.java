package com.bs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.bean.Order;
import com.bs.bean.ShoppingCart;
import com.bs.mapper.OrderMapper;
import com.bs.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderMapper orderMapper;
	public void addOrder(Order order){
		orderMapper.addOrder(order);
	}
	public List<Order> queryOrder(String uname) {
		// TODO Auto-generated method stub
		return orderMapper.queryOrder(uname);
	}
	public void changeState(Integer ostate, Integer oid) {
		// TODO Auto-generated method stub
		orderMapper.changeState(ostate, oid);
	}
	public List<ShoppingCart> queryOrderByIsbn(String oisbn) {
		// TODO Auto-generated method stub
		return orderMapper.queryOrderByIsbn(oisbn);
	}

}
