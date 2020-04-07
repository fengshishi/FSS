<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="/css/index/all.css" />
<link rel="stylesheet" type="text/css" href="/css/index/1.css" />
<link rel="stylesheet" type="text/css" href="/css/index/2.css" />
<link rel="stylesheet" type="text/css" href="/css/index/3.css" />
<link rel="stylesheet" type="text/css" href="/css/index/4.css" />
<script type="text/javascript" src="/js/index/less.min.js"></script>
<script type="text/javascript" src="/js/index/first.js"></script>
<script type="text/javascript" src="/js/index/bootstrap.min.js"></script>
<!-- FlexSlider -->
<link rel="stylesheet" type="text/css" href="/css/index/5.css" />
<script type="text/javascript" src="/js/index/2.js"></script>
<script type="text/javascript" src="/webjars/jquery/3.0.0/jquery.js"></script>
<script type="text/javascript" src="/webjars/jquery/3.0.0/jquery.min.js"></script>
<script type="text/javascript"
	src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" />

</head>
<body>
	<!-- 头部 -->
	<div class="header bc-f">
		<!-- 顶部 小标题  登录信息-->
		<div class="bc-f5 ht-30 lh-30">
			<div class="wd-1200 ma fs-12 cl-6">
				<p class="fl">
					欢迎，<label name="userName"></label> <span
						class="pd-0005 cl-c">|</span> <a class="mr-30 hover cl-6" href="#"
						title="退出登录">退出登录</a> <a class="hover cl-6" href="#"
						target="_blank" title="下载拾贝APP"><span
						class="icon-phone-line cl-bl-l fs-16 tp-3 mr-2 pr"><img
							src="/images/myimg/k5.PNG"></span>下载拾贝APP</a>
				</p>
				<p class="fr">
					<a class="hover fr cl-6" href="javascript:void()"
						onclick="openQimooChat();" title="联系客服">联系客服</a> <span
						class="pd-0015 cl-c fr">|</span> <a class="hover fr cl-6" href="#"
						target="_blank" title="店铺管理">店铺管理</a> <span
						class="pd-0015 cl-c fr">|</span> <a class="hover fr cl-6" href="#"
						target="_blank" title="收藏夹">收藏夹</a> <span class="pd-0015 cl-c fr">|</span>
				<div class="fr mouseenter-box mouseenter mouseleave pr">
					<label class="cp">我的拾贝<span
						class="icon-down-line ml-5 fs-11"><img
							src="/images/myimg/y4.PNG"></span></label>
					<div class="acount">
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的拾贝</a>
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的订单</a>
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的优惠券</a>
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的收藏</a>
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的收入</a>
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">官方消息</a>
						<a class="hover cl-6 to-hd" href="javascript:void(0);" title=""></a>
					</div>
				</div>
				<div class="cb"></div>
				</p>
				<div class="cb"></div>
			</div>
		</div>
		<!-- logo+搜索+购物车 -->
		<div class="wd-1200 ma">
			<div class="search-container" id="search-container">
				<div class="logo-container">
					<a class="db logo-box fl" href="#"> <img
						src="/images/myimg/logon.jpg" alt="" height="100" width="180"
						class="db" alt="logo" draggable="false" />
					</a>
					<!-- 搜索 -->
					<div class="fl">

						<img src="/images/myimg/tt1.PNG"
							style="text-align: center; margin-top: 0; height: 90px; width: 600px;">
						<div class="cb"></div>
					</div>

					<div class="cb"></div>
				</div>
				<div class="fr ta-rt mt-8 cart">
					<a target="_blank" class="fs-16 bd-1-d br-4 pd-0610 cart-box"
						href="#"> <span
						class="icon-cart-block mr-10 cl-a9 pr tp-3 fs-18"><img
							src="/images/myimg/cart.PNG"></span><span class="mr-5">购物车</span>
						<label class="cl-f fw-nm br-10 cart_num"></label>
					</a>
				</div>
				<div class="cb"></div>
			</div>
		</div>

		<div class="nav fl" style="margin-left: 350px">
			<!--固定导航菜单-->
			<a target="_blank" class="db pd-0015 fl " href="#"><span>首页</span></a>
			<a target="_blank" class="db pd-0015 fl " href="#"><span>新品</span></a>
			<a target="_blank" class="db pd-0015 fl " href="#"><span>限时购</span></a>
			<a target="_blank" class="db pd-0015 fl " href="#"><span>排行榜</span></a>
			<!--自定义导航菜单-->
			<span class="db pd-0015 fl">|</span> <a target="_blank"
				class="db pd-0015 fl " href="#"> <span>图书馆</span>
			</a> <a target="_blank" class="db pd-0015 fl " href="#"> <span>文创馆</span>
			</a> <a target="_blank" class="db pd-0015 fl " href="#"> <span>生活美学馆</span>
			</a>
		</div>
		<div class="cb"></div>
	</div>
	<h3 style="padding-left: 450px; padding-top: 50px;">确认信息：</h3>
	<div class="container" style="padding-top: 30px;">
		<div id="row ">
			<div class="col-md-9 col-md-offset-1">

				<table class="table table-bordered table-striped table-hover">
					<tr class="table-info">
						<th>收件人姓名</th>
						<th>收件人电话</th>
						<th>收件地址</th>
					</tr>
					<c:forEach items="${requestScope.addressList }" var="address"
						varStatus="statu">
						<tr>

							<td>${address.addressName }</td>
							<td>${address.addressPhone }</td>
							<td>${address.addressProvice }
							${address.addressCity }
							${address.addressXianqu }&nbsp;
							${address.addressDetail }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div id="row">
			<div class=" col-md-9 ">
				<table class="table table-bordered table-striped table-hover">
					<tr class="table-info">
						<th>订单号</th>
						<th>订单总价</th>
						<th>订单状态</th>

					</tr>
					<c:forEach items="${requestScope.ordersList }" var="order">
						<tr>
							<td>${order.orderId }</td>
							<td>${order.orderPrice }</td>
							<td>${order.orderStatus.statusName }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<div style="padding-left: 700px; padding-top: 70px;">
		<a href="${pageContext.request.contextPath }/web/index1">
			<button class="btn btn-outline-info">确认</button>
		</a>
	</div>

</body>
</html>