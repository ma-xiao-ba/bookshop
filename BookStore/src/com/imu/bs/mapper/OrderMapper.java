package com.imu.bs.mapper;

import java.util.List;

import com.imu.bs.bean.Order;
import com.imu.bs.bean.ShoppingCart;

public interface OrderMapper {
	public void addOrder(Order order);
	public List<Order> queryOrder(String uname);
	public void changeState(Integer state,Integer oid);
	public List<ShoppingCart> queryOrderByIsbn(String oisbn);
}
