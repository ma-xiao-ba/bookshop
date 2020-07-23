package com.simple.bookshop.service.impl;

import com.simple.bookshop.bean.Order;
import com.simple.bookshop.bean.ShoppingCart;
import com.simple.bookshop.bean.vo.OrderBookVO;
import com.simple.bookshop.mapper.OrderMapper;
import com.simple.bookshop.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    public void addOrder(Order order) {
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

    //admin

    public boolean modifyOrder(Order order) {
        boolean flag = false;
        try {
            orderMapper.modifyOrder(order);
            flag = true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return flag;
    }

    public List<Order> queryOrders() {
        return orderMapper.queryOrders();
    }

    public List<OrderBookVO> queryOrderDetail(Order order) {
        return orderMapper.queryOrderDetail(order);
    }
}
