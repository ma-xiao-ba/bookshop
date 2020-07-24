package com.simple.bookshop.mapper;

import com.simple.bookshop.bean.Order;
import com.simple.bookshop.bean.ShoppingCart;
import com.simple.bookshop.bean.vo.OrderBookVO;

import java.util.List;

public interface OrderMapper {
    void addOrder(Order order);

    List<Order> queryOrder(String uname);

    void changeState(Integer state, Integer oid);

    List<ShoppingCart> queryOrderByIsbn(String oisbn);

    //admin
    List<Order> queryOrders();

    void modifyOrder(Order order);

    List<OrderBookVO> queryOrderDetail(Order order);
}
