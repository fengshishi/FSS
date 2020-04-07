<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="/css/index/all.css" />
<link rel="stylesheet" type="text/css" href="/css/index/1.css" />
<link rel="stylesheet" type="text/css" href="/css/index/2.css" />
<link rel="stylesheet" type="text/css" href="/css/index/3.css" />
<link rel="stylesheet" type="text/css" href="/css/address/module.css" />
<link rel="stylesheet" type="text/css" href="/css/address/address.css" />
<!-- 字体图标 -->
<link rel="stylesheet" type="text/css" href="/css/index/4.css" />

<script type="text/javascript" src="/js/index/less.min.js"></script>
<script type="text/javascript" src="/js/index/first.js"></script>

<!-- FlexSlider -->
<link rel="stylesheet" type="text/css" href="/css/index/5.css" />
<script type="text/javascript" src="/js/index/2.js"></script>
<title id="www_pc_title"></title>
</head>
<body>
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
						href="${pageContext.request.contextPath}/order/ordersInfo" target="_blank" title="">我的订单</a> <a
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
							<form action="${pageContext.request.contextPath}/books/select">
								<input type="text" id="gudingsearch" placeholder="余华" value=""
									class="bd-n searchkey" name="search">
						</div>
						<p class="fr cl-f fs-27 tosearch">
							<input type="submit" value=""
								style="background-color: #2FAEEA; width: 30px; height: 30px; border-color: #2FAEEA; background-image: url(/images/myimg/y3.PNG);">
						</p>
						</form>
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
						<li class="list-item active">
							<div class="userCenter-content">
								<h1 class="blue-line clearfix">我的购物车</h1>
								<p class=""></p><br><br>
								<table class="address-info-table bd-1-e8" border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr class="info-title ta-ct">
											<th class="item bb-1-e8" width="5%">序号</th>
											<th class="item bb-1-e8" width="20%">图片</th>
											<th class="item bb-1-e8" width="15%">信息</th>
											<th class="item bb-1-e8" width="10%">单价</th>
											<th class="item bb-1-e8" width="20%">数量</th>
											<th class="item bb-1-e8" width="15%">金额</th>
											<th class="item bb-1-e8" width="15%">操作</th>
										</tr>

										<c:forEach items="${requestScope.cartList }" var="cart" varStatus="statu">
											<tr class="info-text ta-ct">
												<td class="item">${statu.count }</td>
												<td class="item"><img src="${cart.booksId.booksImages }" style="height: 100px;width: 80px"/>
												</td>
												<td class="item" style="color: blue;">${cart.booksId.booksName }<br>
												${cart.booksId.booksWriter }</td>
												<td class="item">${cart.booksId.booksPrice }</td>
      	  										<td>
													<div class="plussub">
														<input type="hidden" class="hiddenId${statu.count }" value="${cart.booksId.booksId}">
														<span onclick="sub(${statu.count })" class="sub">-</span>
														<input style="width: 20px;text-align: center;" class="yzquantity${statu.count }" onblur="yzquantity(${statu.count })" type="text" value="${cart.booksQuantity}">
														<span onclick="plus(${statu.count })" class="plus">+</span>
													</div>
											   	 </td>
											   	<td class="item" id="price${statu.count }">${cart.cartPrice }</td>
												<td class="item">
												<a class="del-address cl-bl-l" href="${pageContext.request.contextPath }/cart/delete?cartId=${cart.cartId}">删除</a>
												<a class="del-address cl-bl-l" href="${pageContext.request.contextPath }/order/insert?userId=${param.userId}">结算</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</li>
					</ul>
				</div>
				<div class="cb"></div>
			</div>
		</div>
	


	<!-- 底部 -->
	<div class="footer">
		<!-- tag -->
		<div class="tag">
			<ul class="clearfix">
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/images/myimg/zheng.png" width="50" height="50"
					class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场正品</p>
						<p>出版社直采·拾贝正品</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/images/myimg/sheng.png" alt="" width="50" height="50"
					class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场满59包邮</p>
						<p>惊喜不断·让利多多</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/images/myimg/huo.png" alt="" width="50" height="50"
					class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">门店自取</p>
						<p>就近取货·方式灵活</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/images/myimg/hao.png" alt="" width="50" height="50"
					class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">售后无忧</p>
						<p>服务体验·更加精彩</p>
					</div>
					<div class="cb"></div></li>
			</ul>
		</div>
		<div class="wd-1200 ma pd-2000 clearfix">
			<ul class="links-box fl clearfix">
				<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">新手指南</span>
					<div>
						<a target="_blank" class="hover cl-6" href="">新用户注册</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6" href="">购物流程</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6" href="">积分制度</a>
					</div></li>
				<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">支付与配送</span>
					<div>
						<a target="_blank" class="hover cl-6" href="">验货与签收</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6" href="">配送范围</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6" href="">支付方式</a>
					</div></li>
				<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">售后服务</span>
					<div>
						<a target="_blank" class="hover cl-6" href="">发票制度</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6" href="">退换货流程</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6" href="">7天无理由退换货</a>
					</div></li>
				<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">个人中心</span>
					<div>
						<a target="_blank" class="hover cl-6" href="">收入管理</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6" href="">我的订单</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6" href="">我的等级</a>
					</div></li>
				<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">了解拾贝</span>
					<div>
						<a target="_blank" class="hover cl-6" href="">关于拾贝</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6" href="">联系我们</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6" href="">拾贝网隐私政策</a>
					</div></li>
			</ul>
			<div class="code-box fr">
				<ul class="clearfix">
					<li class="cl-6 lh-30 ta-ct wd-50p fl">
						<p class="fs-16 lh-40 ">手机拾贝</p> <img
						data-src="/images/myimg/app.jpg" align="" width="105" height="105"
						class="db hidden bd-1-d ma">
						<p class="lh-30">下载手机客户端</p>
					</li>
					<li class="cl-6 lh-30 ta-ct wd-50p fl">
						<p class="fs-16 lh-40 ">关注微信</p> <img
						data-src="/images/myimg/wx.jpg" align="" width="105" height="105"
						class="db hidden bd-1-d ma">
						<p class="lh-30">关注官方微信</p>
					</li>
				</ul>
				<div class="cl-6 lh-25 mt-15">
					<p class="fs-16 fw-bd">服务热线&nbsp;0571-26306883</p>
					<p>服务时间&nbsp;9：00-21：00</p>
				</div>
			</div>
		</div>

	</div>
	</div>
