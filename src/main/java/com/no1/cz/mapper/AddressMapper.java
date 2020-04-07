package com.no1.cz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.no1.cz.domain.Address;

@Mapper
public interface AddressMapper {
	//根据用户Id获取收货人信息
	public List<Address> addressList(@Param("userId") int userId);
	//添加地址
	public void insertAddress(Address address);
	//删除地址
	public void deleteAddressByUser(@Param("addressId") int addressId);
	
	
	//通过address_id查询地址信息 
	public Address findById(Integer addressId);
	//修改地址
	public int updateAddress(Address address);
}
