<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="/css/index/all.css" />
<link rel="stylesheet" type="text/css" href="/css/index/1.css" />
<link rel="stylesheet" type="text/css" href="/css/index/2.css" />
<link rel="stylesheet" type="text/css" href="/css/index/3.css" />
<!-- 字体图标 -->
<link rel="stylesheet" type="text/css" href="/css/index/4.css" />

<script type="text/javascript" src="/js/index/less.min.js"></script>
<script type="text/javascript" src="/js/index/first.js"></script>

<!-- FlexSlider -->
<link rel="stylesheet" type="text/css" href="css/index/5.css" />
<script type="text/javascript" src="/js/index/2.js"></script>

</head>
<body>

	
	<!-- 头部 -->
	<!-- 顶部 小标题  登录信息-->
	<div class="bc-f5 ht-30 lh-30">
		<div class="wd-1200 ma fs-12 cl-6">
			<p class="fl" style=" margin-top: 75px">
			<div class="fl mouseenter-box mouseenter mouseleave pr">
				<label class="cp">登录<span class="pd-0005 cl-c"><img
						src="/images/myimg/y4.PNG" /></span></label>
				<div class="acount">
					<a class="hover cl-6 "
						href="${pageContext.request.contextPath}/superadmin/tologin"
						target="_blank" title="超级管理员登录">超级管理员</a> <a
						class="hover cl-6 to-hd"
						href="${pageContext.request.contextPath}/admin/tologin"
						target="_blank" title="">管理员登录</a> <a class="hover cl-6 to-hd"
						href="${pageContext.request.contextPath}/business/tologin"
						target="_blank" title="">商家登录</a> <a class="hover cl-6 to-hd"
						href="${pageContext.request.contextPath}/user/tologin"
						target="_blank" title="">用户登录</a> <a class="hover cl-6 to-hd"
						href="javascript:void(0);" title=""></a>
				</div>
			</div>
			<span class="pd-0015 cl-c fr">|</span>
			<div class="fl mouseenter-box mouseenter mouseleave pr">
				<label class="cp">注册<span class="pd-0005 cl-c"><img
						src="/images/myimg/y4.PNG" /></span></label>
				<div class="acount">
					<a class="hover cl-6 "
						href="${pageContext.request.contextPath}/business/toregist"
						target="_blank" title="商家注册">商家注册</a> <a class="hover cl-6 to-hd"
						href="${pageContext.request.contextPath}/user/toregist"
						target="_blank" title="">用户注册</a> <a class="hover cl-6 to-hd"
						href="javascript:void(0);" title=""></a>
				</div>
			</div>
			<a class="hover cl-6" href="" target="_blank" title="下载拾贝APP"><span
				class=" cl-bl-l fs-16 tp-3 mr-2 pr"></span><img
				src="/images/myimg/k5.PNG" />下载拾贝APP</a>
			<p class="fr">
				<a class="hover fr cl-6" href="javascript:void()"
					onclick="openQimooChat();" title="联系客服">联系客服</a> <span
					class="pd-0015 cl-c fr">|</span> <a class="hover fr cl-6" href="${pageContext.request.contextPath}/user/tologin"
					target="_blank" title="店铺管理">店铺管理</a> <span class="pd-0015 cl-c fr">|</span>
				<a class="hover fr cl-6"
					href="${pageContext.request.contextPath}/user/tologin"
					target="_blank" title="收藏夹">收藏夹</a> <span class="pd-0015 cl-c fr">|</span>
			<div class="fr mouseenter-box mouseenter mouseleave pr">
				<label class="cp">我的拾贝<span class=" ml-5 fs-11"><img
						src="/images/myimg/y4.PNG" /></span></label>
				<div class="acount">
					<a class="hover cl-6 to-hd" href="${pageContext.request.contextPath }/user/tologin"
						target="_blank" title="我的拾贝">我的拾贝</a> <a class="hover cl-6 to-hd"
						href="${pageContext.request.contextPath}/user/tologin" target="_blank" title="">我的订单</a> <a
						class="hover cl-6 to-hd" href="${pageContext.request.contextPath}/user/tologin" target="_blank" title="">我的优惠券</a>
					<a class="hover cl-6 to-hd"
						href="${pageContext.request.contextPath}/user/tologin"
						target="_blank" title="">我的收藏</a> <a class="hover cl-6 to-hd"
						href="${pageContext.request.contextPath}/user/tologin" target="_blank" title="">我的收入</a> <a
						class="hover cl-6 to-hd" href="${pageContext.request.contextPath}/user/tologin" target="_blank" title="">官方消息</a>
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
				<a class="db logo-box fl" href="${pageContext.request.contextPath}/user/tologin"> <img
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
						href="${pageContext.request.contextPath}/user/tologin"> <span
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
				<a target="_blank" class="db cl-f title" href="${pageContext.request.contextPath}/user/tologin"><span
					class=" cl-f mr-10 pr tp-2"><img src="/images/myimg/y1.PNG" /></span>所有商品分类</a>

			</div>
			<div class="nav fl">
				<!--固定导航菜单-->
				<a target="_blank" class="db pd-0015 fl on-mouse" href="${pageContext.request.contextPath}/web/index"><span>首页</span></a>
				<a target="_blank" class="db pd-0015 fl " href="${pageContext.request.contextPath}/user/tologin"><span>新品</span></a>
				<a target="_blank" class="db pd-0015 fl " href="${pageContext.request.contextPath}/books/findAll"><span>图书</span></a>
				<a target="_blank" class="db pd-0015 fl " href="${pageContext.request.contextPath}/user/tologin"><span>排行榜</span></a>
				<span class="db pd-0015 fl">|</span> <a target="_blank" class="db pd-0015 fl " href="${pageContext.request.contextPath}/book/showList"> <span>图书馆</span>
				</a> <a target="_blank" class="db pd-0015 fl " href="${pageContext.request.contextPath}/books/findAll"> <span>文创馆</span>
				</a> <a target="_blank" class="db pd-0015 fl " href="${pageContext.request.contextPath}/user/tologin"> <span>生活美学馆</span>
				</a>
			</div>
			<div class="cb"></div>
		</div>
	</div>
	</div>

	<script>
        $(function(){
           
        // 滚动交互
        $(window).on('scroll', function(){
            var _scroll = $(window).scrollTop();
            if(_scroll >= 200 ){
                $('#search-container').addClass('active');
            }else{
                $('#search-container').removeClass('active');
            }
        });
        $(".tosearch").click(function(){
            var key = $(this).parent().find(".searchkey").val();
            if(key == ''){
                key = $(this).parent().find(".searchkey").attr('placeholder');
            }
            location.href = '' + key;
        });


     
      
       
    </script>
	<div class="section bc-f5">
		<!-- 菜单、banner、公告 -->
		<div class="ht-400 pr">
			<!-- 菜单 -->
			<!-- 公共 菜单 展示页 -->
			<div class="menu fl mouseenter-box">
				<div class="mouseenter mouseleave">
					<div class="title">
						<label
							style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
						<a target="_blank" href="${pageContext.request.contextPath}/user/tologin" class="cl-f lh-40 db">文学艺术</a>
						<div class="triangle-patch">
							<span class="icon-triangle-block2">&#xe958;</span>
						</div>
						<div class="patch">
							<span class="icon-arrow-line2"><img
								src="/images/myimg/y2.PNG" /></span>
						</div>
					</div>
					<ul>
						<div class="bb-1-e pb-5">
							<a target="_blank" href="#"
								class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">村上春树</a> <a
								target="_blank" href="#"
								class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">东野圭吾</a> <a
								target="_blank" href="#"
								class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">诺贝尔文学奖</a> <a
								target="_blank" href="#"
								class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">茅盾文学奖</a> <a
								target="_blank" href="#"
								class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">明朝那些事儿</a> <a
								target="_blank" href="#"
								class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">我们仨</a> <a
								target="_blank" href="#"
								class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">平凡的世界</a>
							<div class="cb"></div>
						</div>

						<div class="minh-215 mb-5">
							<li class="clearfix fs-13 lh-20">
								<div class="wd-110 fl ">
									<a target="_blank" href="#" class="hover fl mr-15 fw-bd">诗歌散文</a>
									<div class="cb"></div>
								</div>
								<div class="wd-650 cl-6 fl" style="width: 650px;">
									<a target="_blank" href="#" class="hover fl mr-15">中国古诗词</a> <a
										target="_blank" href="#" class="hover fl mr-15">中国现当代诗歌</a> <a
										target="_blank" href="#" class="hover fl mr-15">外国诗歌</a> <a
										target="_blank" href="#" class="hover fl mr-15">中国古代随笔</a> <a
										target="_blank" href="#" class="hover fl mr-15">中国现当代随笔</a> <a
										target="_blank" href="#" class="hover fl mr-15">外国随笔</a>
									<div class="cb"></div>
								</div>
								<div class="cb"></div>
							</li>
							<li class="clearfix fs-13 lh-20">
								<div class="wd-110 fl ">
									<a target="_blank" href="#" class="hover fl mr-15 fw-bd">小说</a>
									<div class="cb"></div>
								</div>
								<div class="wd-650 cl-6 fl" style="width: 650px;">
									<a target="_blank" href="#" class="hover fl mr-15">名家名作</a> <a
										target="_blank" href="#" class="hover fl mr-15">中国古典小说</a> <a
										target="_blank" href="#" class="hover fl mr-15">四大名著</a> <a
										target="_blank" href="#" class="hover fl mr-15">世界名著</a> <a
										target="_blank" href="#" class="hover fl mr-15">外国小说</a> <a
										target="_blank" href="#" class="hover fl mr-15">都市情感</a> <a
										target="_blank" href="#" class="hover fl mr-15">武侠小说</a> <a
										target="_blank" href="#" class="hover fl mr-15">侦探/悬疑/推理</a> <a
										target="_blank" href="#" class="hover fl mr-15">影视小说</a> <a
										target="_blank" href="#" class="hover fl mr-15">民间文学</a> <a
										target="_blank" href="#" class="hover fl mr-15">纪实文学</a> <a
										target="_blank" href="#" class="hover fl mr-15">其它</a>
									<div class="cb"></div>
								</div>
								<div class="cb"></div>
							</li>
							<li class="clearfix fs-13 lh-20">
								<div class="wd-110 fl ">
									<a target="_blank" href="#" class="hover fl mr-15 fw-bd">青春文学</a>
									<div class="cb"></div>
								</div>
								<div class="wd-650 cl-6 fl" style="width: 650px;">
									<a target="_blank" href="#" class="hover fl mr-15">校园</a> <a
										target="_blank" href="#" class="hover fl mr-15">爱情/情感</a> <a
										target="_blank" href="#" class="hover fl mr-15">叛逆/成长</a> <a
										target="_blank" href="#" class="hover fl mr-15">娱乐/偶像</a> <a
										target="_blank" href="#" class="hover fl mr-15">爆笑/无厘头</a> <a
										target="_blank" href="#" class="hover fl mr-15">玄幻</a> <a
										target="_blank" href="#" class="hover fl mr-15">悬疑/惊悚</a> <a
										target="_blank" href="#" class="hover fl mr-15">穿越/重生/架空</a> <a
										target="_blank" href="#" class="hover fl mr-15">古代言情</a> <a
										target="_blank" href="#" class="hover fl mr-15">其它</a>
									<div class="cb"></div>
								</div>
								<div class="cb"></div>
							</li>
							<li class="clearfix fs-13 lh-20">
								<div class="wd-110 fl ">
									<a target="_blank" href="#" class="hover fl mr-15 fw-bd">文集理论</a>
									<div class="cb"></div>
								</div>
								<div class="wd-650 cl-6 fl" style="width: 650px;">
									<a target="_blank" href="#" class="hover fl mr-15">文学理论</a> <a
										target="_blank" href="#" class="hover fl mr-15">评论与鉴赏</a> <a
										target="_blank" href="#" class="hover fl mr-15">文集</a> <a
										target="_blank" href="#" class="hover fl mr-15">作品集</a>
									<div class="cb"></div>
								</div>
								<div class="cb"></div>
							</li>
							<li class="clearfix fs-13 lh-20">
								<div class="wd-110 fl ">
									<a target="_blank" href="#" class="hover fl mr-15 fw-bd">古籍</a>
									<div class="cb"></div>
								</div>
								<div class="wd-650 cl-6 fl" style="width: 650px;">
									<a target="_blank" href="#" class="hover fl mr-15">经部</a> <a
										target="_blank" href="#" class="hover fl mr-15">史部</a> <a
										target="_blank" href="#" class="hover fl mr-15">子部</a> <a
										target="_blank" href="#" class="hover fl mr-15">集部</a> <a
										target="_blank" href="#" class="hover fl mr-15">四库全书</a> <a
										target="_blank" href="#" class="hover fl mr-15">古籍工具书</a> <a
										target="_blank" href="#" class="hover fl mr-15">其它</a>
									<div class="cb"></div>
								</div>
								<div class="cb"></div>
							</li>

							<div class="minh-215 mb-5">
								<li class="clearfix fs-13 lh-20">
									<div class="wd-110 fl ">
										<a target="_blank" href="#" class="hover fl mr-15 fw-bd">历史</a>
										<div class="cb"></div>
									</div>
									<div class="wd-650 cl-6 fl" style="width: 650px;">
										<a target="_blank" href="#" class="hover fl mr-15">中国史</a> <a
											target="_blank" href="#" class="hover fl mr-15">世界史</a> <a
											target="_blank" href="#" class="hover fl mr-15">普及读物</a> <a
											target="_blank" href="#" class="hover fl mr-15">史家名著</a> <a
											target="_blank" href="#" class="hover fl mr-15">文物考古</a> <a
											target="_blank" href="#" class="hover fl mr-15">地方史志</a> <a
											target="_blank" href="#" class="hover fl mr-15">其它</a>
										<div class="cb"></div>
									</div>
									<div class="cb"></div>
								</li>
								<li class="clearfix fs-13 lh-20">
									<div class="wd-110 fl ">
										<a target="_blank" href="#" class="hover fl mr-15 fw-bd">文化</a>
										<div class="cb"></div>
									</div>
									<div class="wd-650 cl-6 fl" style="width: 650px;">
										<a target="_blank" href="#" class="hover fl mr-15">世界各国文化</a>
										<a target="_blank" href="#" class="hover fl mr-15">中国传统文化</a>
										<a target="_blank" href="#" class="hover fl mr-15">中国民俗文化</a>
										<a target="_blank" href="#" class="hover fl mr-15">地域文化</a> <a
											target="_blank" href="#" class="hover fl mr-15">民族文化</a> <a
											target="_blank" href="#" class="hover fl mr-15">文化事业</a> <a
											target="_blank" href="#" class="hover fl mr-15">文化史</a> <a
											target="_blank" href="#" class="hover fl mr-15">文化理论</a> <a
											target="_blank" href="#" class="hover fl mr-15">文化随笔</a> <a
											target="_blank" href="#" class="hover fl mr-15">文化研究</a> <a
											target="_blank" href="#" class="hover fl mr-15">非物质文化遗产</a>
										<div class="cb"></div>
									</div>
									<div class="cb"></div>
								</li>

								<div class="mt-20 clearfix">
									<a target="_blank" href="#"> <img
										data-src="/images/myimg/1.jpg" alt="知觉之门" width="220"
										class="db mr-20 fl lazyimg">
									</a> <a target="_blank" href="#"> <img
										data-src="/images/myimg/4.jpg" alt="半小时漫画中国史" width="220"
										class="db mr-20 fl lazyimg">
									</a> <a target="_blank" href="#"> <img
										data-src="/images/myimg/5.jpg" alt="地理学与生活" width="220"
										class="db mr-20 fl lazyimg">
									</a>
								</div>
					</ul>
				</div>
				<div class="mouseenter mouseleave">
					<div class="title">
						<label
							style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
						<a target="_blank" href="#" class="cl-f lh-40 db">经管励志</a>
						<div class="triangle-patch">
							<span class="icon-triangle-block2">&#xe958;</span>
						</div>
						<div class="patch">
							<span class="icon-arrow-line2"><img
								src="/images/myimg/y2.PNG" /></span>
						</div>
					</div>
					<ul>

						<div class="bb-1-e pb-5">
							<a target="_blank" href="#">巴菲特</a> <a target="_blank" href="#">彼得林奇</a>
							<a target="_blank" href="#">吴晓波</a> <a target="_blank"
								href="#">乔布斯</a>
                                        <a target="_blank" href="#">西方经济金融前沿译丛</a>
                                        <a target="_blank" href="#">特劳特经典丛书</a>
                                        <a target="_blank" href="#">企业成长战略</a>
                                        <a target="_blank" href="#">诺贝尔经济学奖</a>
                                        <a target="_blank" href="#">马云</a>
                                        <div class="cb"></div>
                </div>
                
                <div class="minh-215 mb-5">
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">经济</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#">经济史</a>
                                                        <a target="_blank" href="#">经济学理论</a>
                                                        <a target="_blank" href="#">行业经济</a>
                                                        <a target="_blank" href="#">中国经济</a>
                                                        <a target="_blank" href="#">区域经济</a>
                                                        <a target="_blank" href="#">保险</a>
                                                        <a target="_blank" href="#">金融</a>
                                                        <a target="_blank" href="#">贸易政策</a>
                                                        <a target="_blank" href="#">其它</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">管理</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">一般管理学</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">企业管理</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">工商管理原理</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">市场/营销</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">电子商务</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">商务沟通</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">会计</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">MBA</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">投资理财</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">证券/股票</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">基金</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">期货</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">外汇</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">彩票</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">不动产</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">税务</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">黄金</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">投资指南</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">理财技巧</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">职场/励志</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">为人处世</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">人际交往</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">人在职场</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">人生哲学</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">情商与情绪管理</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">心灵与修养</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">演讲与口才</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">财商与财富智慧</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">时间管理</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">礼仪</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                    </div>

                            </ul>
                    </div>
                <div class="mouseenter mouseleave">
            <div class="title">
                <label style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
                <a target="_blank" href="#" class="cl-f lh-40 db">生活时尚</a>
                <div class="triangle-patch"><span class="icon-triangle-block2">&#xe958;</span></div>
                <div class="patch"><span class="icon-arrow-line2"><img src="/images/myimg/y2.PNG"/></span></div>
            </div>
                        <ul>

                                <div class="bb-1-e pb-5">
                                        <a target="_blank" href="#" class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">花视觉</a>
                                        <a target="_blank" href="#" class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">跟着君之学烘焙</a>
                                        <a target="_blank" href="#" class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">亲亲乐读系列</a>
                                        <a target="_blank" href="#" class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">断舍离</a>
                                        <a target="_blank" href="#" class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">跑步</a>
                                        <a target="_blank" href="#" class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">养兰</a>
                                        <div class="cb"></div>
                </div>
                
                <div class="minh-215 mb-5">
                                        <li class="clearfix fs-13 lh-20">
                       
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">孕产育儿</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">孕育百科</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">孕产护理</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">孕产妇食谱</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">婴幼儿护理</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">婴幼儿食谱</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">早教</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">子女起名</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                    
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">家居百科</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">居室设计</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">家居装修</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">家庭园艺</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">家居风水</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">生活窍门</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">生活百科</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">养生保健</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">中医养生</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">常见病预防和治疗</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">药膳/食疗</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">保健/健身</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">中老年养生</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">健康百科</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">心理健康</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">中医</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">其它</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">体育/运动</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">教学理论</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">裁判/规则</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">奥林匹克</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">田径</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">体操</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">足球</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">乒乓球</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">台球</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">武术/气功/太极</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">跆拳道/拳击</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">其它球类运动</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">其它运动</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">风水/占卜</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">星座/血型/塔罗</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">占卜/手相/算命</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                    </div>

                            </ul>
                    </div>
                <div class="mouseenter mouseleave">
            <div class="title">
                <label style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
                <a target="_blank" href="#" class="cl-f lh-40 db">科技教育</a>
                <div class="triangle-patch"><span class="icon-triangle-block2">&#xe958;</span></div>
                <div class="patch"><span class="icon-arrow-line2"><img src="/images/myimg/y2.PNG"/></span></div>
            </div>
                        <ul>

                                <div class="bb-1-e pb-5">
                                        <a target="_blank" href="#" class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">新课标</a>
                                        <a target="_blank" href="#" class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">黄冈小状元</a>
                                        <a target="_blank" href="#" class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">日有所诵</a>
                                        <a target="_blank" href="#" class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">小学教材全解</a>
                                        <a target="_blank" href="#" class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">星火英语</a>
                                        <a target="_blank" href="#" class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">和秋叶一起学</a>
                                        <a target="_blank" href="#" class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">时间简史</a>
                                        <div class="cb"></div>
                </div>
                
                <div class="minh-215 mb-5">
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">计算机/网络</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">程序设计</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">数据库</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">操作系统</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">计算机考试</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">影印版</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">期刊</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">其它</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                      
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">考试</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">考研</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">英语</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">小语种</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">成人高考</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">自学考试</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">考研</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">其他资格考试</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">其它</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                    
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">工具书</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">汉语</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">民族语</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">文学鉴赏辞典</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">牛津系列</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">朗文系列</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">其它语种</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                    </div>

                            </ul>
                    </div>
                <div class="mouseenter mouseleave">
            <div class="title">
                <label style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
                <a target="_blank" href="#" class="cl-f lh-40 db">创意文具</a>
                <div class="triangle-patch"><span class="icon-triangle-block2">&#xe958;</span></div>
                <div class="patch"><span class="icon-arrow-line2"><img src="/images/myimg/y2.PNG"/></span></div>
            </div>
                        <ul>

                
                <div class="minh-215 mb-5">
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">书写笔类</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">中性笔</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">针管笔</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">正姿笔</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">墨水/墨囊/补充液</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">替芯/铅芯</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">纸张本册</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">笔记本/记事本</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">手账本</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">传真纸</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">奖状/证书</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">分类纸/索引纸/活页替芯</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">其他纸品</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">画具/画材</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">水彩笔</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">蜡笔/油画棒</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">彩色铅笔</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">绘图铅笔</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">勾线笔</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">画板/画架</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">图画本/素描本</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">铅画纸</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">填色本</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">其他画材</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">文房用品</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">书法用纸</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">毛笔</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">字帖临摹纸</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">印泥</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">笔帘</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">墨汁</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">文房四宝套装</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">砚台</a>
                                                        <div class="cb"></div>
                        </div>
                                            
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">益智童玩</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">手工DIY</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">识字卡</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">早教机</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">亲子互动玩具</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">滑板车</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">溜冰鞋</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">拼插积木</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">球类运动</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">办公财务</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">裁剪用品</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">装订用品</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">胶粘用品</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">电脑周边</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">三钉一针</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">票夹</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">按品牌分</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">晨光</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">得力</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">广博</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">创易</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">奥迪双钻</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">乐普升</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">kinbor</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">giotto</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">白金</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                    </div>

                            </ul>
                    </div>
                <div class="mouseenter mouseleave">
            <div class="title">
                <label style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
                <a target="_blank" href="#" class="cl-f lh-40 db">生活美学</a>
                <div class="triangle-patch"><span class="icon-triangle-block2">&#xe958;</span></div>
                <div class="patch"><span class="icon-arrow-line2"><img src="/images/myimg/y2.PNG"/></span></div>
            </div>
                        <ul>

                
                <div class="minh-215 mb-5">
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">茶</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">茶叶</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">茶器</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">茶衍生品</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">香</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">香插</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">香炉</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">香管</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">香品</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">香衍生品</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">套装</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">花</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">花器</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">花道用品</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                    </div>

                            </ul>
                    </div>
                <div class="mouseenter mouseleave">
            <div class="title">
                <label style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
                <a target="_blank" href="#" class="cl-f lh-40 db">影音原版</a>
                <div class="triangle-patch"><span class="icon-triangle-block2">&#xe958;</span></div>
                <div class="patch"><span class="icon-arrow-line2"><img src="/images/myimg/y2.PNG"/></span></div>
            </div>
                        <ul>

                
                <div class="minh-215 mb-5">
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">进口原版图书</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">港台版图书</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">Fiction小说</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">Life & Entertainment休闲生活</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">Fashion流行服饰</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">Techology科技</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">Advertising Art广告</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">Painting,Drawing & Photography</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">Graphic Design平面设计</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">Architecture建筑</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">Magazines期刊</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                        <li class="clearfix fs-13 lh-20">
                        <div class="wd-110 fl ">
                            <a target="_blank" href="#" class="hover fl mr-15 fw-bd">影音文化</a>
                            <div class="cb"></div>
                        </div>
                                                <div class="wd-650 cl-6 fl" style="width: 650px;">
                                                        <a target="_blank" href="#" class="hover fl mr-15">进口古典音乐</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">乐曲</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">歌曲</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">歌舞/音乐剧</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">戏曲/曲艺</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">电影</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">电视剧</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">纪录片</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">教育片</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">儿童影音</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">生活休闲</a>
                                                        <a target="_blank" href="#" class="hover fl mr-15">专题百科</a>
                                                        <div class="cb"></div>
                        </div>
                                                <div class="cb"></div>
                    </li>
                                    </div>

                            </ul>
                    </div>
            </div>

          <div class="banner pr" style="position: relative;left: 50%;margin-left: -960px;">
            <div class="flexslider banner index">
                <ul class="slides">
                                        <li>
                        <a target="_blank" href="#">
                            <img data-src="/images/myimg/lb3.PNG" alt="榜单" width="1920" height="400" class="db hidden">
                        </a>
                    </li>
                                        <li>
                        <a target="_blank" href="#">
                            <img data-src="/images/myimg/2.jpg" alt="大冰" width="1920" height="400" class="db hidden">
                        </a>
                    </li>
                                        <li>
                        <a target="_blank" href="#">
                            <img data-src="/images/myimg/lb6.png" alt="111" width="1920" height="400" class="db hidden">
                        </a>
                    </li>
                                        <li>
                        <a target="_blank" href="#">
                             <img data-src="/images/myimg/lb1.png" alt="" width="1920" height="400" class="db hidden">
                        </a>
                    </li>
                                        <li>
                        <a target="_blank" href="#">
                           <img data-src="/images/myimg/lb3.png"  width="1920" height="400" class="db hidden">
                        </a>
                    </li>
                                        <li>
                        <a target="_blank" href="#">
                            <img data-src="/images/myimg/2.jpg" alt="app" width="1920" height="400" class="db hidden">
                        </a>
                    </li>
                                    </ul>
            </div>
        </div>

<!-- 正品保证 -->
    <div class="bc-f ht-40 lh-40">
        <div class="wd-1200 ma pd-0020 ">
            <label class="mr-60"><span class="mr-10 cl-3c fs-20 pr tp-4"><img src="/images/myimg/z1.PNG"></span>正品保证</label>
            <label class="mr-60"><span class=" mr-10 cl-3c fs-20 pr tp-4"><img src="/images/myimg/z2.PNG"></span>七天无理由退货</label>
            <label class="mr-60"><span class="mr-10 cl-3c fs-20 pr tp-4"><img src="/images/myimg/z3.PNG"></span>全场满59包邮</label>
						<img src="/images/myimg/xi2.PNG">
						
        </div>
    </div>
    </div>
</div>

 <div class="wd-1200 ma">
      
	
<div class="anchor-box" id="7" data-template-id="9" plate-id="7" plate-type="5">

    <ul class="mb-20">            <!--重磅推荐 module_type=18 template_id=8-->
<li class="wd-390 fl" id="goto_zbtj">
    <div class="card-box">
        <p class="card">
            <label class="fl fs-18 mr-10"><span class=" mr-10 fs-22 pr tp-3"></span>重磅推荐</label>
            <a class="fl cl-f" target="_blank" href="javascript:void(0);">拾贝精选推荐
                <span class="icon-aoorw-line cl-f ml-5 pr tp-2 fs-15"></span>
            </a>
        <div class="cb"></div>
        </p>
    </div>

    <ul class="scale-box oh">
                                <li class="wd-50p fl ht-183">
            <div class="bd-4-f scale oh">
                <a class="db" target="_blank" href="#">
                    <img data-src="/images/myimg/z1.jpg" alt="品质好书" width="190" height="175" class="hidden db">
                </a>
            </div>
        </li>
                                        <li class="wd-50p fl ht-183">
            <div class="bd-4-f scale oh">
                <a class="db" target="_blank" href="#">
                    <img data-src="/images/myimg/z2.jpg" alt="独家特供" width="190" height="175" class="hidden db">
                </a>
            </div>
        </li>
                                        <li class="wd-50p fl ht-93">
            <div class="bd-4-f scale oh">
                <a class="db" target="_blank" href="#">
                    <img data-src="/images/myimg/z5.jpg" alt="传家礼品" width="190" height="85" class="hidden db">
                </a>
            </div>
        </li>
                                        <li class="wd-50p fl ht-93">
            <div class="bd-4-f scale oh">
                <a class="db" target="_blank" href="#">
                    <img data-src="/images/myimg/z6.jpg" alt="好书成套" width="190" height="85" class="hidden db">
                </a>
            </div>
        </li>
                                        <li class="wd-50p fl ht-93">
            <div class="bd-4-f scale oh">
                <a class="db" target="_blank" href="#">
                    <img data-src="/images/myimg/z3.jpg" alt="文创" width="190" height="85" class="hidden db">
                </a>
            </div>
        </li>
                                        <li class="wd-50p fl ht-93">
            <div class="bd-4-f scale oh">
                <a class="db" target="_blank" href="#">
                    <img data-src="/images/myimg/z4.PNG" alt="生活美学" width="190" height="85" class="hidden db">
                </a>
            </div>
        </li>
                        <div class="cb"></div>
    </ul>
</li>
                                             <!--新品速递 module_type=19 template_id=11-->
<li class="wd-390 fl mg-0015">
    <div class="card-box">
        <p class="card clearfix">
            <label class="fl fs-18 mr-10"><span class=" mr-10 fs-22 pr tp-3"></span>新品速递</label>
            <a class="fl cl-f" target="_blank" href="javascript:void(0);">发现品质生活
                <span class=" cl-f ml-5 pr tp-2 fs-15"></span>
            </a>
        </p>
    </div>

    <ul class="clearfix ht-370 scale-box oh">
                                <li class="wd-50p fl ht-183">
            <div class="bd-4-f scale oh"><a class="db" target="_blank" href="#">
                <img data-src="/images/myimg/x1.jpg" alt="畅销新品" width="190" height="175" class="hidden db">
            </a></div>
        </li>
                                        <li class="wd-50p fl ht-183">
            <div class="bd-4-f scale oh"><a class="db" target="_blank" href="#">
                <img data-src="/images/myimg/x2.jpg" alt="壹周新书" width="190" height="175" class="hidden db">
            </a></div>
        </li>
                                        <li class="wd-50p fl ht-93">
            <div class="bd-4-f scale oh"><a class="db" target="_blank" href="#">
                <img data-src="/images/myimg/x3.jpg" alt="签名专区" width="190" height="85" class="hidden db">
            </a></div>
        </li>
                                        <li class="wd-50p fl ht-93">
            <div class="bd-4-f scale oh"><a class="db" target="_blank" href="#">
                <img data-src="/images/myimg/x4.jpg" alt="书单来了" width="190" height="85" class="hidden db">
            </a></div>
        </li>
                                        <li class="wd-50p fl ht-93">
            <div class="bd-4-f scale oh"><a class="db" target="_blank" href="#">
                <img data-src="/images/myimg/x5.PNG" alt="霁蓝之茶具" width="190" height="85" class="hidden db">
            </a></div>
        </li>
                                        <li class="wd-50p fl ht-93">
            <div class="bd-4-f scale oh"><a class="db" target="_blank" href="#">
                <img data-src="/images/myimg/x6.jpg""
								alt="玩具嘉年华" width="190" height="85" class="hidden db"> </a>
						</div>
						</li>
					</ul>
					</li>
					<!-- 热销排行 module_type=17 template_id=10-->
					<li class="wd-390 ht-415 fr">
						<div class="card-box">
							<p class="card clearfix">
								<label class="fl fs-18 mr-10"><span
									class=" mr-10 fs-22 pr tp-3"></span>热销排行</label> <a class="fl cl-f"
									target="_blank" href="#">网罗全民挚爱<span
									class=" cl-f ml-5 pr tp-2 fs-15"></span></a>
							</p>
						</div>

						<div class="bd-1-e8 tab-box">

							<ul class="tab-title hotsale-title">
								<li class="ranking_list wd-25p fl on-tab" data-id="31"><span>图书</span></li>
								<li class="ranking_list wd-25p fl " data-id="38"><span>童书</span></li>
								<li class="ranking_list wd-25p fl " data-id="34"><span>文学</span></li>
								<li class="ranking_list wd-25p fl " data-id="39"><span>教辅</span></li>
								<div class="cb"></div>
							</ul>

							<ul
								class="tab-content hotsale-content mouseenter-box patch ht-325 oh">
								<li id="my_ranktab_31" class="my_ranktab_content fs-14 on-tab ">
									<a class="db clearfix mouseenter on-mouse bb-1-e8"
									target="_blank" href="#">
										<div class="fl wd-30 ta-lf">
											<img src="/images/myimg/rl1.PNG" alt="" width="30"
												class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/r1.PNG);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">我们仨</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：535470</div>
										<div class="cb"></div>
								</a> <a class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">
											<img src="/images/myimg/rl2.PNG" alt="" width="30"
												class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/r2.PNG);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">活着/余华作品</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：417650</div>
										<div class="cb"></div>
								</a> <a class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">
											<img src="/images/myimg/rl3.PNG" alt="" width="30"
												class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/r3.PNG);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">偷影子的人</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：371639</div>
										<div class="cb"></div>
								</a> <a class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">4.</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/r4.PNG);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">三体（1-3 共3册）</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：352044</div>
										<div class="cb"></div>
								</a> <a class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">5.</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/r5.PNG);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">狼王梦/动物小说大王沈石溪品藏书系</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：335708</div>
										<div class="cb"></div>
								</a>

								</li>
								<li id="my_ranktab_38" class="my_ranktab_content fs-14  dn">
									<a class="db clearfix mouseenter on-mouse bb-1-e8"
									target="_blank" href="#">
										<div class="fl wd-30 ta-lf">
											<img src="/images/myimg/rl1.PNG" alt="" width="30"
												class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/rr1.PNG);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">狼王梦/动物小说大王沈石溪品藏书系</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：335708</div>
										<div class="cb"></div>
								</a> <a class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">
											<img src="/images/myimg/rl2.PNG" alt="" width="35"
												class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/rr2.PNG);"></span>
												<span class="tip-box"> <img
													src="https://media2.v.bookuu.com/activity/13/24/20190524132431590.png	">
											</span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">父与子全集(彩色双语版)/常青藤绘本馆</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：313431</div>
										<div class="cb"></div>
								</a> <a class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">
											<img src="/images/myimg/rl3.PNG" alt="" width="35"
												class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/rr3.PNG);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">中华上下五千年(共4册)</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：282797</div>
										<div class="cb"></div>
								</a> <a class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">4.</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/rr4.PNG);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">长袜子皮皮(美绘版)/林格伦作品选集</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：277953</div>
										<div class="cb"></div>
								</a> <a class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">5.</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/rr5.PNG);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">三毛流浪记全集(彩图注音读物)</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：231329</div>
										<div class="cb"></div>
								</a>

								</li>

							</ul>
						</div>
					</li>

					<script>
    $(function(){
        //热销榜切换
       $(".ranking_list").click(function(){
           $(this).addClass('on-tab');
           $(this).siblings().removeClass('on-tab');

           var tabId = $(this).attr("data-id");
           $("#my_ranktab_"+tabId).fadeIn("slow");
           $("#my_ranktab_"+tabId).siblings(".my_ranktab_content").hide();
       });
    });
