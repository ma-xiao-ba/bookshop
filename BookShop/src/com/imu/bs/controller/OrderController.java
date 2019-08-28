package com.imu.bs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.imu.bs.bean.Order;
import com.imu.bs.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("/queryOrder")
	public String queryOrder(HttpSession session){
		session.setAttribute("orders", orderService.queryOrders());
		return "ordermanage";
	}
	@RequestMapping("/modifyOrder")
	public String modifyOrder(HttpServletRequest request,Order order){
		if(orderService.modifyOrder(order)){
			return "redirect:/queryOrder.action";
		}else
		return null;
	}
	@RequestMapping("/queryOrderDetail")
	public String queryOrderDetail(HttpSession session,Order order){
		session.setAttribute("orderdetails",orderService.queryOrderDetail(order));
		System.out.println(orderService.queryOrderDetail(order));
		return "orderdetail";
	}
}
