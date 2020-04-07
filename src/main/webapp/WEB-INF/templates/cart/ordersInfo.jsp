<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderInfo title here</title>
<!--  <script type="text/javascript" src="/webjars/jquery/3.0.0/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" />
    <script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" type="text/css" href="/css/cart/all.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/1.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/2.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/3.css" />
<!-- 字体图标 -->
<link rel="stylesheet" type="text/css" href="/css/cart/4.css" />
<script type="text/javascript" src="/js/less.min.js"></script>
<script type="text/javascript" src="/js/first.js"></script>
<!-- FlexSlider -->
<link rel="stylesheet" type="text/css" href="/css/cart/5.css" />
<script type="text/javascript" src="/js/2.js"></script>
<meta name="baidu-site-verification" content="s3QQaARPSL" />
<title id="www_pc_title">书店</title>
<style>
table {
	margin-right: auto;
	margin-left: auto;
}
</style>
</head>
<body>
	<!-- 头部 -->
<div class="bc-f5 ht-30 lh-30">
		<div class="wd-1200 ma fs-12 cl-6">
			<p class="fl">
				${ sessionScope.user1.userName}
				用户，您好，欢迎您的登录！
				<a class="mr-30 hover cl-6"
					href="${pageContext.request.contextPath}/user/outUser"
					target="_blank" title="">安全退出</a>
					 <a class="hover cl-6" href=""	target="_blank" title="下载拾贝APP"><span					class=" cl-bl-l fs-16 tp-3 mr-2 pr"></span><img
   					src="/images/myimg/k5.PNG" />下载拾贝APP</a>
			</p>

			
			<p class="fr">
				<a class="hover fr cl-6" href="javascript:void()"
					onclick="openQimooChat();" title="联系客服">联系客服</a> <span
					class="pd-0015 cl-c fr">|</span> <a class="hover fr cl-6" href="#"
					target="_blank" title="店铺管理">店铺管理</a> <span class="pd-0015 cl-c fr">|</span>
				<a class="hover fr cl-6"
					href="${pageContext.request.contextPath}/collection/items"
					target="_blank" title="收藏夹">收藏夹</a> <span class="pd-0015 cl-c fr">|</span>
			<div class="fr mouseenter-box mouseenter mouseleave pr">
				<label class="cp">我的拾贝<span class=" ml-5 fs-11"><img
						src="/images/myimg/y4.PNG" /></span></label>
				<div class="acount">
					<a class="hover cl-6 to-hd" href="${pageContext.request.contextPath}/web/myindex"
						target="_blank" title="我的拾贝">我的拾贝</a> <a class="hover cl-6 to-hd"
						href="${pageContext.request.contextPath}/order/insert" target="_blank" title="">我的订单</a> <a
						class="hover cl-6 to-hd" href="#" target="_blank" title="">我的优惠券</a>
					<a class="hover cl-6 to-hd"
						href="${pageContext.request.contextPath}/collection/items"
						target="_blank" title="">我的收藏</a> <a class="hover cl-6 to-hd"
						href="#" target="_blank" title="">我的收入</a> <a
						class="hover cl-6 to-hd" href="#" target="_blank" title="">官方消息</a>
					<a class="hover cl-6 to-hd" href="javascript:void(0);" title=""></a>
				</div>
			</div>
			<div class="cb"></div>
			</p>
			<div class="cb"></div>
			<input type="hidden" id="header_user_session_userid" value="" /> <input
				type="hidden" id="header_user_session_name" value="" /> <input
				type="hidden" id="header_user_session_mobilephone" value="" /> <input
				type="hidden" id="header_user_session_header" value="" />
		</div>
	</div>
	<!-- logo+搜索+购物车 -->
	<div class="wd-1200 ma">
		<div class="search-container" id="search-container">
			<div class="logo-container">
				<a class="db logo-box fl"> <img
					src="/images/myimg/logon.jpg" alt="" width="220" class="db"
					alt="logo" draggable="false" />
				</a>
				<!-- 搜索 -->
				<div class="fl">
					<div class="search-box">
						<div class="fl wd-480 pr zi-1 associate-container">
							
								<input type="text" id="gudingsearch" placeholder="余华" value=""
									class="bd-n searchkey" >
									
						</div>
						<p class="fr cl-f fs-27 tosearch">
						<img src="/images/myimg/y3.PNG"/>
							</p>
						
						<div class="cb"></div>
					</div>
					<p class="fs-12 lh-25  tip">
						<a target="_blank" class="cl-rd-l" href="#">围城</a> <span
							class="cl-9 pd-0005">|</span> <a target="_blank" class="cl-9"
							href="#">夏摩山谷</a> <span class="cl-9 pd-0005">|</span> <a
							target="_blank" class="cl-9" href="#">崔永元 有话说</a> <span
							class="cl-9 pd-0005">|</span> <a target="_blank" class="cl-9"
							href="#">林清玄</a> <span class="cl-9 pd-0005">|</span> <a
							target="_blank" class="cl-9" href="#">邓小平大决策</a>
					</p>
					<div class="cb"></div>
				</div>
				<div class="fr ta-rt mt-8 cart">
					<a target="_blank" class="fs-16 bd-1-d br-4 pd-0610 cart-box"
						href="${pageContext.request.contextPath}/cart/items"> <span
						class="mr-10 cl-a9 pr tp-3 fs-18"><img
							src="/images/myimg/cart.PNG" /> </span> <span class="mr-5">购物车</span> <label
						class="cl-f fw-nm br-10 cart_num"></label>
					</a>
				</div>
				<div class="cb"></div>
			</div>
		</div>
		<!-- 分类 -->
		<div class="nav-box">
			<div class="type fl public">
				<a target="_blank" class="db cl-f title" href="#"><span
					class=" cl-f mr-10 pr tp-2"><img src="/images/myimg/y1.PNG" /></span>所有商品分类</a>

			</div>
			<div class="nav fl">
				<!--固定导航菜单-->
				<a target="_blank" class="db pd-0015 fl on-mouse" href="${pageContext.request.contextPath}/web/index1"><span>首页</span></a>
				<a target="_blank" class="db pd-0015 fl " href="#"><span>新品</span></a>
				<a target="_blank" class="db pd-0015 fl " href="${pageContext.request.contextPath}/books/findAll"><span>图书</span></a>
				<a target="_blank" class="db pd-0015 fl " href="#"><span>排行榜</span></a>
				<span class="db pd-0015 fl">|</span> <a target="_blank"
					class="db pd-0015 fl " href="${pageContext.request.contextPath}/book/showList"> <span>图书馆</span>
				</a> <a target="_blank" class="db pd-0015 fl " href="#"> <span>文创馆</span>
				</a> <a target="_blank" class="db pd-0015 fl " href="#"> <span>生活美学馆</span>
					</a>
				</div>
				<div class="cb"></div>
			</div>
		</div>

