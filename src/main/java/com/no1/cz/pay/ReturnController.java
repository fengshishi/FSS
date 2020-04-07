package com.no1.cz.pay;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipaySignature;
import com.no1.cz.alipay.AlipayConfig;
import com.no1.cz.domain.Address;
import com.no1.cz.domain.Orders;
import com.no1.cz.domain.User;
import com.no1.cz.service.AddressService;
import com.no1.cz.service.OrderService;
//import com.gxks.zy.service.freebooks.OrderService;

@Controller
@RequestMapping("/return")
public class ReturnController {
	
	 
	 @Resource	
	 private  OrderService orderService;
	 @Resource	
	 private  AddressService addressService;
	
	  @RequestMapping("fanhui")
	  //@ResponseBody
      public String  returnUrl(HttpServletRequest request,Model model) throws UnsupportedEncodingException, AlipayApiException {

    		//获取支付宝GET过来反馈信息,@RequestParam("out_trade_no") String orderId
    		Map<String,String> params = new HashMap<String,String>();
    		Map<String,String[]> requestParams = request.getParameterMap();
    		for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
    			String name = (String) iter.next();
    			String[] values = (String[]) requestParams.get(name);
    			String valueStr = "";
    			for (int i = 0; i < values.length; i++) {
    				valueStr = (i == values.length - 1) ? valueStr + values[i]
    						: valueStr + values[i] + ",";
    			}
    			//乱码解决，这段代码在出现乱码时使用
    			valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
    			params.put(name, valueStr);
    		}
    		
    		boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名
            System.out.println("返回中的signVerified的值："+signVerified);
    		//——请在这里编写您的程序（以下代码仅作参考）——
    		if(signVerified) {
    			//商户订单号out_trade_no
    			String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");
    		
    			//支付宝交易号
//    			String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");
    		
    			//付款金额
    			String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8");
    			//out.println("trade_no:"+trade_no+"<br/>out_trade_no:"+out_trade_no+"<br/>total_amount:"+total_amount);
    			System.out.println("支付成功后的out_trade_no:"+out_trade_no);
    			System.out.println("支付成功后的total_amount:"+total_amount);
    			this.orderService.updateStatus(out_trade_no);
    			User user = (User) request.getSession().getAttribute("user");
    			System.out.println(user);
    			int userId = user.getUserId();
    			List<Address> addressList = this.addressService.findAdddress(userId);
    		    model.addAttribute("addressList", addressList);//显示地址
    		    List<Orders> ordersList = this.orderService.findOrders(out_trade_no);
    		    model.addAttribute("ordersList", ordersList);//显示地址
    			
    		}else {
    			//out.println("验签失败");
    		}
    		//——请在这里编写您的程序（以上代码仅作参考）——
			return "books/booksInfo";
      }
}
