package com.no1.cz.service;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.Books;
import com.no1.cz.domain.Cart;
import com.no1.cz.domain.Details;
import com.no1.cz.domain.Orders;
import com.no1.cz.domain.Status;
import com.no1.cz.domain.User;
import com.no1.cz.mapper.BooksMapper;
import com.no1.cz.mapper.CartMapper;
import com.no1.cz.mapper.DetailsMapper;
import com.no1.cz.mapper.OrdersMapper;

@Service
public class OrderService {

	@Resource
	private OrdersMapper ordersMapper;
	@Resource
	private DetailsMapper detailsMapper;
	@Resource
	private CartMapper cartMapper;
	@Resource 
	private BooksMapper booksMapper;
	
	
	
	public List<Orders> selectAll(int userId){
		try {
			List<Orders> orderAllList = this.ordersMapper.selectAll(userId);
			return orderAllList;
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	//显示订单表明细
	@Transactional(rollbackFor=Exception.class)
	public List<Details> findDetailsById(int userId) {
		try {
			List<Details> detailsList=this.detailsMapper.findDetailsById(userId);
			return detailsList;
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	@Transactional(rollbackFor=Exception.class)
	public void saveOrders(List<Cart> cartList, int userId) {
		//保存订单信息
		Orders order = new Orders();
		order.setOrderId(UUID.randomUUID().toString());
		User user = new User();
		user.setUserId(userId);
		order.setOrderUser(user);
		Status status = new Status();
		status.setStatusId(1);
		order.setOrderStatus(status);
		double price = 0.0;
		try {
			//保存订单明细信息
			 for(Cart cart : cartList) {
			     Books books = cart.getBooksId();
	             cart.setBooksId(books);
	             int booksNum=books.getBooksNum()-cart.getBooksQuantity();
	             Details detail = new Details();
				 detail.setDetailCart(cart);
				 detail.setDetailOrder(order.getOrderId());
				 double singlePrice = cart.getCartPrice();
				 detail.setDetailPrice(singlePrice);
			     detail.setDetailNum(cart.getBooksQuantity());
			     this.detailsMapper.insert(detail);  
			     //删除购物车信息
			     this.cartMapper.deleteByUser(userId);
			   //修改books数量
			     this.booksMapper.updateNumById(booksNum, books.getBooksId());
			     price += singlePrice;//累加details里的价格
			 }
			 order.setOrderPrice(price);
			 this.ordersMapper.insert(order);
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	//修改订单状态
		@Transactional(rollbackFor=Exception.class)
		public void updateStatus(String orderId) {
			try {
				this.ordersMapper.updateStatus(orderId);
			}catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}
		//显示支付后的订单表明细
		@Transactional(rollbackFor=Exception.class)
		public List<Orders> findOrders(String orderId) {
			try {
				List<Orders> orders=this.ordersMapper.selectOrders(orderId);
				return orders;
			}catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}
}