</div>

	<style type="text/css">
.copyRightA {
	color: 999;
}

.copyRightA:hover {
	color: fff;
}
</style>


	<script type="text/javascript">
		var qimoClientId = {};
		var m7CardInfo = {
			"left" : {
				"url" : ""
			},
			"right1" : {
				"text" : "",
				"color" : "",
				"fontSize" : 12
			},
			"right2" : {
				"text" : "",
				"color" : "",
				"fontSize" : 12
			},
			"right3" : {
				"text" : "",
				"color" : "",
				"fontSize" : 14
			},
			"extraInfos" : [],
			"url" : "//www.bookuu.com/"
		};
		var chatflag = 0;

		//获取用户登陆信息并

		$
				.ajax({
					type : "post",
					url : "/ajax/user.php",
					dataType : "json",
					success : function(data) {
						var user_str = '';
						if (data.code == "0000" && data.info.is_login == 1) {
							$("header_user_session_userid").val(
									data.info.userid);
							$("header_user_session_name").val(data.info.name);
							$("header_user_session_mobilephone").val(
									data.info.mobilephone);
							$("header_user_session_header").val(
									data.info.header);
							//console.log(11);
							user_str += '欢迎，' + data.info.name;
							user_str += '<span class="pd-0005 cl-c">|</span>';
							user_str += '<a class="mr-30 hover cl-6" href="/login.php?act=loginout" title="退出登录">退出登录</a>';

							qimoClientId = {
								userId : data.info.userid,
								nickName : data.info.name,
								customField : { //扩展字段，json对象，对象中的key-value都自定义
									"用户UID" : data.info.userid,
									"用户名称" : data.info.name,
									"手机号码" : data.info.mobilephone
								}
							};

							chatflag = 1;

							var dq_goods_id = "";

							if (dq_goods_id != "") {
								//扩展信息
								m7CardInfo = {
									"left" : {
										"url" : "https://bnmppic.bookuu.com/" // 左侧图片地址，可不填
									},
									"right1" : {
										"text" : "", // 首行文字内容，展示时超出两行隐藏，卡片上单行隐藏
										"color" : "595959", // 字体颜色，支持十六位 ffffff 格式的颜色，不填或错误格式默认595959
										"fontSize" : 12
									// 字体大小， 默认12 ， 请传入number类型的数字
									},
									"right2" : {
										"text" : "", // 第二行文字内容，展示时超出两行隐藏，卡片上单行隐藏
										"color" : "595959", // 字体颜色，支持十六位 ffffff 格式的颜色，不填或错误格式默认595959
										"fontSize" : 12
									// 字体大小， 默认12 ， 请传入number类型的数字
									},
									"right3" : {
										"text" : "¥", // 第三行文字内容，展示时超出两行隐藏，卡片上单行隐藏
										"color" : "ff6b6b", // 字体颜色，支持十六位 ffffff 格式的颜色，不填或错误格式默认ff6b6b
										"fontSize" : 14
									// 字体大小， 默认14 ， 请传入number类型的数字
									},
									"extraInfos" : [], // 额外信息，访客不可见，座席点击卡片上的更多可见，可不填，字符串形式的文本数组
									"url" : "//www.bookuu.com/detail.php?id=" // 点击可跳转的链接
								};
							}

						} else {
							user_str += '<a class="hover cl-6" href="/login.php" target="_blank" title="登录">登录</a><span class="pd-0005 cl-c">|</span><a class="mr-30 hover cl-6" href="/passport/register.php" target="_blank" title="免费注册">免费注册</a>';
						}

						user_str += '<a class="hover cl-6" href="/download.php" target="_blank" title="下载博库APP"><span class="icon-phone-line cl-bl-l fs-16 tp-3 mr-2 pr">&xe933;</span>下载博库APP</a>';

						$("www_user_session_info").html(user_str);

					}
				});
	</script>

	<script type='text/javascript'
		src='https://webchat.7moor.com/javascripts/7moorInit.js?accessId=92464560-3f16-11e9-8a25-8d8585556f17&autoShow=false&language=ZHCN'
		async='async'>
		
	</script>

	<script type="text/javascript">
		function openQimooChat() {
			if (chatflag == 1) {
				console.log(qimoClientId);
				console.log(m7CardInfo);
			}
			window.qimoChatClick();
		}
	</script>
	<script>
		$(function() {
			//频道 tab切换
			$(".my_tab")
					.click(
							function() {
								var tabId = $(this).attr("data-id");
								$(this).addClass('on-click');
								$(this).siblings().removeClass('on-click');

								$("my_tab_" + tabId).removeClass("dn");
								$("my_tab_" + tabId).siblings(
										".my_tab_content").addClass('dn');

								//tablazy 图片加载
								let id = "my_tab_" + tabId + ' img'
								let slidingImgs = $(id);
								for (let i = 0; i < slidingImgs.length; i++) {
									// 遍历操作
									if (slidingImgs[i]
											.getAttribute('data-srctaplazy')) {
										slidingImgs[i].src = slidingImgs[i]
												.getAttribute('data-srctaplazy');
										slidingImgs[i]
												.removeAttribute('data-srctaplazy');
									}
								}
							});
		});

		// 懒加载
		lazyLoading();

		// 菜单
		mouseenterAndTab();

		$(function() {

			//公共：加入收藏
			$('.collect')
					.on(
							'click',
							function() {
								var _span = $(this).find('span');

								var goods_id = $(this).attr('goods-id');
								if (_span.hasClass('icon-star-line')) {
									$
											.ajax({
												type : "get",
												url : "/ajax/collect.php",
												data : {
													act : 'collect',
													type : 'add',
													id : goods_id
												},
												dataType : "json",
												success : function(data) {
													if (parseInt(data.status) == 1) {
														alert(data.info);

														_span
																.removeClass(
																		'icon-star-line')
																.addClass(
																		'icon-star-block')
																.html(
																		'&xe945;');
														$('.collect')
																.removeClass(
																		'bd-1-a cl-9')
																.addClass(
																		'bd-1-bl-d cl-bl-l');

													} else if (parseInt(data.status) == 404) {
														window.location.href = data.info;
													} else {
														alert(data.info);
													}
												}
											});
								} else {
									confirm(
											'',
											'你要取消收藏该商品吗?',
											'',
											function(res) {
												if (res) {
													$
															.ajax({
																type : "get",
																url : "/ajax/collect.php",
																data : {
																	act : 'collect',
																	type : 'delete',
																	id : goods_id
																},
																dataType : "json",
																success : function(
																		data) {
																	if (parseInt(data.status) == 1) {
																		alert(data.info);

																		_span
																				.removeClass(
																						'icon-star-block')
																				.addClass(
																						'icon-star-line')
																				.html(
																						'&xe946;');
																		$(
																				'.collect')
																				.removeClass(
																						'bd-1-bl-d cl-bl-l')
																				.addClass(
																						'bd-1-a cl-9');

																	} else if (parseInt(data.status) == 404) {
																		window.location.href = data.info;
																	} else {
																		alert(data.info);
																	}
																}
															});
												} else {
													_span
															.removeClass(
																	'icon-star-line')
															.addClass(
																	'icon-star-block')
															.html('&xe945;');
													$('.collect')
															.removeClass(
																	'bd-1-a cl-9')
															.addClass(
																	'bd-1-bl-d cl-bl-l');
												}
											});
								}

							});

			getCartNum();

			//公共：加入购物车
			$('.addcart').on(
					'click',
					function() {
						var goods_id = $(this).attr('goods-id');
						var number = $(this).attr('goods-number');
						$.ajax({
							type : "post",
							url : "/ajax/cart.php?act=add",
							data : {
								id : goods_id,
								number : typeof (number) == 'undefined' ? 1
										: number
							},
							dataType : "json",
							success : function(data) {
								if (parseInt(data.status) == 404) {
									window.location.href = data.info;
								} else {
									if (data.status == 200) {
										$('.cart_num').addClass(
												'bc-rd-d pd-0005').html(
												data.list_number);
									}
									alert(data.info);
								}
							},
							error : function() {
								alert('加入失败');
							}
						});
					});

			//公共：签到
			$('.checkin').on('click', function() {
				$.ajax({
					type : "post",
					url : "/ajax/checkin.php?act=signed",
					data : {},
					dataType : "json",
					success : function(data) {
						if (parseInt(data.status) == 404) {
							window.location.href = data.info;
						} else {
							alert(data.info);
						}
					},
					error : function() {
						alert('签到失败');
					}
				});
			});

		});

		//获取购物车的数量
		function getCartNum() {
			var num = getCookie('gwshoppingcart');
			if (num == null) {
				//公共：购物车数量统计
				$.ajax({
					type : "get",
					url : "/ajax/cart.php?act=count",
					dataType : "json",
					success : function(data) {
						if (parseInt(data.status) == 200
								&& parseInt(data.list_number) > 0) {
							$('.cart_num').addClass('bc-rd-d pd-0005').html(
									data.list_number);
						}
					}
				});
			}
			if (num > 0) {
				$('.cart_num').addClass('bc-rd-d pd-0005').html(num);
			}
		}

		function getCookie(name) {
			var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
			if (arr = document.cookie.match(reg))
				return unescape(arr[2]);
			else
				return null;
		}

		// 进度条
		$('.progress-box').progress();
	</script>
