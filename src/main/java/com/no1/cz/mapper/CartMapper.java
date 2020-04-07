package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.Cart;

@Mapper
public interface CartMapper {
	
	//按用户查找购物车信息
	public List<Cart> selectByUser(@Param("userId") int userId);
	//生成订单后清除购物车信息
	public void deleteByUser(@Param("userId") int userId);
	//添加进购物车
	public void insertCart(Cart cart);
	//不想要的东西删了
	public void deleteByCart(@Param("cartId") int cartId);
	//修改购物车的书本数量
	public void updateCartNum(@Param("booksQuantity") int booksQuantity, @Param("cartPrice") double cartPrice, @Param("booksId") int booksId, @Param("userId") int userId);
	
}