<div id="index-nav">
    <div class="wd-1200 ma">
        <a class="db logo-box fl" href="https://www.bookuu.com/index.php">
            <img data-src="https://bnmpstyle.bookuu.com/www/images/icon/logo.png" alt="" width="210" class="db visible" src="https://bnmpstyle.bookuu.com/www/images/icon/logo.png">
        </a>
        <!-- 搜索 -->
        <div class="fl search-box">
            <input type="text" placeholder="手机打开了分的积分" class="fl bd-n">
            <p class="fr icon-search-line cl-f fs-40" onclick="window.location.reload();"></p>
            <div class="cb"></div>
        </div>
        <div class="fr ta-rt">
            <a class="fs-16 bd-1-d br-4 pd-0030 db" href="${pageContext.request.contextPath}/cart/items"><span class="icon-cart-block mr-10 cl-a9 pr tp-3 fs-18"></span>我的购物车</a>
        </div>
        <div class="cb"></div>
    </div>
</div>
<div class="content">
    <div class="personal-center mt-20">
        <div class="personal-list-box bd-1-e8 fl">
    <div class="personal-title">个人中心</div>
    <ul class="personal-list-name bt-1-e8 pb-16">
        <li class="item"><a href="">店铺设置</a></li>
        <li class="item"><a href="">团队管理</a></li>
        <!-- <li class="item"><a href="javascript:;">邀请开店</a></li> -->
        <li class="item"><a href="">收入管理</a></li>
    </ul>
    <ul class="personal-list-name bt-1-e8 pb-16">
        <li class="item active"><a href="${pageContext.request.contextPath}/web/myindex">我的信息</a></li>
        <li class="item"><a href="${pageContext.request.contextPath}/order/ordersInfo">我的订单</a></li>
        <li class="item"><a href="">我的优惠券</a></li>
        <li class="item"><a href="">我的等级</a></li>
        <li class="item"><a href="">我的积分</a></li>
        <li class="item"><a href="${pageContext.request.contextPath}/collection/items">我的收藏</a></li>
        <li class="item"><a href="">IC卡充值</a></li>
    </ul>
    <ul class="personal-list-name bt-1-e8 pb-16">
        <li class="item"><a href="${pageContext.request.contextPath}/address/toshowaddress">我的收货地址</a></li>
        <li class="item"><a href="${pageContext.request.contextPath}/answers/answersList">我的问答</a></li>
        <li class="item active"><a href="">个人设置</a></li>
        <li class="item active"><a href="">官方消息</a></li>
						</ul>
					</div>

					<script type="text/javascript">
    var uri ='/user/collection.php';
    if(!uri){
        uri = '/cashier/deposit.php';
    }
    $('.active').removeClass('active');
    $('.personal-list-box a').each(function(){
        var $this = $(this);
        var href = $this.attr('href');
        if(href.trim() == uri.trim()){
            $this.parent('li').addClass('active');
        }
    });

