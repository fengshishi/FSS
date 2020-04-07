package com.no1.cz.pay;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.no1.cz.alipay.AlipayConfig;

@Controller
@RequestMapping("/page")
public class PagePayController {

	@RequestMapping("pay")
	@ResponseBody
	public String PagePay(HttpServletRequest request) throws AlipayApiException, UnsupportedEncodingException {
		
		//获得初始化的AlipayClient
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
		
		//设置请求参数
		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setReturnUrl(AlipayConfig.return_url);
		alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
		
		//商户订单号，商户网站订单系统中唯一订单号，必填
		String out_trade_no = new String(request.getParameter("orderId").getBytes("ISO-8859-1"),"UTF-8");
		//付款金额，必填
		String total_amount = new String(request.getParameter("orderPrice").getBytes("ISO-8859-1"),"UTF-8");
		//订单名称，必填
		String subject = new String(request.getParameter("orderId").getBytes("ISO-8859-1"),"UTF-8");
		//商品描述，可空
//		String body = new String(request.getParameter("WIDbody").getBytes("ISO-8859-1"),"UTF-8")  + "\"body\":\""+ body +"\"," ;
		System.out.println("out_trade_no是："+out_trade_no+"total_amount是："+total_amount+"subject是："+subject);
		
		alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
				+ "\"total_amount\":\""+ total_amount +"\"," 
				+ "\"subject\":\""+ subject +"\"," 
				+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
		
		System.out.println("22222222out_trade_no是："+out_trade_no+"total_amount是："+total_amount+"subject是："+subject);
		//若想给BizContent增加其他可选请求参数，以增加自定义超时时间参数timeout_express来举例说明
		//alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
		//		+ "\"total_amount\":\""+ total_amount +"\"," 
		//		+ "\"subject\":\""+ subject +"\"," 
		//		+ "\"body\":\""+ body +"\"," 
		//		+ "\"timeout_express\":\"10m\"," 
		//		+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
		//请求参数可查阅【电脑网站支付的API文档-alipay.trade.page.pay-请求参数】章节
		
		//请求
		String result = alipayClient.pageExecute(alipayRequest).getBody();
		System.out.println(result);
		//输出
		/* out.println(result); */
		
		return result;
		
	}
	
	@RequestMapping("toNotify")
	public String toNotify() {
		System.out.println("进入toNotify！！！！！！");
		return "/freebooks/notify_url";
		
	}
	
	@RequestMapping("toReturn")
	public String toReturn() {
		System.out.println("进入toReturn！！！！！！");
		return "/freebooks/return_url";
		
	}
	
	
}
