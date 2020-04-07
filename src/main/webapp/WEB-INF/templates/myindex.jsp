<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="拾贝网品种丰富的中文网上书店，160万种图书在线热销！图书、音像、软件正品行货超低折扣，全场免邮，支持全国货到付款。" />
<meta name="keywords" content="拾贝网,拾贝,拾贝书城,网上书店,网上买书,图书,影视,音像,软件" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="baidu-site-verification" content="s3QQaARPSL" />
<title id="www_pc_title">我的信息-书海拾贝体验店</title>
<link rel="stylesheet" type="text/css" href="/css/address/all.css" />
<link rel="stylesheet" type="text/css" href="/css/address/1.css" />
<link rel="stylesheet" type="text/css" href="/css/address/2.css" />
<link rel="stylesheet" type="text/css" href="/css/address/3.css" />
<link rel="stylesheet" type="text/css" href="/css/address/4.css" />
<link rel="stylesheet" type="text/css" href="/css/address/5.css" />
<script type="text/javascript" src="/js/address/less.min.js"></script>
<script type="text/javascript" src="/js/address/first.js"></script>
<script type="text/javascript" src="/js/address/2.js"></script>
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
				<a target="_blank" class="db pd-0015 fl on-mouse" href="${pageContext.request.contextPath}/web/index"><span>首页</span></a>
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
    var uri ='/user/index.php';
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
                    <div class="my-info pb-20">
                        <h3 class="list-item-title bb-1-e8">我的信息</h3>
                    </div>
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                        <tbody>
                        <tr>
                            <td class="pr-20" width="150" rowspan="4">
                                <img class="va-md" src="https://bnmpstyle.bookuu.com/wap/images/default_user.jpg" alt="" width="150" height="150">
                            </td>
                            <td width="190">
                                <p>欢迎，${ sessionScope.user1.userName}</p>
                            </td>
                            <td width="468">&nbsp;</td>
                            <td class="ta-rt">
                                <a class="cl-bl" href="">[编辑个人信息]</a>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="cl-6">账户余额</span>&nbsp;&nbsp;¥0.00</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="cl-6">优惠券</span>&nbsp;&nbsp;&nbsp;5张</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        </tbody>
                    </table>
                    <ul class="ordsts-list mt-30 ta-ct mb-232">
                        <li class="item"><b>订单提醒</b></li>
                        <li class="item"><a href="">待付款订单&nbsp;&nbsp;<span>0</span></a></li>
                        <li class="item"><a href="">待发货订单&nbsp;&nbsp;<span>0</span></a></li>
                        <li class="item"><a href="">待收货订单&nbsp;&nbsp;<span>0</span></a></li>
                        <li class="item"><a href="">待评价订单&nbsp;&nbsp;<span>0</span></a></li>
                        <li class="cb"></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="cb"></div>
    </div>

    <!--一组或者多个商品，带标题 module_type=3 template_id=7 -->