</script>

					<div class="cb"></div>

					</ul>

				</div>

				<!-- 【板块】 分类频道 样式1 plate_type=15 template_id=52-->

				<!-- 板块 -->
				<div class="anchor-box" id="21" data-template-id="52" plate-id="21"
					plate-type="15">


					<div class="mb-20 tab-box">

						<!-- 分类 频道 标头-->
						<div class="navyblue-border">
							<div class="context">
								<label class="fl fs-18 mr-15"> <img
									class="icon-book-line2 mr-4 fs-24 pr tp-5" width="25"
									height="25" src="/images/myimg/b1.PNG"> 拾贝热推
								</label>
								<p class="fr">
									<a class="navyblue cp cl-3 pd-0410 mr-10  on-click  my_tab"
										data-id="50">编辑精选</a> <a
										class="navyblue cp cl-3 pd-0410 mr-10  my_tab" data-id="40">新书上架</a>
									<a class="navyblue cp cl-3 pd-0410 mr-10  my_tab" data-id="52">畅销热卖</a>
									<a class="navyblue cp cl-3 pd-0410 mr-10  my_tab" data-id="51">一种关注</a>
									<a class="navyblue cp cl-3 pd-0410 mr-10  my_tab"
										data-id="6737">期刊MOOK</a>
								</p>
								<div class="cb"></div>
							</div>
						</div>
						<!-- 分类 频道 标头-->


						<!-- 模块加载区域-->
						<!--分类频道 样式2 module_type=16 template_id=12-->

						<div class="my_tab_content bc-f " id="my_tab_50">

							<!-- 商品列表1 -->
							<div class="clearfix">
								<a class="db fl wd-200" href="javascript:void(0);"> <img
									data-src="/images/myimg/t1.PNG" alt="" width="200" height="280"
									class="db hidden">
								</a>

								<ul
									class="wd-1000 fr mouseenter-box productlist-2 clearfix box-shadow">
									<li class="wd-20p ta-ct fl scale-box">
										<div class="pd-5 mouseenter mouseleave bd-2-f">
											<div class="scale oh pd-20 pr">
												<a class="db square-box one-one bgimg lazyload hidden"
													data-bgimg="background-image: url(/images/myimg/t2.PNG);"
													target="_blank" href="#"></a>
											</div>
											<div class="context">
												<a class="db cl-6 ht-36 lh-18 oh mt-2" target="_blank"
													href="#">流浪地球</a>
												<p class="lh-40">
													<span class="fs-16 cl-rd-l ">¥21.40</span> <span
														class="cl-9">|</span>
													<del class="fs-12 cl-9">¥35.00</del>
												</p>
											</div>
										</div>
									</li>
									<li class="wd-20p ta-ct fl scale-box">
										<div class="pd-5 mouseenter mouseleave bd-2-f">
											<div class="scale oh pd-20 pr">
												<a class="db square-box one-one bgimg lazyload hidden"
													data-bgimg="background-image: url(/images/myimg/t3.PNG);"
													target="_blank" href="#"></a>
											</div>
											<div class="context">
												<a class="db cl-6 ht-36 lh-18 oh mt-2" target="_blank"
													href="#">巷说百物语全集（共5册）</a>
												<p class="lh-40">
													<span class="fs-16 cl-rd-l ">¥142.10</span> <span
														class="cl-9">|</span>
													<del class="fs-12 cl-9">¥203.00</del>
												</p>
											</div>
										</div>
									</li>
									<li class="wd-20p ta-ct fl scale-box">
										<div class="pd-5 mouseenter mouseleave bd-2-f">
											<div class="scale oh pd-20 pr">
												<a class="db square-box one-one bgimg lazyload hidden"
													data-bgimg="background-image: url(/images/myimg/t4.PNG);"
													target="_blank" href="#"></a>
											</div>
											<div class="context">
												<a class="db cl-6 ht-36 lh-18 oh mt-2" target="_blank"
													href="#">激荡三十年(中国企业1978-2008十年典藏版上下)(...</a>
												<p class="lh-40">
													<span class="fs-16 cl-rd-l ">¥82.36</span> <span
														class="cl-9">|</span>
													<del class="fs-12 cl-9">¥116.00</del>
												</p>
											</div>
										</div>
									</li>
									<li class="wd-20p ta-ct fl scale-box">
										<div class="pd-5 mouseenter mouseleave bd-2-f">
											<div class="scale oh pd-20 pr">
												<a class="db square-box one-one bgimg lazyload hidden"
													data-bgimg="background-image: url(/images/myimg/t5.PNG);"
													target="_blank" href="#"></a>
											</div>
											<div class="context">
												<a class="db cl-6 ht-36 lh-18 oh mt-2" target="_blank"
													href="#">苦难英雄任正非</a>
												<p class="lh-40">
													<span class="fs-16 cl-rd-l ">¥36.54</span> <span
														class="cl-9">|</span>
													<del class="fs-12 cl-9">¥58.00</del>
												</p>
											</div>
										</div>
									</li>
									<li class="wd-20p ta-ct fl scale-box">
										<div class="pd-5 mouseenter mouseleave bd-2-f">
											<div class="scale oh pd-20 pr">
												<a class="db square-box one-one bgimg lazyload hidden"
													data-bgimg="background-image: url(/images/myimg/t6.PNG);"
													target="_blank" href="#"></a>
											</div>
											<div class="context">
												<a class="db cl-6 ht-36 lh-18 oh mt-2" target="_blank"
													href="#">时间简史（一本书带你读懂时尚珍藏版)(精)/美阅读</a>
												<p class="lh-40">
													<span class="fs-16 cl-rd-l ">¥32.34</span> <span
														class="cl-9">|</span>
													<del class="fs-12 cl-9">¥49.00</del>
												</p>
											</div>
										</div>
									</li>
								</ul>
							</div>

							<!-- 商品列表2 -->
							<div class="clearfix">
								<ul
									class="wd-1000 fl mouseenter-box productlist-2 clearfix box-shadow">
									<li class="wd-20p ta-ct fl scale-box">
										<div class="pd-5 mouseenter mouseleave bd-2-f">
											<div class="scale oh pd-20 pr">
												<a class="db square-box one-one bgimg lazyload hidden"
													data-bgimg="background-image: url(/images/myimg/t7.PNG);"
													target="_blank" href="#"></a>
											</div>
											<div class="context">
												<a class="db cl-6 ht-36 lh-18 oh mt-2" target="_blank"
													href="#">好物100</a>
												<p class="lh-40">
													<span class="fs-16 cl-rd-l ">¥72.50</span> <span
														class="cl-9">|</span>
													<del class="fs-12 cl-9">¥98.00</del>
												</p>
											</div>
										</div>
									</li>
									<li class="wd-20p ta-ct fl scale-box">
										<div class="pd-5 mouseenter mouseleave bd-2-f">
											<div class="scale oh pd-20 pr">
												<a class="db square-box one-one bgimg lazyload hidden"
													data-bgimg="background-image: url(/images/myimg/t8.PNG);"
													target="_blank" href="#"></a>
											</div>
											<div class="context">
												<a class="db cl-6 ht-36 lh-18 oh mt-2" target="_blank"
													href="#">改变你的姿态改变你的气质（精）</a>
												<p class="lh-40">
													<span class="fs-16 cl-rd-l ">¥30.00</span> <span
														class="cl-9">|</span>
													<del class="fs-12 cl-9">¥45.00</del>
												</p>
											</div>
										</div>
									</li>
									<li class="wd-20p ta-ct fl scale-box">
										<div class="pd-5 mouseenter mouseleave bd-2-f">
											<div class="scale oh pd-20 pr">
												<a class="db square-box one-one bgimg lazyload hidden"
													data-bgimg="background-image: url(/images/myimg/t9.PNG);"
													target="_blank" href="#"></a>

											</div>
											<div class="context">
												<a class="db cl-6 ht-36 lh-18 oh mt-2" target="_blank"
													href="#">护肤全书</a>
												<p class="lh-40">
													<span class="fs-16 cl-rd-l ">¥9.90</span> <span
														class="cl-9">|</span>
													<del class="fs-12 cl-9">¥18.00</del>
												</p>
											</div>
										</div>
									</li>
									<li class="wd-20p ta-ct fl scale-box">
										<div class="pd-5 mouseenter mouseleave bd-2-f">
											<div class="scale oh pd-20 pr">
												<a class="db square-box one-one bgimg lazyload hidden"
													data-bgimg="background-image: url(/images/myimg/t11.PNG);"
													target="_blank" href="#"></a>
											</div>
											<div class="context">
												<a class="db cl-6 ht-36 lh-18 oh mt-2" target="_blank"
													href="#">有话说</a>
												<p class="lh-40">
													<span class="fs-16 cl-rd-l ">¥35.90</span> <span
														class="cl-9">|</span>
													<del class="fs-12 cl-9">¥52.00</del>
												</p>
											</div>
										</div>
									</li>
									<li class="wd-20p ta-ct fl scale-box">
										<div class="pd-5 mouseenter mouseleave bd-2-f">
											<div class="scale oh pd-20 pr">
												<a class="db square-box one-one bgimg lazyload hidden"
													data-bgimg="background-image: url(/images/myimg/t10.PNG);"
													target="_blank" href="#"></a>
											</div>
											<div class="context">
												<a class="db cl-6 ht-36 lh-18 oh mt-2" target="_blank"
													href="#">万历十五年/黄仁语作品</a>
												<p class="lh-40">
													<span class="fs-16 cl-rd-l ">¥205.00</span> <span
														class="cl-9">|</span>
													<del class="fs-12 cl-9">¥297.00</del>
												</p>
											</div>
										</div>
									</li>
								</ul>

								<a class="db fr wd-200" target="_blank" href="#"> <img
									data-src="/images/myimg/tn.jpg" alt="" width="200" height="280"
									class="db hidden">
								</a>

							</div>

						</div>



						<div class="cb"></div>

						</ul>

					</div>

				</div>

			</div>



			<!-- 左侧导航 -->
			<div class="leftmenu-box dn">
				<ul class="bb-1-e8 anchor-action">
					<li class="cp">限时抢购</li>
					<li class="cp">重磅推荐</li>
					<li class="cp">拾贝热推</li>
					<li class="cp">图书频道</li>
					<li class="cp">分类推荐</li>
					<li class="cp">人气作家</li>
					<li class="cp">文创频道</li>
					<li class="cp">美学频道</li>
				</ul>
			</div>
			<!-- 右侧导航 -->
			<div class="rightmenu-box">
				<div class="rightmenu">
					<a href="#" onclick="openQimooChat();"
						class="cl-9 bt-1-8f hover download" title="联系客服"> <span
						class="cl-9 fs-20"><img src="/images/myimg/k1.PNG" /></span>
						<p class="fs-12 lh-1p2">
							联<br>系<br>客<br>服
						</p>
					</a> <a target="_blank" class="cl-9 bt-1-8f hover" href="${pageContext.request.contextPath}/user/tologin" title="购物车">
						<span class="icon-cart-block cl-9 fs-20"><img
							src="/images/myimg/k2.PNG" /></span>
						<p class="fs-12 lh-1p2">
							购<br>物<br>车
						</p>
					</a> <a class="cl-9 bt-1-8f hover checkin" href="#" title="签到"> <span
						class="icon-write-line cl-9 fs-25"><img
							src="/images/myimg/k3.PNG" /></span>
						<p class="fs-12 lh-1p2">
							签<br>到
						</p>
					</a> <a target="_blank" class="cl-9 bt-1-8f hover" href="#"
						title="下载APP"> <span class="icon-phone-line cl-9 fs-20"><img
							src="/images/myimg/k4.PNG" /></span>
						<p class="fs-12 lh-1p2">
							下<br>载<br>APP
						</p>
					</a>
				</div>
				<div class="action-totop">
					<span class="icon-triangle-block cl-f fs-11">&#xe957;</span>
					<p>TOP</p>
				</div>
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
						<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">新手指南</span>
							<div>
								<a target="_blank" class="hover cl-6" href="#">新用户注册</a>
							</div>
							<div>
								<a target="_blank" class="hover cl-6" href="#">购物流程</a>
							</div>
							<div>
								<a target="_blank" class="hover cl-6" href="#">积分制度</a>
							</div></li>
						<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">支付与配送</span>
							<div>
								<a target="_blank" class="hover cl-6" href="#">验货与签收</a>
							</div>
							<div>
								<a target="_blank" class="hover cl-6" href="#">配送范围</a>
							</div>
							<div>
								<a target="_blank" class="hover cl-6" href="#">支付方式</a>
							</div></li>
						<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">售后服务</span>
							<div>
								<a target="_blank" class="hover cl-6" href="#">发票制度</a>
							</div>
							<div>
								<a target="_blank" class="hover cl-6" href="#">退换货流程</a>
							</div>
							<div>
								<a target="_blank" class="hover cl-6" href="#">7天无理由退换货</a>
							</div></li>
						<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">个人中心</span>
							<div>
								<a target="_blank" class="hover cl-6" href="#">收入管理</a>
							</div>
							<div>
								<a target="_blank" class="hover cl-6" href="#">我的订单</a>
							</div>
							<div>
								<a target="_blank" class="hover cl-6" href="#">我的等级</a>
							</div></li>
						<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">了解拾贝</span>
							<div>
								<a target="_blank" class="hover cl-6" href="#">关于拾贝</a>
							</div>
							<div>
								<a target="_blank" class="hover cl-6" href="#">联系我们</a>
							</div>
							<div>
								<a target="_blank" class="hover cl-6" href="#">拾贝网隐私政策</a>
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
		<style type="text/css">
