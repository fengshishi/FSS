package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.Orders;

@Mapper
public interface OrdersMapper {	
	//2.保存Orders
	public void insert(Orders order);
	//3.根据用户Id查找所有订单
	public List<Orders> selectAll(@Param("userId") int userId);
	//支付成功后改变订单状态
   public void updateStatus(@Param("orderId") String orderId);
   //找到支付后的订单
   public List<Orders> selectOrders(@Param("orderId") String orderId);
}
