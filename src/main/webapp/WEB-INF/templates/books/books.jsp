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
<link rel="stylesheet" type="text/css" href="/css/cart/all.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/1.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/2.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/3.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/4.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/bootstrap-theme.min.css" />
<script type="text/javascript" src="/js/js/less.min.js"></script>
<script type="text/javascript" src="/js/js/first.js"></script>
<script type="text/javascript" src="/js/js/bootstrap.min.js"></script>
<!-- FlexSlider -->
<link rel="stylesheet" type="text/css" href="/css/cart/5.css" />
<script type="text/javascript" src="/js/2.js"></script>
<meta name="baidu-site-verification" content="s3QQaARPSL" />
<title id="www_pc_title">书海拾贝</title>
<style type="text/css">
 img8{
  width:100px;height:100px;
 }
/*  img8:hover{
 
    width:150px;height:150px;
 } */
 table{
   width:100%;
   height: 100%;
 }
 td{
   text-align:center;
   height:50px;
 
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
<!-- 
			<div class="personal-list-box bd-1-e8 fl">
			
			</div> -->
			<div class="personal-list-item ml-10 bd-1-e8 fl"
				style="font-family: 宋体">
				<ul>
					<li class="list-item active">
						<div class="mycolle-info mb-20">
							<h3 class="list-item-title bb-1-e8 mb-20">图书首页</h3>
							<div class="goodlist">
								<div class="mycolle-empty ta-ct">
		
				<table class="table table-bordered table-striped table-hover" border="0" cellspacing="0" cellpadding="0">
					<bean:size name="requestScope.partBooksList" id="count" />
					<c:forEach items="${requestScope.booksList }" var="books"
											varStatus="statu">
						<!-- begin -->
						<c:if test="${statu.count eq 5 || (statu.count-1) % 4 eq 0}">
						<tr>
						</c:if>
						<td>
						<table>
							 <tr>
								<td>
								<div><img id="img8" alt="src not found" src="${books.booksImages }" width="20%"></div>
								                 <div><br><h3 style="height:40px";>&nbsp;${books.booksName }</h3>
												作者：${books.booksWriter }<br>
												出版社：${books.booksConcern }<br>
												日期：<fmt:formatDate value="${books.booksConcerndate }"
														pattern="yyyy-MM-dd" /><br>
												     &nbsp;￥：${books.booksPrice }
												    &nbsp;库存：${books.booksNum }<br>
								
								             <a style="color:red"; href="${pageContext.request.contextPath }/cart/insert?booksId=${books.booksId}" >加入购物车</a>
												
												<a style="color:red"; href="${pageContext.request.contextPath }/collection/insert?booksId=${books.booksId}">我要收藏</a></div>
											</td><br><br>	
								
							 </tr>
							</table>
						</td>
						<c:if test="${statu.count % 4 eq 0 || statu.count eq 4}">
						</tr>	
						</c:if>

						<!-- end -->
				        	</c:forEach>
				     </table>
			
		         </tr>
	          </table><br><br><br><br>
    
									
									
									<div class="container" align="center">
										共<a class="text-info">${page.total }</a>条记录 &nbsp;&nbsp; 当前页是<a
											class="text-info">${page.pageNum }</a>&nbsp;&nbsp; 总<a
											class="text-info">${page.pages}</a>页&nbsp;&nbsp;
										<c:if test="${page.hasPreviousPage}">
											<a class="text-primary" href="/books/findAll?pn=${page.prePage}">上一页</a>
										</c:if>
										<c:if test="${!page.hasPreviousPage}">上一页</c:if>
										<c:if test="${page.hasNextPage}">
											<a class="text-primary "href="/books/findAll?pn=${page.nextPage}">下一页</a>
										</c:if>
										<c:if test="${! page.hasNextPage}">下一页</c:if>
									</div>



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
			<div class="cb"></div>
		</div>
	


	<!-- 底部 -->
	<div class="footer">
		<!-- tag -->
		<div class="tag">
			<ul class="clearfix">
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/images/img/zheng.PNG" width="50" height="50"
					class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场正品</p>
						<p>出版社直采·博库正品</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/images/img/sheng.PNG" alt="" width="50" height="50"
					class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场满59包邮</p>
						<p>惊喜不断·让利多多</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/images/img/huo.PNG" alt="" width="50" height="50"
					class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">门店自取</p>
						<p>就近取货·方式灵活</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/images/img/you.PNG" alt="" width="50" height="50"
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
						<a target="_blank" class="hover cl-6"
							href="/新用户注册">新用户注册</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6"
							href="/购物流程">购物流程</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6"
							href="/积分制度">积分制度</a>
					</div></li>
				<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">支付与配送</span>
					<div>
						<a target="_blank" class="hover cl-6"
							href="/卡充值说明">IC卡充值说明</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6"
							href="/验货与签收">验货与签收</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6"
							href="/配送范围">配送范围</a>
					</div></li>
				<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">售后服务</span>
					<div>
						<a target="_blank" class="hover cl-6"
							href="/发票制度">发票制度</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6"
							href="/退换货流程">退换货流程</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6"
							href="/天无理由退换货">7天无理由退换货</a>
					</div></li>
				<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">个人中心</span>
					<div>
						<a target="_blank" class="hover cl-6"
							href="/店铺设置">店铺设置</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6"
							href="/团队管理">团队管理</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6"
							href="收入管理">收入管理</a>
					</div></li>
				<li class="lh-30 wd-20p fl"><span class="db fs-16 lh-40 ">了解拾贝</span>
					<div>
						<a target="_blank" class="hover cl-6"
							href="/关于博库">关于拾贝</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6"
							href="/联系我们">联系我们</a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6"
							href="/博库网隐私政策">拾贝网隐私政策</a>
					</div></li>
			</ul>
			<div class="code-box fr">
				<ul class="clearfix">
					<li class="cl-6 lh-30 ta-ct wd-50p fl">
						<p class="fs-16 lh-40 ">手机拾贝</p> <a><img
							src="/images/img/er.PNG" align="" width="105" height="105"
							class="db hidden bd-1-d ma"></a>
						<p class="lh-30">下载手机客户端</p>
					</li>
					<li class="cl-6 lh-30 ta-ct wd-50p fl">
						<p class="fs-16 lh-40 ">关注微信</p> <img src="/images/img/er1.PNG"
						align="" width="105" height="105" class="db hidden bd-1-d ma">
						<p class="lh-30">关注官方微信</p>
					</li>
				</ul>
			</div>
		</div>

	</div>
	</div>
	<!-- copyright -->

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