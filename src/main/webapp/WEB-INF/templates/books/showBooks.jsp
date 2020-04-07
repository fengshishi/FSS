<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <title>BooksDetails Page</title>
    <script type="text/javascript" src="/webjars/jquery/3.0.0/jquery.js"></script>
    <script type="text/javascript" src="/js/tupian.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/tupian.css" />
    <link rel="stylesheet" type="text/css" href="/css/tupian1.css" />
  
</head>

<body>
 <div class="book-essential-info">
    <h1 class="book-title">
        流浪地球
    </h1>
    <div class="book-adcontent"></div>
    <div class="book-intro">
        <!--{书籍封面 Start}-->
        <div class="book-cover">
		    <%--  <a title="点击查看大图" class="cover-show bk-img-box" id="J_sx" href="${requestScope.books.booksImages }">
	                <img style="height: 100%;" alt="商品图片" src="${requestScope.books.booksImages }" data-imagezoom="http://img.wl.cn/b/5061/9385061/9385061.jpg" data-magnification="5">
	            </a> --%>
	              <div id="magnifier">
            
            <!-- -->
            <div class="small_img">
                <img src="/images/myimg/t2.PNG " />
            </div>
            
            <div class="big_img">
                <img src="/images/myimg/t2.PNG " style=" width:650px; height:650px;" />
            </div>
            
            <span class="float"></span>
        </div>
        
	</div>        
</div>
	  
</div>
        <div class="evaluate">
                <span>顾客评分：</span>   
                <span>已有0人评论</span>
            </div>
            <!-- Baidu Button BEGIN -->
				<div class="bdshare_t bds_tools get-codes-bdshare" id="bdshare" style="margin-left: 25px;">
                    <span class="bds_more">分享到：</span>
                    <a class="bds_qzone" href="javascript:;"></a>
                    <a class="bds_tsina" href="javascript:;"></a>
                    <a class="bds_tqq" href="javascript:;"></a>
                    <a class="bds_renren" href="javascript:;"></a>
                    <a class="bds_t163" href="javascript:;"></a>
                    <a class="shareCount" href="javascript:;"></a>
				</div>
			
			<!-- Baidu Button END -->
           <!--  <div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare share clearfix">
                <span class="bds_more">分享到：</span>
                <a class="bds_douban douban" title="分享到豆瓣网" href="#"></a>
                <a class="bds_qzone" title="分享到QQ空间" href="#"></a>
                <a class="bds_tsina weibo" title="分享到新浪微博" href="#"></a>
                <a class="bds_tqq tencent" title="分享到腾讯微博" href="#"></a>
                <a class="bds_renren renren" title="分享到人人网" href="#"></a>
                <a class="bds_kaixin001 netease" title="分享到开心网" href="#"></a>
                <a class="bds_tsohu sohu" title="分享到搜狐微博" href="#"></a>
            </div> -->
        <!--     <div class="share clearfix">
                <span>分享到：</span>
                <a href="javascript:;" class="weibo">微博关注</a>
                <a href="javascript:;" class="tencent">腾讯关注</a>
                <a href="javascript:;" class="douban">豆瓣关注</a>
                <a href="javascript:;" class="sohu">搜狐关注</a>
                <a href="javascript:;" class="netease">搜狐关注</a>
                <a href="javascript:;" class="renren">人人关注</a>
            </div> -->
        </div>
        <!--{书籍封面 End}-->
        <!--{书籍销售信息 Start}-->
       <div class="book-sale-info">
            
            <div class="book-price">
                <p>
                    价格：<span class="yuan">
     					21.40
                   </span>
                    <!--{tip：正常的显示内容为}-->
                    <!-- <span class="yuan">24</span><span class="cent">.98</span> -->
                </p>
                <p>
                    定&nbsp;&nbsp;价：<span class="old-price">21.40</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    折扣：
                            
                             
                                 0.25
                              
                            </p>  
   <p>
                        vip(2-3星)：
                        <span class="common-emprice">42.0</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        svip(4-5星):<span class="common-emprice">42.0</span>
                    </p>
                

            </div>
            <div class="book-other-info">
                
                <p>
                    <span>作&nbsp;&nbsp;&nbsp;&nbsp;者：</span>
                    
                        
                        
                            
                            <a class="blue" href="javascript:window.location.href=encodeURI('https://www.wl.cn/search?author=[日]岸见一郎/著 渠海霞/译')">${requestScope.books.booksWriter }</a>
                        
                        著
                    
                </p>
                
                <p>
                    <span>出&nbsp;版&nbsp;社：</span>
                    <a href="javascript:window.location.href=encodeURI('https://www.wl.cn/search?publisher=')">${requestScope.books.booksConcern } </a>
                </p>
                <p>
                    <span>出版时间：</span>
                    
                </p>
                <p>
                    <span>I&nbsp;S&nbsp;B&nbsp;N&nbsp;：</span>
                    9787541498411
                </p>
           
            <form class="buy-panel" action="https://www.wl.cn/order/cart/9066420" method="post">
                <p>
                    我要买<input name="count" class="good-num" id="J_buyNumField" onkeyup="count.value=(this.value=this.value.replace(/\D/g,'').substring(0,6)).substring(0,3)" type="text" value="1">件
                    
                </p>
                <p class="buy-wrapper clearfix">
                    <a href="${pageContext.request.contextPath }/cart/insert?booksId=${books.booksId}">加入购物车</a>
                   <a href="${pageContext.request.contextPath }/collection/insert?booksId=${books.booksId}">我要收藏</a>
                </p>
            </form>
        </div>
</div>
     
     
</body>
</html>