.copyRightA {
	color: #999;
}

.copyRightA:hover {
	color: #fff;
}
</style>
		<script>
        $(function(){
            //频道 tab切换
            $(".my_tab").click(function(){
                var tabId = $(this).attr("data-id");
                $(this).addClass('on-click');
                $(this).siblings().removeClass('on-click');

                $("#my_tab_"+tabId).removeClass("dn");
                $("#my_tab_"+tabId).siblings(".my_tab_content").addClass('dn');

                //tablazy 图片加载
                let id = "#my_tab_"+ tabId + ' img'
                let slidingImgs = $(id);
                for (let i = 0; i < slidingImgs.length; i++) {
                    // 遍历操作
                    if(slidingImgs[i].getAttribute('data-srctaplazy')){
                        slidingImgs[i].src = slidingImgs[i].getAttribute('data-srctaplazy');
                        slidingImgs[i].removeAttribute('data-srctaplazy');
                    }
                }
            });
        });

        // 懒加载
        lazyLoading();

        // 菜单
        mouseenterAndTab();
        
        $(function(){

         
            getCartNum();

            //公共：签到
            $('.checkin').on('click',function(){
                $.ajax({
                    type: "post",
                    url:"/ajax/login",
                    data: {},
                    dataType: "json",
                    success: function(data) {
                        if(parseInt(data.status) == 404){
                            window.location.href = data.info;
                        }else{
                            alert(data.info);
                        }
                    },error:function(){
                        alert('签到失败');
                    }
                });
            });

        });

        //获取购物车的数量
        function getCartNum(){
            var num = getCookie('gwshoppingcart');
            if(num == null){
                //公共：购物车数量统计
                $.ajax({
                    type: "get",
                    url:"/ajax/cart.php?act=count",
                    dataType: "json",
                    success: function(data) {
                        if( parseInt(data.status) == 200 && parseInt(data.list_number)>0){
                            $('.cart_num').addClass('bc-rd-d pd-0005').html(data.list_number);
                        }
                    }
                });
            }
            if(num >0 ){
                $('.cart_num').addClass('bc-rd-d pd-0005').html(num);
            }
        }

        function getCookie(name) {
            var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
            if(arr=document.cookie.match(reg))
                return unescape(arr[2]);
            else
                return null;
        }

        // 进度条
        $('.progress-box').progress();

    </script>
