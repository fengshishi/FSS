package com.no1.cz.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.no1.cz.domain.Address;
import com.no1.cz.domain.User;
import com.no1.cz.service.AddressService;

@Controller
@RequestMapping("/address")
public class AddressController {
	@Resource
	private AddressService addressService; 

	//显示添加地址页面
	@RequestMapping("toaddress")
	public String Address() {
		return "address/Address";
	}
	
	//添加地址
	@RequestMapping("insert")
	public String insertAddress(Model model,Address address, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(user);
		int userId = user.getUserId();
		address.setUserId(user);
		this.addressService.saveAddress(address, userId);
		model.addAttribute("address", address);
		System.out.println(address);
		return "redirect:/address/toshowaddress";
	}


	//用userId查询地址
	@RequestMapping("toshowaddress") 
	public String toshowaddress(Model model, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(user);
		int userId = user.getUserId();
		List<Address> addressList = this.addressService.findAdddress(userId);
		model.addAttribute("addressList", addressList);//显示地址
		return "address/showAddress";
	}

	//删除地址
	@RequestMapping("delete")
	public String deleteAddress(@Param("addressId") int addressId) {	
		this.addressService.deleteAddress(addressId);
		return "redirect:/address/toshowaddress";
	}

	//显示修改地址页面
	@RequestMapping("upfindById")
	public String findById(@RequestParam("addressId") Integer addressId, Model model) {
		Address findById = this.addressService.upfindById(addressId);
		model.addAttribute("address",findById);
		return "address/updateAddress";
	}

	//修改地址
	@RequestMapping("updateAddress")
	public String updateAddress(Address address){
		this.addressService.updateAddress(address);
		return "redirect:/address/toshowaddress";
	}

}
