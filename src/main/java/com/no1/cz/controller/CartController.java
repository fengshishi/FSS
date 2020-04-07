package com.no1.cz.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.no1.cz.domain.Books;
import com.no1.cz.domain.Cart;
import com.no1.cz.domain.User;
import com.no1.cz.service.BooksService;
import com.no1.cz.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Resource
	private CartService cartService;
	@Resource
	private BooksService booksService;
	
	@RequestMapping("items")
    public String cartItems(Model model,HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(user);
		int userId = user.getUserId();
		List<Cart> cartList = this.cartService.selectByUser(userId);
		for(Cart c : cartList) {
			System.out.println(c);
		}
		
		model.addAttribute("cartList", cartList);
		return "cart/cartItems";
	}
	
	@RequestMapping("insert")
	public String saveCart(Model model, @RequestParam("booksId") int booksId ,HttpServletRequest request) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			System.out.println(user);
			int userId = user.getUserId();
			System.out.println("拿到用户Id"+userId);
			//int userId =((User)(request.getSession().getAttribute("user"))).getUserId();
			//System.out.println(userId);
			List<Books> selectById = this.booksService.selectById(booksId);
			model.addAttribute("selectById", selectById);
			Cart cart = new Cart();
			cart.setUserId(user);
			this.cartService.saveCart(cart, selectById);
			return "redirect:/cart/items";
		}catch(Exception e) {
			e.printStackTrace();
			return "";
		}
	}
	
	@RequestMapping("delete")
	public String deleteCart(@Param("cartId") int cartId) {
		try {
			this.cartService.deleteByCartId(cartId);
			return "redirect:/cart/items";
		}catch(Exception e) {
			e.printStackTrace();
			return "";
		}
	}
	
	/*
	 * @RequestMapping("update") public String update(@RequestParam("booksId") int
	 * booksId, @RequestParam("booksQuantity") int booksQuantity, HttpServletRequest
	 * request) { try { User user = (User)
	 * request.getSession().getAttribute("user"); System.out.println(user); int
	 * userId = user.getUserId(); this.cartService.updateCartNum(userId,
	 * booksQuantity, booksId); return "redirect:/cart/items"; }catch(Exception e) {
	 * e.printStackTrace(); return ""; } }
	 */
	
	@RequestMapping("asyUpdate")
//	@ResponseBody
	public String asyUpdate(@RequestParam("num") int num, @RequestParam("price") double price, @Param("booksId")int booksId,
			HttpServletRequest request) {
		System.out.println("num:" + num + ";price:" + price + ";booksId:" + booksId);
		// 获取到userId
		User user = (User) request.getSession().getAttribute("user");
		double cartPrice = num*price;
		this.cartService.updateCartNum(num, booksId, user.getUserId(),cartPrice);
		System.out.println(price);
		System.out.println("cartPrice："+cartPrice);
		return "redirect:/cart/items";
	}
	
}
