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
					欢迎，<label name="userName"></label>用户登录成功！ <span
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
		<!-- 分类 -->
		<div class="nav-box">
			<div class="type fl public"  style="margin-left: 350px">
				<a target="_blank" class="db cl-f title" href="#"><span
					class="icon-type-line cl-f mr-10 pr tp-2"><img
						src="/images/myimg/y1.PNG"></span>所有商品分类</a>

				<!-- 导航 -->
				<div class="wd-1200 ma pr">
					<div class="menu-hover public">
						<!-- 菜单 -->
						<!-- 公共 菜单 展示页 -->
						<div class="menu fl mouseenter-box">
							<div class="mouseenter mouseleave">
								<div class="title">
									<label
										style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
									<a target="_blank" href="#" class="cl-f lh-40 db">文学艺术</a>
									<div class="triangle-patch">
										<span class="icon-triangle-block2">&#xe958;</span>
									</div>
									<div class="patch">
										<span class="icon-arrow-line2"><img
											src="/images/myimg/y2.PNG"></span>
									</div>
								</div>
								<ul>

									<div class="bb-1-e pb-5">
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">村上春树</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">东野圭吾</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">诺贝尔文学奖</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">茅盾文学奖</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">明朝那些事儿</a>
										<a target="_blank" href="#"
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
												<a target="_blank" href="#" class="hover fl mr-15">中国古诗词</a>
												<a target="_blank" href="#" class="hover fl mr-15">中国现当代诗歌</a>
												<a target="_blank" href="#" class="hover fl mr-15">外国诗歌</a>
												<a target="_blank" href="#" class="hover fl mr-15">中国古代随笔</a>
												<a target="_blank" href="#" class="hover fl mr-15">中国现当代随笔</a>
												<a target="_blank" href="#" class="hover fl mr-15">外国随笔</a>
												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>
										<li class="clearfix fs-13 lh-20">
											<div class="wd-110 fl ">
												<a target="_blank" href="/search.php?cid=1019"
													class="hover fl mr-15 fw-bd">小说</a>
												<div class="cb"></div>
											</div>
											<div class="wd-650 cl-6 fl" style="width: 650px;">
												<a target="_blank" href="#" class="hover fl mr-15">名家名作</a>
												<a target="_blank" href="#" class="hover fl mr-15">中国古典小说</a>
												<a target="_blank" href="#" class="hover fl mr-15">四大名著</a>
												<a target="_blank" href="#" class="hover fl mr-15">世界名著</a>
												<a target="_blank" href="#" class="hover fl mr-15">外国小说</a>
												<a target="_blank" href="#" class="hover fl mr-15">都市情感</a>
												<a target="_blank" href="#" class="hover fl mr-15">武侠小说</a>
												<a target="_blank" href="#" class="hover fl mr-15">侦探/悬疑/推理</a>

												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>
										<li class="clearfix fs-13 lh-20">
											<div class="wd-110 fl ">
												<a target="_blank" href="/search.php?cid=1020"
													class="hover fl mr-15 fw-bd">青春文学</a>
												<div class="cb"></div>
											</div>
											<div class="wd-650 cl-6 fl" style="width: 650px;">
												<a target="_blank" href="#" class="hover fl mr-15">校园</a> <a
													target="_blank" href="#" class="hover fl mr-15">爱情/情感</a> <a
													target="_blank" href="#" class="hover fl mr-15">叛逆/成长</a> <a
													target="_blank" href="#" class="hover fl mr-15">娱乐/偶像</a> <a
													target="_blank" href="#" class="hover fl mr-15">爆笑/无厘头</a>
												<a target="_blank" href="#" class="hover fl mr-15">玄幻</a> <a
													target="_blank" href="#" class="hover fl mr-15">悬疑/惊悚</a> <a
													target="_blank" href="#" class="hover fl mr-15">穿越/重生/架空</a>
												<a target="_blank" href="#" class="hover fl mr-15">古代言情</a>
												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>

									</div>

								</ul>
							</div>
							<div class="mouseenter mouseleave">
								<div class="title">
									<label
										style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
									<a target="_blank" href="#" class="cl-f lh-40 db">少儿童书 </a>
									<div class="triangle-patch">
										<span class="icon-triangle-block2">&#xe958;</span>
									</div>
									<div class="patch">
										<span class="icon-arrow-line2"><img
											src="/images/myimg/y2.PNG"></span>
									</div>
								</div>
								<ul>

									<div class="bb-1-e pb-5">
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">淘气包马小跳</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">沈石溪动物小说</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">曹文轩</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">国际大奖小说</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">小猪佩奇</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">赛车总动员</a>
										<div class="cb"></div>
									</div>

									<div class="minh-215 mb-5">
										<li class="clearfix fs-13 lh-20">
											<div class="wd-110 fl ">
												<a target="_blank" href="#" class="hover fl mr-15 fw-bd">0-2岁</a>
												<div class="cb"></div>
											</div>
											<div class="wd-650 cl-6 fl" style="width: 650px;">
												<a target="_blank" href="#" class="hover fl mr-15">启蒙认知</a>
												<a target="_blank" href="#" class="hover fl mr-15">益智游戏</a>
												<a target="_blank" href="#" class="hover fl mr-15">入园准备</a>
												<a target="_blank" href="#" class="hover fl mr-15">国学启蒙</a>
												<a target="_blank" href="#" class="hover fl mr-15">科普百科</a>
												<a target="_blank" href="#" class="hover fl mr-15">艺术课堂</a>
												<a target="_blank" href="#" class="hover fl mr-15">儿童文学</a>
												<a target="_blank" href="#" class="hover fl mr-15">少儿英语</a>
												<a target="_blank" href="#" class="hover fl mr-15">手工制作</a>
												<a target="_blank" href="#" class="hover fl mr-15">童话寓言</a>
												<a target="_blank" href="#" class="hover fl mr-15">成语故事</a>
												<a target="_blank" href="#" class="hover fl mr-15">图画故事</a>
												<a target="_blank" href="#" class="hover fl mr-15">探案历险</a>
												<a target="_blank" href="#" class="hover fl mr-15">童谣</a>
												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>
										<li class="clearfix fs-13 lh-20">
											<div class="wd-110 fl ">
												<a target="_blank" href="#" class="hover fl mr-15 fw-bd">3-6岁</a>
												<div class="cb"></div>
											</div>
											<div class="wd-650 cl-6 fl" style="width: 650px;">
												<a target="_blank" href="#" class="hover fl mr-15">启蒙认知</a>
												<a target="_blank" href="#" class="hover fl mr-15">益智游戏</a>
												<a target="_blank" href="#" class="hover fl mr-15">入学准备</a>
												<a target="_blank" href="#" class="hover fl mr-15">国学启蒙</a>
												<a target="_blank" href="#" class="hover fl mr-15">科普百科</a>
												<a target="_blank" href="#" class="hover fl mr-15">艺术课堂</a>
												<a target="_blank" href="#" class="hover fl mr-15">儿童文学</a>
												<a target="_blank" href="#" class="hover fl mr-15">少儿英语</a>
												<a target="_blank" href="#" class="hover fl mr-15">手工制作</a>
												<a target="_blank" href="#" class="hover fl mr-15">童话寓言</a>
												<a target="_blank" href="#" class="hover fl mr-15">成语故事</a>
												<a target="_blank" href="#" class="hover fl mr-15">探案历险</a>
												<a target="_blank" href="#" class="hover fl mr-15">卡通/动漫/图画书</a>
												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>
										<li class="clearfix fs-13 lh-20">
											<div class="wd-110 fl ">
												<a target="_blank" href="#" class="hover fl mr-15 fw-bd">7-10岁</a>
												<div class="cb"></div>
											</div>
											<div class="wd-650 cl-6 fl" style="width: 650px;">
												<a target="_blank" href="#" class="hover fl mr-15">益智游戏</a>
												<a target="_blank" href="#" class="hover fl mr-15">国学启蒙</a>
												<a target="_blank" href="#" class="hover fl mr-15">艺术课堂</a>
												<a target="_blank" href="#" class="hover fl mr-15">儿童文学</a>
												<a target="_blank" href="#" class="hover fl mr-15">少儿英语</a>
												<a target="_blank" href="#" class="hover fl mr-15">手工制作</a>
												<a target="_blank" href="#" class="hover fl mr-15">童话寓言</a>
												<a target="_blank" href="#" class="hover fl mr-15">成语故事</a>
												<a target="_blank" href="#" class="hover fl mr-15">探案历险</a>
												<a target="_blank" href="#" class="hover fl mr-15">卡通/动漫/图画书</a>
												<a target="_blank" href="#" class="hover fl mr-15">励志/成长</a>
												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>
								</ul>
							</div>
							<div class="mouseenter mouseleave">
								<div class="title">
									<label
										style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
									<a target="_blank" href="#" class="cl-f lh-40 db">人文社科</a>
									<div class="triangle-patch">
										<span class="icon-triangle-block2">&#xe958;</span>
									</div>
									<div class="patch">
										<span class="icon-arrow-line2"><img
											src="/images/myimg/y2.PNG"></span>
									</div>
								</div>
								<ul>

									<div class="bb-1-e pb-5">
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">甲骨文丛书</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">汉译世界学术名著丛书</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">中华经典名著全本全注全译丛书</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">轻与重文丛</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">基督教经典译丛</a>
										<div class="cb"></div>
									</div>

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
												<a target="_blank" href="#" class="hover fl mr-15">地域文化</a>
												<a target="_blank" href="#" class="hover fl mr-15">民族文化</a>
												<a target="_blank" href="#" class="hover fl mr-15">文化事业</a>
												<a target="_blank" href="#" class="hover fl mr-15">文化史</a> <a
													target="_blank" href="#" class="hover fl mr-15">文化理论</a> <a
													target="_blank" href="#" class="hover fl mr-15">文化随笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">文化研究</a> <a
													target="_blank" href="#" class="hover fl mr-15">非物质文化遗产</a>
												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>
										<li class="clearfix fs-13 lh-20">
											<div class="wd-110 fl ">
												<a target="_blank" href="#" class="hover fl mr-15 fw-bd">哲学/宗教</a>
												<div class="cb"></div>
											</div>
											<div class="wd-650 cl-6 fl" style="width: 650px;">
												<a target="_blank" href="#" class="hover fl mr-15">中国哲学</a>
												<a target="_blank" href="#" class="hover fl mr-15">西方哲学</a>
												<a target="_blank" href="#" class="hover fl mr-15">哲学史</a> <a
													target="_blank" href="#" class="hover fl mr-15">哲学总论</a> <a
													target="_blank" href="#" class="hover fl mr-15">美学</a> <a
													target="_blank" href="#" class="hover fl mr-15">伦理学</a> <a
													target="_blank" href="#" class="hover fl mr-15">逻辑学</a> <a
													target="_blank" href="#" class="hover fl mr-15">宗教理论</a> <a
													target="_blank" href="#" class="hover fl mr-15">佛教</a> <a
													target="_blank" href="#" class="hover fl mr-15">基督教</a> <a
													target="_blank" href="#" class="hover fl mr-15">伊斯兰教</a> <a
													target="_blank" href="#" class="hover fl mr-15">道教</a> <a
													target="_blank" href="#" class="hover fl mr-15">其他宗教</a>
												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>

										</li>
									</div>

									<div class="mt-20 clearfix">
										<a target="_blank" href="#"> <img data-src="#" alt="知觉之门"
											width="220" class="db mr-20 fl lazyimg">
										</a> <a target="_blank" href="#"> <img data-src="#"
											alt="半小时漫画中国史" width="220" class="db mr-20 fl lazyimg">
										</a> <a target="_blank" href="#"> <img data-src="#"
											alt="地理学与生活" width="220" class="db mr-20 fl lazyimg">
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
											src="/images/myimg/y2.PNG"></span>
									</div>
								</div>
								<ul>

									<div class="bb-1-e pb-5">
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">巴菲特</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">彼得林奇</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">吴晓波</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">乔布斯</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">西方经济金融前沿译丛</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">特劳特经典丛书</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">企业成长战略</a>

										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">马云</a>
										<div class="cb"></div>
									</div>

									<div class="minh-215 mb-5">
										<li class="clearfix fs-13 lh-20">
											<div class="wd-110 fl ">
												<a target="_blank" href="#" class="hover fl mr-15 fw-bd">经济</a>
												<div class="cb"></div>
											</div>
											<div class="wd-650 cl-6 fl" style="width: 650px;">
												<a target="_blank" href="#" class="hover fl mr-15">经济史</a> <a
													target="_blank" href="#" class="hover fl mr-15">经济学理论</a> <a
													target="_blank" href="#" class="hover fl mr-15">行业经济</a> <a
													target="_blank" href="#" class="hover fl mr-15">中国经济</a> <a
													target="_blank" href="#" class="hover fl mr-15">世界经济</a> <a
													target="_blank" href="#" class="hover fl mr-15">经济法</a> <a
													target="_blank" href="#" class="hover fl mr-15">统计学</a> <a
													target="_blank" href="#" class="hover fl mr-15">审计</a> <a
													target="_blank" href="#" class="hover fl mr-15">财政税收</a> <a
													target="_blank" href="#" class="hover fl mr-15">区域经济</a> <a
													target="_blank" href="#" class="hover fl mr-15">保险</a> <a
													target="_blank" href="#" class="hover fl mr-15">金融</a> <a
													target="_blank" href="#" class="hover fl mr-15">贸易政策</a> <a
													target="_blank" href="#" class="hover fl mr-15">其它</a>
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
												<a target="_blank" href="#" class="hover fl mr-15">会计</a> <a
													target="_blank" href="#" class="hover fl mr-15">MBA</a>
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
												<a target="_blank" href="#" class="hover fl mr-15">基金</a> <a
													target="_blank" href="#" class="hover fl mr-15">期货</a> <a
													target="_blank" href="#" class="hover fl mr-15">外汇</a> <a
													target="_blank" href="#" class="hover fl mr-15">彩票</a> <a
													target="_blank" href="#" class="hover fl mr-15">不动产</a> <a
													target="_blank" href="#" class="hover fl mr-15">税务</a> <a
													target="_blank" href="#" class="hover fl mr-15">黄金</a> <a
													target="_blank" href="#" class="hover fl mr-15">投资指南</a> <a
													target="_blank" href="#" class="hover fl mr-15">理财技巧</a>
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
												<a target="_blank" href="#" class="hover fl mr-15">思维与谋略</a>
												<a target="_blank" href="#" class="hover fl mr-15">性格与习惯</a>
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
									<label
										style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
									<a target="_blank" href="#" class="cl-f lh-40 db">生活时尚</a>
									<div class="triangle-patch">
										<span class="icon-triangle-block2">&#xe958;</span>
									</div>
									<div class="patch">
										<span class="icon-arrow-line2"><img
											src="/images/myimg/y2.PNG"></span>
									</div>
								</div>
								<ul>

									<div class="bb-1-e pb-5">
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">花视觉</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">跟着君之学烘焙</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">亲亲乐读系列</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">断舍离</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">跑步</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">养兰</a>
										<div class="cb"></div>
									</div>

									<div class="minh-215 mb-5">
										<li class="clearfix fs-13 lh-20">
											<div class="wd-110 fl ">
												<a target="_blank" href="#" class="hover fl mr-15 fw-bd">烹饪美食</a>
												<div class="cb"></div>
											</div>
											<div class="wd-650 cl-6 fl" style="width: 650px;">
												<a target="_blank" href="#" class="hover fl mr-15">西餐</a> <a
													target="_blank" href="#" class="hover fl mr-15">日韩料理</a> <a
													target="_blank" href="#" class="hover fl mr-15">烘焙甜品</a> <a
													target="_blank" href="#" class="hover fl mr-15">饮食文化</a> <a
													target="_blank" href="#" class="hover fl mr-15">家常菜谱</a>
												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>

										<div class="cb"></div>
										</li>
										<li class="clearfix fs-13 lh-20">
											<div class="wd-110 fl ">
												<a target="_blank" href="#" class="hover fl mr-15 fw-bd">休闲娱乐</a>
												<div class="cb"></div>
											</div>
											<div class="wd-650 cl-6 fl" style="width: 650px;">
												<a target="_blank" href="#" class="hover fl mr-15">消遣游戏</a>
												<a target="_blank" href="#" class="hover fl mr-15">钓鱼</a> <a
													target="_blank" href="#" class="hover fl mr-15">宠物</a> <a
													target="_blank" href="#" class="hover fl mr-15">手工/DIY</a>
												<a target="_blank" href="#" class="hover fl mr-15">杂志</a> <a
													target="_blank" href="#" class="hover fl mr-15">期刊</a> <a
													target="_blank" href="#" class="hover fl mr-15">报纸</a>
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
										<li class="clearfix fs-13 lh-20"></li>
									</div>

								</ul>
							</div>
							<div class="mouseenter mouseleave">
								<div class="title">
									<label
										style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
									<a target="_blank" href="#" class="cl-f lh-40 db">科技教育</a>
									<div class="triangle-patch">
										<span class="icon-triangle-block2">&#xe958;</span>
									</div>
									<div class="patch">
										<span class="icon-arrow-line2"><img
											src="/images/myimg/y2.PNG"></span>
									</div>
								</div>
								<ul>

									<div class="bb-1-e pb-5">
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">新课标</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">黄冈小状元</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">日有所诵</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">小学教材全解</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">星火英语</a> <a
											target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">和秋叶一起学</a>
										<a target="_blank" href="#"
											class="bc-bl cl-f pd-0005 bd-1-bl-d mr-10 fl mb-5">时间简史</a>
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
												<a target="_blank" href="#" class="hover fl mr-15">数据库</a> <a
													target="_blank" href="#" class="hover fl mr-15">操作系统</a> <a
													target="_blank" href="#" class="hover fl mr-15">网页制作</a> <a
													target="_blank" href="#" class="hover fl mr-15">辅助设计</a> <a
													target="_blank" href="#" class="hover fl mr-15">图形图像</a> <a
													target="_blank" href="#" class="hover fl mr-15">多媒体</a> <a
													target="_blank" href="#" class="hover fl mr-15">网络技术</a> <a
													target="_blank" href="#" class="hover fl mr-15">PC入门</a> <a
													target="_blank" href="#" class="hover fl mr-15">新手学电脑</a> <a
													target="_blank" href="#" class="hover fl mr-15">Office</a>
												<a target="_blank" href="#" class="hover fl mr-15">人工智能</a>
												<a target="_blank" href="#" class="hover fl mr-15">组装与维修</a>
												<a target="_blank" href="#" class="hover fl mr-15">单片机</a> <a
													target="_blank" href="#" class="hover fl mr-15">软件工程</a> <a
													target="_blank" href="#" class="hover fl mr-15">计算机原理</a> <a
													target="_blank" href="#" class="hover fl mr-15">计算机考试</a> <a
													target="_blank" href="#" class="hover fl mr-15">影印版</a> <a
													target="_blank" href="#" class="hover fl mr-15">期刊</a> <a
													target="_blank" href="#" class="hover fl mr-15">其它</a>
												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>
										<li class="clearfix fs-13 lh-20">
											<div class="wd-110 fl ">
												<a target="_blank" href="/search.php?cid=1047"
													class="hover fl mr-15 fw-bd">科普读物</a>
												<div class="cb"></div>
											</div>
											<div class="wd-650 cl-6 fl" style="width: 650px;">
												<a target="_blank" href="#" class="hover fl mr-15">人类故事</a>
												<a target="_blank" href="#" class="hover fl mr-15">生物世界</a>
												<a target="_blank" href="#" class="hover fl mr-15">科学世界</a>
												<a target="_blank" href="#" class="hover fl mr-15">生态环境</a>
												<a target="_blank" href="#" class="hover fl mr-15">宇宙知识</a>
												<a target="_blank" href="#" class="hover fl mr-15">百科知识</a>
												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>
										<li class="clearfix fs-13 lh-20">

											<div class="cb"></div>
										</li>
										<li class="clearfix fs-13 lh-20">
											<div class="wd-110 fl ">
												<a target="_blank" href="#" class="hover fl mr-15 fw-bd">工具书</a>
												<div class="cb"></div>
											</div>
											<div class="wd-650 cl-6 fl" style="width: 650px;">
												<a target="_blank" href="#" class="hover fl mr-15">汉语</a> <a
													target="_blank" href="#" class="hover fl mr-15">民族语</a> <a
													target="_blank" href="#" class="hover fl mr-15">英语</a> <a
													target="_blank" href="#" class="hover fl mr-15">百科全书/年鉴</a>
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
									<label
										style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
									<a target="_blank" href="#" class="cl-f lh-40 db">创意文具</a>
									<div class="triangle-patch">
										<span class="icon-triangle-block2">&#xe958;</span>
									</div>
									<div class="patch">
										<span class="icon-arrow-line2"><img
											src="/images/myimg/y2.PNG"></span>
									</div>
								</div>
								<ul>


									<div class="minh-215 mb-5">
										<li class="clearfix fs-13 lh-20">
											<div class="wd-110 fl ">
												<a target="_blank" href="#" class="hover fl mr-15 fw-bd">书写笔类</a>
												<div class="cb"></div>
											</div>
											<div class="wd-650 cl-6 fl" style="width: 650px;">
												<a target="_blank" href="#" class="hover fl mr-15">中性笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">钢笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">圆珠笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">铅笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">可擦笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">荧光笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">记号笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">白板笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">油漆笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">签字笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">针管笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">正姿笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">墨水/墨囊/补充液</a>
												<a target="_blank" href="#" class="hover fl mr-15">替芯/铅芯</a>
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
												<a target="_blank" href="#" class="hover fl mr-15">水彩笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">蜡笔/油画棒</a>
												<a target="_blank" href="#" class="hover fl mr-15">彩色铅笔</a>
												<a target="_blank" href="#" class="hover fl mr-15">绘图铅笔</a>
												<a target="_blank" href="#" class="hover fl mr-15">勾线笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">颜料</a> <a
													target="_blank" href="#" class="hover fl mr-15">画板/画架</a> <a
													target="_blank" href="#" class="hover fl mr-15">图画本/素描本</a>
												<a target="_blank" href="#" class="hover fl mr-15">铅画纸</a> <a
													target="_blank" href="#" class="hover fl mr-15">填色本</a> <a
													target="_blank" href="#" class="hover fl mr-15">其他画材</a>
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
												<a target="_blank" href="#" class="hover fl mr-15">毛笔</a> <a
													target="_blank" href="#" class="hover fl mr-15">字帖临摹纸</a> <a
													target="_blank" href="#" class="hover fl mr-15">水写布</a> <a
													target="_blank" href="#" class="hover fl mr-15">笔挂</a> <a
													target="_blank" href="#" class="hover fl mr-15">笔架/笔搁</a> <a
													target="_blank" href="#" class="hover fl mr-15">笔洗</a> <a
													target="_blank" href="#" class="hover fl mr-15">宣纸</a> <a
													target="_blank" href="#" class="hover fl mr-15">印泥</a> <a
													target="_blank" href="#" class="hover fl mr-15">笔帘</a> <a
													target="_blank" href="#" class="hover fl mr-15">墨汁</a> <a
													target="_blank" href="#" class="hover fl mr-15">文房四宝套装</a>
												<a target="_blank" href="#" class="hover fl mr-15">砚台</a>
												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>

										</li>
									</div>

								</ul>
							</div>
							<div class="mouseenter mouseleave">
								<div class="title">
									<label
										style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
									<a target="_blank" href="#" class="cl-f lh-40 db">生活美学</a>
									<div class="triangle-patch">
										<span class="icon-triangle-block2">&#xe958;</span>
									</div>
									<div class="patch">
										<span class="icon-arrow-line2"><img
											src="/images/myimg/y2.PNG"></span>
									</div>
								</div>
								<ul>


									<div class="minh-215 mb-5">
										<li class="clearfix fs-13 lh-20">
											<div class="wd-110 fl ">
												<a target="_blank" href="#" class="hover fl mr-15 fw-bd">茶</a>
												<div class="cb"></div>
											</div>
											<div class="wd-650 cl-6 fl" style="width: 650px;">
												<a target="_blank" href="#" class="hover fl mr-15">茶叶</a> <a
													target="_blank" href="#" class="hover fl mr-15">茶器</a> <a
													target="_blank" href="#" class="hover fl mr-15">茶衍生品</a>
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
												<a target="_blank" href="#" class="hover fl mr-15">香插</a> <a
													target="_blank" href="#" class="hover fl mr-15">香炉</a> <a
													target="_blank" href="#" class="hover fl mr-15">香管</a> <a
													target="_blank" href="#" class="hover fl mr-15">香品</a> <a
													target="_blank" href="#" class="hover fl mr-15">香衍生品</a> <a
													target="_blank" href="#" class="hover fl mr-15">套装</a>
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
												<a target="_blank" href="#" class="hover fl mr-15">花器</a> <a
													target="_blank" href="#" class="hover fl mr-15">花道用品</a>
												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>
									</div>

								</ul>
							</div>
							<div class="mouseenter mouseleave">
								<div class="title">
									<label
										style="background-image: url(https://bnmpstyle.bookuu.com/www/images/category.png);"></label>
									<a target="_blank" href="#" class="cl-f lh-40 db">影音原版</a>
									<div class="triangle-patch">
										<span class="icon-triangle-block2">&#xe958;</span>
									</div>
									<div class="patch">
										<span class="icon-arrow-line2"><img
											src="/images/myimg/y2.PNG"></span>
									</div>
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
												<a target="_blank" href="#" class="hover fl mr-15">Life
													& Entertainment休闲生活</a> <a target="_blank" href="#"
													class="hover fl mr-15">Fashion流行服饰</a> <a target="_blank"
													href="#" class="hover fl mr-15">Techology科技</a>

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
												<a target="_blank" href="#" class="hover fl mr-15">乐曲</a> <a
													target="_blank" href="#" class="hover fl mr-15">歌曲</a> <a
													target="_blank" href="#" class="hover fl mr-15">歌舞/音乐剧</a>
												<a target="_blank" href="#" class="hover fl mr-15">戏曲/曲艺</a>
												<a target="_blank" href="#" class="hover fl mr-15">电影</a> <a
													target="_blank" href="#" class="hover fl mr-15">电视剧</a> <a
													target="_blank" href="#" class="hover fl mr-15">纪录片</a> <a
													target="_blank" href="#" class="hover fl mr-15">教育片</a> <a
													target="_blank" href="#" class="hover fl mr-15">儿童影音</a>

												<div class="cb"></div>
											</div>
											<div class="cb"></div>
										</li>
									</div>

								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="nav fl">
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
	</div>
	</div>

	<!-- 首页导航交互 -->
	<div id="index-nav">
		<div class="wd-1200 ma">
			<a class="db logo-box fl" href="#"> <img data-src="#" alt=""
				width="210" class="db visible" src="#">
			</a>
			<!-- 搜索 -->
			<div class="fl search-box">
				<input type="text" placeholder="手机打开了分的积分" class="fl bd-n">
				<p class="fr icon-search-line cl-f fs-40"
					onclick="window.location.reload();"></p>
				<div class="cb"></div>
			</div>
			<div class="fr ta-rt">
				<a class="fs-16 bd-1-d br-4 pd-0030 db"><span
					class="icon-cart-block mr-10 cl-a9 pr tp-3 fs-18"> </span>我的购物车</a>
			</div>
			<div class="cb"></div>
		</div>
	</div>
	<div class="content">
		<div class="personal-center mt-20">

			<div class="personal-list-box bd-1-e8 fl">
				<div class="personal-title">个人中心</div>
				<ul class="personal-list-name bt-1-e8 pb-16">
					<li class="item"><a href="#">店铺设置</a></li>
					<li class="item"><a href="#">团队管理</a></li>
					<li class="item"><a href="#">收入管理</a></li>
				</ul>
				<ul class="personal-list-name bt-1-e8 pb-16">
					<li class="item active"><a href="#">我的信息</a></li>
					<li class="item"><a href="#">我的订单</a></li>
					<li class="item"><a href="#">我的优惠券</a></li>
					<li class="item"><a href="#">我的等级</a></li>
					<li class="item"><a href="#">我的积分</a></li>
					<li class="item"><a href="#">我的收藏</a></li>
					<li class="item"><a href="#">IC卡充值</a></li>
				</ul>
				<ul class="personal-list-name bt-1-e8 pb-16">
					<li class="item"><a href="#">我的收货地址</a></li>
					<li class="item active"><a href="#">个人设置</a></li>
					<li class="item active"><a href="#">官方消息</a></li>
				</ul>
			</div>
			 <div class="personal-list-item ml-10 bd-1-e8 fl" > 
				<h3 style="text-align: center">新书详细信息</h3>
				<table border="1"
					class="table table-bordered table-striped table-hover"
					style="text-align: center; margin-top: 50px;">
					<tr class="table-info" >
						<th>序号</th>
						<th >书本名称</th>
						<th>书本类型</th>
						<th >作者</th>
						<th >出版社</th>
						<!-- <th>时间</th> --> 
						<th>价格</th>
						<th>库存</th>
						<th style="width:150px;">图片</th>

					</tr>
					<c:forEach items="${requestScope.booksList2 }" var="books"
						varStatus="statu">
						<tr>
							<td>${statu.count }</td>
							<td>${books.booksName }</td>
							<td>${books.booksCategory.categoryName }</td>
							<td>${books.booksWriter }</td>
							<td>${books.booksConcern }</td>
							<%--  <td>${books.booksConcerndate }</td> --%>
							<td>${books.booksPrice }</td>
							<td>${books.booksNum }</td>
							<td ><img alt="src not found" src="${books.booksImages }"
								width="20%"></td>

						</tr>
					</c:forEach>
				</table>

			 </div> 
			<div class="cb"></div>
		</div>
		<div class="mt-10">
			<div class="page-number-group tcdPageCode fr"></div>
			<div class="cb"></div>
		</div>
	</div>
	</li>
	</ul>
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
	<!-- copyright -->

	<style type="text/css">
.copyRightA {
	color: #999;
}

.copyRightA:hover {
	color: #fff;
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
	</script>

	<script type='text/javascript' src='ZHCN' async='async'>
		
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

								$("#my_tab_" + tabId).removeClass("dn");
								$("#my_tab_" + tabId).siblings(
										".my_tab_content").addClass('dn');

								//tablazy 图片加载
								let id = "#my_tab_" + tabId + ' img'
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
			getCartNum();

			//公共：加入购物车

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

		// 进度条
		$('.progress-box').progress();
	</script>

	<script type="text/javascript">
		//dsx 懒加载
		$('.personal-list-item .list-item.active .goodlist-pic').layzload({
			imgshow : 300
		});
	</script>
</body>
</html>
