package com.imu.bs.mapper;

import java.util.List;

import com.imu.bs.bean.Order;
import com.imu.bs.bean.ShoppingCart;
import com.imu.bs.bean.vo.OrderBookVO;

public interface OrderMapper {
	public void addOrder(Order order);
	public List<Order> queryOrder(String uname);
	public void changeState(Integer state,Integer oid);
	public List<ShoppingCart> queryOrderByIsbn(String oisbn);
	//admin
	public List<Order> queryOrders();
	public void modifyOrder(Order order);
	public List<OrderBookVO> queryOrderDetail(Order order);
}
