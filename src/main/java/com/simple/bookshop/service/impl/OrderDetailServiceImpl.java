package com.simple.bookshop.service.impl;

import com.simple.bookshop.bean.OrderDetail;
import com.simple.bookshop.mapper.OrderDetailMapper;
import com.simple.bookshop.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class OrderDetailServiceImpl implements OrderDetailService {

    @Autowired
    private OrderDetailMapper orderMapper;

    public void addOrderDetail(OrderDetail orderDetail) {
        orderMapper.addOrderDetail(orderDetail);
    }

}
