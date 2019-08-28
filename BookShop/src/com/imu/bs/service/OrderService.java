package com.imu.bs.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.imu.bs.bean.Order;
import com.imu.bs.bean.vo.OrderBookVO;

public interface OrderService {
	public List<Order> queryOrders();
	public boolean modifyOrder(Order order);
	public List<OrderBookVO> queryOrderDetail(Order order);
}
