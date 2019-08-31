package com.imu.bs.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.imu.bs.bean.Order;
import com.imu.bs.bean.OrderDetail;
import com.imu.bs.bean.ShoppingCart;
import com.imu.bs.bean.User;
import com.imu.bs.service.BookService;
import com.imu.bs.service.OrderDetailService;
import com.imu.bs.service.OrderService;
import com.imu.bs.service.ShoppingCartService;
import com.imu.bs.tool.UtilTool;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private ShoppingCartService shoppingCartService;
	@Autowired
	private OrderDetailService orderDetailService;
	@Autowired
	private BookService bookService;

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
			addr =new String(addr);
			detail =new String(detail);
			addr+=" "+detail;
			mark =new String(mark);

		System.out.println(addr);
		System.out.println(mark);
		List<ShoppingCart> scs=(List<ShoppingCart>) session.getAttribute("scs");
		User user = (User) session.getAttribute("user");
		Order order = new Order();
		OrderDetail orderDetail = new OrderDetail();
		order.setOaddr(addr);
		order.setOmark(mark);
		order.setUname(user.getUname());
		String oNumber = UtilTool.getOnumber();
		order.setOisbn(oNumber);
		orderService.addOrder(order);
		for (int i = 0; i < scs.size(); i++) {
			orderDetail.setOdmunber(scs.get(i).getCnumber());
			orderDetail.setOisbn(oNumber);
			orderDetail.setBid(scs.get(i).getBid());
			orderDetailService.addOrderDetail(orderDetail);
			shoppingCartService.removeShoppingCart(scs.get(i).getCid());
			bookService.changeBookSales(scs.get(i).getCnumber(), scs.get(i).getBid());
		}
		return "redirect:/queryShoppingCarts.action";
	}
	
	@RequestMapping("/queryOrder")
	public String queryOrder(HttpSession session){
		User user = (User) session.getAttribute("user");
		if(user==null) {
			return "login";
		}
		session.setAttribute("orders", orderService.queryOrder(user.getUname()));
		return "order";
	}
	
	@RequestMapping("/changeState")
	public String changeState(Integer ostate,Integer oid,HttpSession session){
		orderService.changeState(ostate, oid);
		User user = (User) session.getAttribute("user");
		session.setAttribute("orders", orderService.queryOrder(user.getUname()));
		return "order";
	}
	
	@RequestMapping("/queryOrderByIsbn")
	public String queryOrderByIsbn(String oisbn,HttpSession session){

			oisbn = new String(oisbn);

		System.out.println(oisbn);
		List<ShoppingCart> l = orderService.queryOrderByIsbn(oisbn);
		for(int i=0;i<l.size();i++){
			System.out.println(l.get(i).getBname());
		}
		session.setAttribute("orderDetail", l);
		return "orderDetail";
	}
	
	//admin
	
	@RequestMapping("/queryOrders")
	public String queryOrders(HttpSession session){
		session.setAttribute("orders", orderService.queryOrders());
		return "ordermanage";
	}
	@RequestMapping("/modifyOrder")
	public String modifyOrder(HttpServletRequest request,Order order){
		if(orderService.modifyOrder(order)){
			return "redirect:/queryOrders.action";
		}else
		return null;
	}
	@RequestMapping("/queryOrderDetail")
	public String queryOrderDetail(HttpSession session,Order order){
		session.setAttribute("orderdetails",orderService.queryOrderDetail(order));
		System.out.println(orderService.queryOrderDetail(order));
		return "orderdetailadmin";
	}
}
