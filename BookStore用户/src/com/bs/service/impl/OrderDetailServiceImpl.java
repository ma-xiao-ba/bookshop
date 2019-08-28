package com.bs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.bean.OrderDetail;
import com.bs.mapper.OrderDetailMapper;
import com.bs.service.OrderDetailService;


@Service
public class OrderDetailServiceImpl implements OrderDetailService{

	@Autowired
	private OrderDetailMapper orderMapper;
	public void addOrderDetail(OrderDetail orderDetail){
		orderMapper.addOrderDetail(orderDetail);
	}

}
