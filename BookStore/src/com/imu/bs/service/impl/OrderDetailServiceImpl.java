package com.imu.bs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imu.bs.bean.OrderDetail;
import com.imu.bs.mapper.OrderDetailMapper;
import com.imu.bs.service.OrderDetailService;


@Service
public class OrderDetailServiceImpl implements OrderDetailService{

	@Autowired
	private OrderDetailMapper orderMapper;
	public void addOrderDetail(OrderDetail orderDetail){
		orderMapper.addOrderDetail(orderDetail);
	}

}
