package com.bs.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.bean.Order;
import com.bs.bean.OrderDetail;
import com.bs.bean.ShoppingCart;
import com.bs.service.OrderDetailService;
import com.bs.service.OrderService;
import com.bs.service.ShoppingCartService;
import com.bs.tool.UtilTool;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private ShoppingCartService shoppingCartService;
	@Autowired
	private OrderDetailService orderDetailService;

	@RequestMapping("/getCartId")
	public String getCartId(HttpServletRequest request) {
		String[] ids = request.getParameterValues("F_IsMenu");
		if (ids == null||ids.length==0)
			return "cart";

		List<ShoppingCart> list = new ArrayList<ShoppingCart>();
		double total = 0;
		for (int i = 0; i < ids.length; i++) {

			ShoppingCart s = shoppingCartService.queryCart(Integer
					.parseInt(ids[i]));
			list.add(s);
			total += list.get(i).getBprice() * list.get(i).getCnumber();
		}
		System.out.println(total);
		request.getSession().setAttribute("scs", list);
		request.getSession().setAttribute("totalprice", total);
	
		return "settle";
	}

	@RequestMapping("/settle")
	public String settle(String addr, String detail, String mark,
			HttpSession session) {
		try {
			addr =new String(addr.getBytes("ISO-8859-1"),"utf-8");
			detail =new String(detail.getBytes("ISO-8859-1"),"utf-8");
			addr+=" "+detail;
			mark =new String(mark.getBytes("ISO-8859-1"),"utf-8");
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		System.out.println(addr);
		System.out.println(mark);
		List<ShoppingCart> scs=(List<ShoppingCart>) session.getAttribute("scs");
		Order order = new Order();
		OrderDetail orderDetail = new OrderDetail();
		order.setOaddr(addr);
		order.setOmark(mark);
		order.setUname("zhangsan");
		String oNumber = UtilTool.getOnumber();
		order.setOisbn(oNumber);
		orderService.addOrder(order);
		for (int i = 0; i < scs.size(); i++) {
			orderDetail.setOdmunber(scs.get(i).getCnumber());
			orderDetail.setOisbn(oNumber);
			orderDetail.setBid(scs.get(i).getBid());
			orderDetailService.addOrderDetail(orderDetail);
			shoppingCartService.removeShoppingCart(scs.get(i).getCid());
		}
		return "redirect:/queryShoppingCarts.action?uname="+"zhangsan";
	}
	
	@RequestMapping("/queryOrder")
	public String queryOrder(String uname,HttpSession session){
		try {
			uname = new String(uname.getBytes("iso-8895-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("orders", orderService.queryOrder(uname));
		return "ordermanage";
	}
	
	@RequestMapping("/changeState")
	public String changeState(Integer ostate,Integer oid,String uname,HttpSession session){
		orderService.changeState(ostate, oid);
		try {
			uname = new String(uname.getBytes("iso-8895-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("orders", orderService.queryOrder(uname));
		return "ordermanage";
	}
	
	@RequestMapping("/queryOrderByIsbn")
	public String queryOrderByIsbn(String oisbn,HttpSession session){
		try {
			oisbn = new String(oisbn.getBytes("iso-8895-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(oisbn);
		List<ShoppingCart> l = orderService.queryOrderByIsbn(oisbn);
		for(int i=0;i<l.size();i++){
			System.out.println(l.get(i).getBname());
		}
		session.setAttribute("orderDetail", l);
		return "orderDetail";
	}
}
