package com.no1.cz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.Books;
import com.no1.cz.domain.Cart;
import com.no1.cz.mapper.BooksMapper;
import com.no1.cz.mapper.CartMapper;

@Service
public class CartService {

	@Resource
	private CartMapper cartMapper;
	@Resource
	private BooksMapper booksMapper;

	@Transactional(propagation=Propagation.REQUIRED, readOnly=true)
	public List<Cart> selectByUser(int userId) {
		try {
			List<Cart> cartList = this.cartMapper.selectByUser(userId);
			return cartList;
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Transactional(propagation=Propagation.REQUIRED)
	public void updateCartNum(int booksQuantity, int booksId, int userId, double cartPrice) {
		try {
			this.cartMapper.updateCartNum(booksQuantity, cartPrice, booksId, userId);
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void saveCart(Cart cart, List<Books> selectById) {   // 这个bookList目前指代的是所有商品。他应该指代的是用户选择的
		try {
			/*
			 * List<Cart> cartList = new ArrayList<Cart>();
			 * User user = new User();
			 * user.setUserId(userId);
			 * 
			 * for(Books books : booksList) {
			 * Cart cart = cart.setBooksId(books);
			 * cart.setCartPrice(books.getBooksPrice()); }
			 * 
			 * cart.setBooksQuantity(1);
			 */
			
			for(Books books : selectById) {
				 cart.setBooksId(books);
				 cart.setCartPrice(books.getBooksPrice());
				 }
			
			cart.setBooksQuantity(1);
			
			
			this.cartMapper.insertCart(cart);
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void deleteByCartId(int cartId) {
		try {
			this.cartMapper.deleteByCart(cartId);
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

}
