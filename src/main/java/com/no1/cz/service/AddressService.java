package com.no1.cz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.Address;
import com.no1.cz.mapper.AddressMapper;

@Service
public class AddressService {

	@Resource
	public AddressMapper addressMapper;
	
	//按userId查询用户
	@Transactional(rollbackFor=Exception.class)
	public List<Address> findAdddress(int userId) {
		try {
			List<Address> addressList=this.addressMapper.addressList(userId);
			return addressList;
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	//添加地址
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void saveAddress(Address address, int userId) {
		try {
			this.addressMapper.insertAddress(address);
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	//修改地址时 通过id查修改的地址
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	public Address upfindById(Integer addressId) {
		return this.addressMapper.findById(addressId);
	}
	//修改地址
	@Transactional(propagation=Propagation.REQUIRED,rollbackFor={Exception.class})
	public void updateAddress(Address address){
		try {
			this.addressMapper.updateAddress(address);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	//删除地址
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void deleteAddress(int addressId) {
		try {
			this.addressMapper.deleteAddressByUser(addressId);
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
}
