package com.no1.cz.alipay;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101100660789";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
	public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCn4V73yu527a6MyfpyzRbz0TLT4ymnuY1NnbpTXtdG9QHHDpzpmiu6f0z/hb3A/v6KwMaa9p5Zcozws6ZudAtzal80UjnmyTKghcoqX76nUI3MGO7S7za1OvgMqjZKSKsFcGh7YEb0fbeOvETrtol82h1UPy9T0avx8P3gpT5rdJ2MBCSEosJzhC592UsrUVwhTDGw0ZppSJ5bUF+4S+nVQoyj9WbWSZGqMPw0z3KW5ax29HgD4FQYGkMO6buJ0KeSbmYohaBzPSKPG9K+nOUfJKbqiAW6oijwD3O1ZBjhLfJ1Kaa2XUe6ldr4cOodIu4j3I/Vat4d9WX9kr4fJP9PAgMBAAECggEAHq7YNp3GW8IxJtY7igPl8AYKLiPUly0YoFj1lws8eWGKQ6FuGFvvJhTiM8lz1vRD/YQiSGxOoLaI/+01u/ZFqYCFigCFSKL5N9F8E6aQJ/BXGjhsXe0OqKzwbRAnAAisCUB0OChuj3zysYnDZvljw4fx2FX8BmvJ61xKamaJNAY9g/j8t8KVNoQOAcl5PkXz/mJ0U8E6YiG8S0Zj0W5w6agWp+eXMXD1PruoNWdkbKSsCVgEESEURklGCA1PFNhJC28NG9LbT3KZgbFce/uzTCQB8KQDLi8bqeIHslkhWWNM/2uC9rWBYbdMfgdjK8eyRGKBe1sVj/QjHrxfWKmfgQKBgQDz9Uc+XkZnQa4nDB35z8PoPD5uGIBPchIPjRWxj35oFg5nI35iUlutu21hH7C1LOlu4J+2RC9y50hVaznFTy1Hf8gWARw+MK/osqto0NuSsDKqOCg+ytbl/sIwStuVIooIAI51DUecDer7S8LuZzM7rlZu2wHsvJ3me+HVPKzgoQKBgQCwKsDRGnMpSakiuA7yo9oA3FL+664L7jD968tOXyBL7cY+CaDiYfyJiJWMnKxQq31xvF9/mQZh6NjYn44gVGJcyZiqdJwkBEYp01DdOeFPh7WhH4DSpQbZ8In4Y/nAsCLGXQAFdRi/Dfu+LUJeTGxMQQQ6waHnA4XaffurRFWp7wKBgQCVSPsXx0j91stjSZ7uR51yd6scZBHgi8VRjtw/k7eeqiCWLLoiIJPJdHAyhtnzhFA0cXBKcN84SR+SZdMsUo86uY8PKA7IX7LFitApi+VRllDqqQK3qhhnFcZvFt/YGxKsYurJ5h5z+HBa5rmaebx4QO7TV2GOJL3bVOOVQVPpAQKBgEjJgV1kNkzK2I01y0dJl9tfLROSwRjA05E2iYvaFfgJSC19wPGIVtVkj5XHbhLuqCgEEtkfmtl9YYsvcYO+Gd4IlYFoKNNgyLSjUPf24DcB9XObFpjyAoCtt/PfKuQIYnXfGxEmLpFR77/F53Qa02w2OM8mDgTrGbUK9J7w3wwVAoGAPA/AHJByz3aLsTM11aMmO0yf3lm9yukATHe+VDEXU+jo8bFyS6FfLl5R5dkzSrybzgHRO0CLxeoyCeyFN8nOUbrRX3O769TlqHOmbLeNmSwwYGj2Mkw5aCR3f62NYnes3f2D3IEqkHHVzcBGNMwTh7qDidEWg4i7Ykli2fIJH9k=";
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
	public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk2GCnGTD9n1rZ8SjSbpIvNOjAQsDHVg21StR1wjpshQ7q/GTy0bJ40APWqiFG7XA2k5s5Seaf8HsIX8KU5eSaBGaPQ3cWXceviDqINxO7bO2o/J4N6pqn/CGqV5g/6IyjxzF1CvoWEmKPF1sJbv1W7tUy57SrPucOuw0tlA/0mApiMldlX1pgYT4Agjgn9RlBeKq/rXbqb0C+r8Fo4d7itPCjGy/97QDfjsq4AvJaQTfCFhitsMvRzNycIeW3lumoh5UsgpeBV2Tib/wEUTlRmZ2TvSiLlxigbu3qluGxMvnA28109J4xQLkvmL8XFQ/6EXfs5MqP4QVL2yAU6tTCwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	//http://oh.free.idcfengye.com/notify/tongzhi
	public static String notify_url = "http://localhost:8080/return/fanhui";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/return/fanhui";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";	
	                                   
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