</body>
</html>
<link
	href="https://bnmpstyle.bookuu.com/www/css/jcountdown/jcountdown.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript">

    // 锚点
    $('.anchor-action li').anchor();
   
    $(function(){
        // banner
        $('.flexslider.banner').flexslider({
            animation: "slide",
            start: function(slider){
            }
        });


    });

    //用户信息
    $(function(){
        //店铺信息
        $.ajax({
            type: "post",
            url: "/ajax/shop.php",
            dataType: "json",
            success: function (data) {
                shop_str = '';
                if(data.code == "0000"){
                    shop_name = data.info.shop_name;
                    shop_demo = data.info.shop_demo;
                    shop_signs = data.info.shop_signs;
                }
                $("#www_user_shop_signs").attr('src',shop_signs);
                $("#www_user_shop_signs").attr('alt',shop_demo);
                $("#www_user_shop_name").html(shop_name);


                //分享
                window._bd_share_config = {
                    common : {
                        bdSnsKey :{"tsina":"1573124136"},
                        bdText : shop_name,
                        bdDesc : shop_demo,
                        bdUrl : location.href,
                        bdPic : shop_signs,
                    },
                    share : [{
                        "bdSize" : 16
                    }]
                }
                with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];

                $("#www_pc_title").html(data.info.pc_title);
            },
            complete: function (){

            }
        });
//        /*
        //限时抢购信息
        $.ajax({
            type: "post",
            url: "/ajax/rushtime.php",
            dataType: "json",
            success: function (data) {
                var rs_str = '';
                if(data.code == "0000"){
                    if(data.info.isstart != 0 && data.info.xsqg_limit){
                        
                        for (var i=0;i<list.length;i++)
                        {
                            rs_str += '<li class="ta-ct scale-box">';
                            rs_str += '<div class="mg-5 mouseenter mouseleave">';
                            rs_str += '<div class="oh scale pd-10">';
                            rs_str += '<a class="db square-box one-one bgimg lazyload hidden" target="_blank" data-bgimg="background-image: url('+ list[i].goods_pic_w210q75 +');" href="/rushbuy.php?fromid='+ list[i].goods_id +'&stime='+ data.info.dqqg_time +'"></a>';
                            rs_str += '</div>';
                            rs_str += '<div class="context">';
                            rs_str += '<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="/rushbuy.php?fromid=' + list[i].goods_id +'&stime=' + data.info.dqqg_time +'">' + list[i].goods_name +'</a>';
                            rs_str += '<p class="fs-12 cl-9 lh-25 to-hd">';
                            if(list[i].spuinfo){
//                                rs_str += list[i].spuinfo.2.val;
                            }
                            rs_str += '</p>';
                            rs_str += '<div>';
                            rs_str += '<span class="fs-16 cl-rd-l ">¥';
                            if(list[i].activity_price){
                                rs_str += list[i].activity_price;
                            }else{
                                rs_str += list[i].activity.single.activity_price;
                            }

                            rs_str += '</span>';
                            rs_str += '<span class="cl-9">|</span>';
                            rs_str += '<del class="fs-12 cl-9">¥'+ list[i].market_price +'</del>';
                            rs_str += '</div></div></div></li>';
                        }
              
                        script.src = url+'?'+'time='+Date.parse(new Date());
                        document.body.appendChild(script);

                    
                    }
                }
            },
            complete: function (){

            }
        });
    });

</script>