<div class="my_module" id="11" data-template-id="7" module-id="11" module-type="3">

    <!--猜你喜欢  横向-->
    <div class="mb-20 mt-20 bc-f3 border-patch box-shadow scale-box">

        <div class="lh-40 bc-f3 pd-0020 fs-18 fw-bd">猜你喜欢</div>

        <!-- 商品列表 -->
        <div class="pt-5">
            <div class="flexslider product-six">
                <ul class="slides mouseenter-box">

                                        <li class="ta-ct">
                        <div class="mg-5 mouseenter mouseleave">
                            <div class="scale pd-10 oh pr">
                                <a class="db square-box one-one bgimg lazyload hidden" data-bgimg="background-image: url(/images/myimg/my1.PNG);" target="_blank" href=""></a>

                                                                
                            </div>
                            <div class="context">
                                <a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="">白夜行(精)</a>
                                <div>
                                    <span class="fs-16 cl-rd-l">¥30.02</span>
                                    <span class="cl-9">|</span>
                                    <del class="fs-12 cl-9">¥39.50</del>
                                </div>
                            </div>
                        </div>
                    </li>
                                        <li class="ta-ct">
                        <div class="mg-5 mouseenter mouseleave">
                            <div class="scale pd-10 oh pr">
                                <a class="db square-box one-one bgimg lazyload hidden" data-bgimg="background-image: url(/images/myimg/my2.PNG);" target="_blank" href=""></a>

                                                                
                            </div>
                            <div class="context">
                                <a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="">苏菲的世界(精)</a>
                                <div>
                                    <span class="fs-16 cl-rd-l">¥17.68</span>
                                    <span class="cl-9">|</span>
                                    <del class="fs-12 cl-9">¥26.80</del>
                                </div>
                            </div>
                        </div>
                    </li>
                                        <li class="ta-ct">
                        <div class="mg-5 mouseenter mouseleave">
                            <div class="scale pd-10 oh pr">
                                <a class="db square-box one-one bgimg lazyload hidden" data-bgimg="background-image: url(/images/myimg/my3.PNG);" target="_blank" href=""></a>

                                                                
                            </div>
                            <div class="context">
                                <a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="">读在大好时光</a>
                                <div>
                                    <span class="fs-16 cl-rd-l">¥29.30</span>
                                    <span class="cl-9">|</span>
                                    <del class="fs-12 cl-9">¥38.00</del>
                                </div>
                            </div>
                        </div>
                    </li>
								<li class="ta-ct">
									<div class="mg-5 mouseenter mouseleave">
										<div class="scale pd-10 oh pr">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/my4.PNG);"
												target="_blank" href=""></a>
										</div>
										<div class="context">
											<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank"
												href="">青春(韩寒文集典藏版)</a>
											<div>
												<span class="fs-16 cl-rd-l">¥22.40</span> <span class="cl-9">|</span>
												<del class="fs-12 cl-9">¥32.00</del>
											</div>
										</div>
									</div>
								</li>
								<li class="ta-ct">
									<div class="mg-5 mouseenter mouseleave">
										<div class="scale pd-10 oh pr">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/my5.PNG);"
												target="_blank" href=""></a>


										</div>
										<div class="context">
											<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank"
												href="">了不起的盖茨比(精)</a>
											<div>
												<span class="fs-16 cl-rd-l">¥23.68</span> <span class="cl-9">|</span>
												<del class="fs-12 cl-9">¥32.00</del>
											</div>
										</div>
									</div>
								</li>
								<li class="ta-ct">
									<div class="mg-5 mouseenter mouseleave">
										<div class="scale pd-10 oh pr">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/my6.PNG);"
												target="_blank" href=""></a>


										</div>
										<div class="context">
											<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank"
												href="">我们仨</a>
											<div>
												<span class="fs-16 cl-rd-l">¥17.25</span> <span class="cl-9">|</span>
												<del class="fs-12 cl-9">¥23.00</del>
											</div>
										</div>
									</div>
								</li>
								<li class="ta-ct">
									<div class="mg-5 mouseenter mouseleave">
										<div class="scale pd-10 oh pr">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/my7.PNG);"
												target="_blank" href=""></a>

											<div class="tip-box">
												<img
													src="https://media2.v.bookuu.com/activity/15/43/20190604154329224.png	">
											</div>

										</div>
										<div class="context">
											<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank"
												href="">时代广场的蟋蟀 不老泉文库</a>
											<div>
												<span class="fs-16 cl-rd-l">¥8.2</span> <span class="cl-9">|</span>
												<del class="fs-12 cl-9">¥15.00</del>
											</div>
										</div>
									</div>
								</li>
								<li class="ta-ct">
                        <div class="mg-5 mouseenter mouseleave">
                            <div class="scale pd-10 oh pr">
                                <a class="db square-box one-one bgimg lazyload hidden" data-bgimg="background-image: url(/images/myimg/my8.PNG);" target="_blank" href=""></a>

                                                                
                            </div>
                            <div class="context">
                                <a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="">爱探险的朵拉系列故事(第9辑相信有爱共4册)</a>
                                <div>
                                    <span class="fs-16 cl-rd-l">¥21.50</span>
                                    <span class="cl-9">|</span>
                                    <del class="fs-12 cl-9">¥29.80</del>
                                </div>
                            </div>
                        </div>
                    </li>
                    
                </ul>
      </div>
           
        </div>

    </div>

