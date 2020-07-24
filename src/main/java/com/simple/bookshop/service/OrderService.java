package com.simple.bookshop.service;

import com.simple.bookshop.bean.Order;
import com.simple.bookshop.bean.ShoppingCart;
import com.simple.bookshop.bean.vo.OrderBookVO;

import java.util.List;

public interface OrderService {
    void addOrder(Order order);

    List<Order> queryOrder(String uname);

    void changeState(Integer ostate, Integer oid);

    List<ShoppingCart> queryOrderByIsbn(String oisbn);

    //admin
    List<Order> queryOrders();

    boolean modifyOrder(Order order);

    List<OrderBookVO> queryOrderDetail(Order order);
}
