package com.imu.bs.mapper;

import java.util.List;

import com.imu.bs.bean.Order;
import com.imu.bs.bean.vo.OrderBookVO;

public interface OrderMapper {
	public List<Order> queryOrders();
	public void modifyOrder(Order order);
	public List<OrderBookVO> queryOrderDetail(Order order);
}
