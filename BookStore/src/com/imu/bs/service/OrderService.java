package com.imu.bs.service;

import java.util.List;

import com.imu.bs.bean.Order;
import com.imu.bs.bean.OrderDetail;
import com.imu.bs.bean.ShoppingCart;
import com.imu.bs.bean.vo.OrderBookVO;

public interface OrderService {
	public void addOrder(Order order);
	public List<Order> queryOrder(String uname);
	public void changeState(Integer ostate,Integer oid);
	public List<ShoppingCart> queryOrderByIsbn(String oisbn);
	
	//admin
	public List<Order> queryOrders();
	public boolean modifyOrder(Order order);
	public List<OrderBookVO> queryOrderDetail(Order order);
}
