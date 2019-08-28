package com.bs.service;

import java.util.List;

import com.bs.bean.Order;
import com.bs.bean.OrderDetail;
import com.bs.bean.ShoppingCart;

public interface OrderService {
	public void addOrder(Order order);
	public List<Order> queryOrder(String uname);
	public void changeState(Integer ostate,Integer oid);
	public List<ShoppingCart> queryOrderByIsbn(String oisbn);
}
