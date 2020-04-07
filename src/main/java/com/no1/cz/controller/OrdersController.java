package com.no1.cz.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.no1.cz.domain.Address;
import com.no1.cz.domain.Cart;
import com.no1.cz.domain.Orders;
import com.no1.cz.domain.User;
import com.no1.cz.service.AddressService;
import com.no1.cz.service.CartService;
import com.no1.cz.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrdersController {

	@Resource
	private OrderService orderService;
	@Resource
	private CartService cartService; 
	@Resource
	private AddressService addressService; 
	
	@RequestMapping("ordersInfo")
	public String orderInfo(Model model,HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(user);
		int userId = user.getUserId();
		List<Orders> ordersAllList = this.orderService.selectAll(userId);
		model.addAttribute("ordersAllList", ordersAllList);
		System.out.println(ordersAllList);
		return "cart/ordersInfo";
	}
	
	@RequestMapping("insert")
	public String save(Model model,HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(user);
		int userId = user.getUserId();
		System.out.println("执行到这里,拿到的userId:" + userId);
		
		try {
			//List<Address> addressDefault = this.addressService.findAddressDefault(userId);
			//model.addAttribute("addressDefault", addressDefault);//显示默认地址
			List<Cart> cartList = this.cartService.selectByUser(userId);
			model.addAttribute("cartList", cartList);//显示购物车信息
			List<Orders> ordersList = this.orderService.selectAll(userId);
			model.addAttribute("ordersList", ordersList);	
			this.orderService.saveOrders(cartList, userId);
		    System.out.println(cartList);
		    //System.out.println(addressDefault);
		    System.out.println(ordersList);
			return "cart/ordersInfo";
		}catch(Exception e) {
			e.printStackTrace();
			return "";
		}
	}
}