</script>
					<div class="personal-list-item ml-10 bd-1-e8 fl">
						<ul>
							<!-- <li class="list-item active">
								<div class="mycolle-info mb-20">
									<h3 class="list-item-title bb-1-e8 mb-20">书本的信息</h3>
									<div class="goodlist">
										<div class="mycolle-empty ta-ct"></div>

										<div class="section">
											<div class="wd-1200 ma">
												<p class="ht-50 lh-50">
													<span class="fl fs-18">我的购物车</span>
												<div class="personal-list-item ml-10 bd-1-e8 fl"> -->
													<ul>
														<li class="list-item active">
															<div class="mycolle-info mb-20"
																style="background: #FFF8DC"; color:#000000">
																<h3 class="list-item-title bb-1-e8 mb-20">结算</h3>
																<div class="goodlist">
																	<div class="mycolle-empty ta-ct">
																		<h1></h1>
																		<!-- <h2>收件人信息</h2>
																		<table border="1px" cellspacing="1px"
																			cellpadding="1px" style="font-size: 18px" width="900">
																			<tr>
																				<th width="10%">收件人姓名</th>
																				<th width="10%">收件人电话</th>
																				<th width="10%">收件地址（省）</th>
																				<th width="10%">收件地址（市）</th>
																				<th width="10%">收件地址（区）</th>
																				<th width="20%">收件地址（街牌号）</th>
																			</tr> -->
																			<c:forEach items="${requestScope.addressDefault }"
																				var="address" varStatus="statu">
																				<tr>
																					<td>${address.addressName }</td>
																					<td>${address.addressPhone }</td>
																					<td>${address.addressProvice }</td>
																					<td>${address.addressCity }</td>
																					<td>${address.addressXianqu }</td>
																					<td>${address.addressDetail }</td>
																				</tr>
																			</c:forEach>
																			<a
																				href="${pageContext.request.contextPath }/address/toaddress"
																				javascript:void(0)>管理地址</a>
																		</table>
																		<br>
																		<br>
																		<%-- <h2>购物车信息</h2>
																		<div>
																			<table border="1px" cellspacing="1px"
																				cellpadding="1px" style="font-size: 18px"
																				width="900">
																				<tr>
																					<th>书本名称</th>
																					<th>书本价格</th>
																				</tr>
																				<c:forEach items="${requestScope.cartList }"
																					var="shopcart" varStatus="statu">
																					<tr>
																						<td>${shopcart.booksId.booksName }</td>

																						<td>${shopcart.booksId.booksPrice }</td>
																					</tr>
																				</c:forEach>

																			</table>
																		</div>
																		<br>
																		<br>
												 --%>						<h2>确认订单信息</h2>
																		<table border="1px" cellspacing="1px"
																			cellpadding="1px" style="font-size: 18px" width="800">

																			<tr>
																				<th>订单号</th>
																				<th>订单总价</th>
																				<th>订单状态</th>
																				<th>支付</th>
																			</tr>
																			<c:forEach items="${requestScope.ordersList }"
																				var="order">
																				<tr>
																					<td>${order.orderId }</td>
																					<td>${order.orderPrice }</td>
																					<td>${order.orderStatus.statusName }</td>
																					<td><a
																						href="${pageContext.request.contextPath }/page/pay?orderId=${order.orderId}&&orderPrice=${order.orderPrice}">支付</a></td>
																				</tr>
																			</c:forEach>

																		</table>




																		<%-- <h1>orderInfo.jsp</h1>
 <h2>收件人信息</h2>
 <table>
   
   <tr>
   	
 	<th>收件人姓名</th>
 	<th>收件人电话</th>
 	<th>收件地址（省）</th>
 	<th>收件地址（市）</th>
 	<th>收件地址（区）</th>
 	<th>收件地址（街牌号）</th>
 	
   </tr>
 	<c:forEach items="${requestScope.addressDefault }" var="address" varStatus="statu">
      		<tr>
      	 	
      		  <td>${address.addressName }</td>
      	 	 <td>${address.addressPhone }</td>
      	 	  <td>${address.addressProvice }</td>
      	 	   <td>${address.addressCity }</td>
      	 	    <td>${address.addressXianqu }</td>
      	 	     <td>${address.addressDetail }</td>
    		 </tr>
   		 </c:forEach>
 <a href="${pageContext.request.contextPath }/admin/address">管理地址</a> 
 </table> --%>

											<%-- 							<h2>购物车信息</h2>
																		<table>

																			<tr>

																				<th>书本名称</th>
																				<th>书本价格</th>
																			</tr>
																			<c:forEach items="${requestScope.cartList }"
																				var="shopcart" varStatus="statu">
																				<tr>

																					<td>${shopcart.booksId.booksName }</td>
																					<td>${shopcart.booksId.booksPrice }</td>
																				</tr>
																			</c:forEach>

																		</table>

																		<h2>确认订单信息</h2>
																		<table>

																			<tr>
																				<th>订单号</th>
																				<th>订单总价</th>
																				<th>订单状态</th>
																				<th>支付</th>
																			</tr>
																			<c:forEach items="${requestScope.ordersList }"
																				var="order">
																				<tr>
																					<td>${order.orderId }</td>
																					<td>${order.orderPrice }</td>
																					<td>${order.orderStatus.statusName }</td>
																					<td><a
																						href="${pageContext.request.contextPath }/page/pay?orderId=${order.orderId}&&orderPrice=${order.orderPrice}">支付</a></td>
																				</tr>
																			</c:forEach>
																		</table> --%>
</body>
</html>