</body>
</html>
<script type="text/javascript">
	// 全选
	$('body').on('click', '.choose', function() {
		var _this = $(this), _type = 'checkbox', _bool = false;
		// 选择状态
		if (_this.hasClass('product'))
			check(_this, _type, _bool);
		getEconomize();
	});
	// 默认全选
	$(function() {

		$('.choose:checkbox').attr('checked', true);
		$('.choose.choose-total').trigger('click').off('click');

	});

	$("tobuy")
			.click(
					function() {

						var goods_ids = get_ids();

						if (!goods_ids) {
							alert('请选择要结算的商品!');
							return false;
						}
						$
								.post(
										'shoppingcart.php',
										{
											act : 'buy',
											goods_ids : goods_ids
										},
										function(data) {
											if (data.status) {
												window.location.href = 'https://www.bookuu.com/order/confirm.php';
											} else {
												if (data.info) {
													window.location.href = data.info;
												} else {
													alert(data.message);
													//重新加载当前页
													setTimeout(
															"window.location.reload()",
															3000);
												}
											}
										}, 'json');

						return false;
					});

	function in_collect(obj) {
		var $this = $(obj);
		var goods_id = $this.data('id');
		if (!goods_id) {
			return;
		}

		$.post('shoppingcart.php', {
			act : 'collect',
			goods_id : goods_id
		}, function(data) {

			if (data.status) {
				$this.attr('onclick', 'del_collect(this)');
				$this.html('取消收藏');
			} else {
				if (data.info) {
					window.location.href = data.info;
				} else {
					alert(data.message);
				}
			}
		}, 'json');
	}

	function del_collect(obj) {

		var $this = $(obj);
		var goods_id = $this.data('id');
		if (!goods_id) {
			return;
		}

		confirm($this, '您确定要取消该收藏商品吗?', 'all', function(res) {
			if (res) {
				$.post('shoppingcart.php', {
					act : 'collect_delete',
					goods_id : goods_id
				}, function(data) {
					if (data.status) {
						$this.attr('onclick', 'in_collect(this)');
						$this.html('移入收藏夹');
					} else {
						if (data.info) {
							window.location.href = data.info;
						} else {
							alert(data.message);
						}
					}
				}, 'json');
			}
		});
	}
</script>