</div>
								
								
								
								
<script type="text/javascript">
    $(function(){
        //商品轮播 列表 - 大家都在看
        $('.flexslider.product-six').flexslider({
            animation: "slide",
            animationLoop:false,
            itemWidth: 200,
            itemMargin: 0,
            controlNav: ''
        });
    });
</script>
										</div>
										<!-- 底部 -->

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
													<li class="lh-30 wd-20p fl"><span
														class="db fs-16 lh-40 ">新手指南</span>
														<div>
															<a target="_blank" class="hover cl-6" href="">新用户注册</a>
														</div>
														<div>
															<a target="_blank" class="hover cl-6" href="">购物流程</a>
														</div>
														<div>
															<a target="_blank" class="hover cl-6" href="">积分制度</a>
														</div></li>
													<li class="lh-30 wd-20p fl"><span
														class="db fs-16 lh-40 ">支付与配送</span>
														<div>
															<a target="_blank" class="hover cl-6" href="">验货与签收</a>
														</div>
														<div>
															<a target="_blank" class="hover cl-6" href="">配送范围</a>
														</div>
														<div>
															<a target="_blank" class="hover cl-6" href="">支付方式</a>
														</div></li>
													<li class="lh-30 wd-20p fl"><span
														class="db fs-16 lh-40 ">售后服务</span>
														<div>
															<a target="_blank" class="hover cl-6" href="">发票制度</a>
														</div>
														<div>
															<a target="_blank" class="hover cl-6" href="">退换货流程</a>
														</div>
														<div>
															<a target="_blank" class="hover cl-6" href="">7天无理由退换货</a>
														</div></li>
													<li class="lh-30 wd-20p fl"><span
														class="db fs-16 lh-40 ">个人中心</span>
														<div>
															<a target="_blank" class="hover cl-6" href="">收入管理</a>
														</div>
														<div>
															<a target="_blank" class="hover cl-6" href="${pageContext.request.contextPath}/order/ordersInfo">我的订单</a>
														</div>
														<div>
															<a target="_blank" class="hover cl-6" href="">我的等级</a>
														</div></li>
													<li class="lh-30 wd-20p fl"><span
														class="db fs-16 lh-40 ">了解拾贝</span>
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
															data-src="/images/myimg/app.jpg" align="" width="105"
															height="105" class="db hidden bd-1-d ma">
															<p class="lh-30">下载手机客户端</p>
														</li>
														<li class="cl-6 lh-30 ta-ct wd-50p fl">
															<p class="fs-16 lh-40 ">关注微信</p> <img
															data-src="/images/myimg/wx.jpg" align="" width="105"
															height="105" class="db hidden bd-1-d ma">
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
															if (data.code == "0000"
																	&& data.info.is_login == 1) {
																$(
																		"header_user_session_userid")
																		.val(
																				data.info.userid);
																$(
																		"header_user_session_name")
																		.val(
																				data.info.name);
																$(
																		"header_user_session_mobilephone")
																		.val(
																				data.info.mobilephone);
																$(
																		"header_user_session_header")
																		.val(
																				data.info.header);
																//console.log(11);
																user_str += '欢迎，'
																		+ data.info.name;
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

															user_str += '<a class="hover cl-6" href="/download.php" target="_blank" title="下载拾贝APP"><span class="icon-phone-line cl-bl-l fs-16 tp-3 mr-2 pr">&xe933;</span>下载拾贝APP</a>';

															$(
																	"www_user_session_info")
																	.html(
																			user_str);

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
			$('.collect').on('click',function() {
			var _span = $(this).find('span');

			var goods_id = $(this).attr('goods-id');
			if (_span.hasClass('icon-star-line')) {
				$.ajax({
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