<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<title>书海拾贝</title>

<script src="/webjars/jquery/3.0.0/jquery.min.js"></script>
<link rel="stylesheet" href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/librarycss/foot.css" />
<link rel="stylesheet" type="text/css" href="/css/librarycss/daohang.css" />
<link rel="stylesheet" type="text/css" href="/css/librarycss/logo.css" />
<link rel="stylesheet" type="text/css" href="/css/librarycss/lunbo.css" /> 
<link rel="stylesheet" type="text/css" href="/css/librarycss/fenge.css" />
<script type="text/javascript" src="/js/libraryJs/foot.js"></script> 
<script type="text/javascript" src="/js/libraryJs/lunbo.js"></script>
</head>

<body>
	<!-- 头部 -->
	<div class="header bc-f">
		<!-- 顶部 小标题  登录信息-->
		<div class="bc-f5 ht-30 lh-30">
			<div class="wd-1200 ma fs-12 cl-6">
				<p class="fl">
					<a class="hover cl-6" href="${pageContext.request.contextPath }/user/tologin" target="_blank" title="登录">登录</a> 
					<span class="pd-0005 cl-c">|</span> 
					<a class="mr-30 hover cl-6" href="${pageContext.request.contextPath }/user/toregist" target="_blank" title="免费注册">免费注册</a> 
					<a class="hover cl-6" href="#" target="_blank" title="下载拾贝APP">下载拾贝APP</a>
				</p>
				<div class="fr">
					<a class="hover fr cl-6" title="联系客服">联系客服</a> 
					<span class="pd-0015 cl-c fr">|</span> 
					<a class="hover fr cl-6" href="${pageContext.request.contextPath }/book/showList" target="_blank" title="图书馆">图书馆</a> 
					<span class="pd-0015 cl-c fr">|</span>
				    <a class="hover fr cl-6" href="${pageContext.request.contextPath}/collection/items" target="_blank" title="收藏夹">收藏夹</a> 
				    <span class="pd-0015 cl-c fr">|</span>
					<a class="hover fr cl-6" href="${pageContext.request.contextPath }/web/index" target="_blank" title="首页">首页</a>
					<div class="cb"></div>
				</div>
				<div class="cb"></div>
			</div>
		</div>
		<!-- logo+搜索+购物车 -->
		<div class="wd-1200 ma">
			<div class="search-container" id="search-container">
				<div class="logo-container">
					<a class="db logo-box fl" href="#">
					 <img src="/images/library/logo.jpg" width="220" class="db" alt="logo" draggable="false" height="120" />
					</a>
					<div class="fl">
					<form action="/book/findbyName" method="post">
						<div class="input-group">
				            <input style="height:40px;width:500px;" type="text" class="form-control" 
				                    placeholder="搜索" name="search">
				            <span class="input-group-addon">
				            <input style="height:40px;width:70px;" class="alert alert-info" type="submit" value="搜索">
							</span>
				        </div>
				        </form>
						<div class="cb"></div>
					</div>
					
				</div>
			</div>
			<!-- 分类 -->
			
				</div>
				<div class="nav fl">
					<!--蓝色水平线-->
				</div>
				<div class="cb"></div>
			</div>
		

	
	<div class="content">
		<table class="table  table-striped table-bordered table-hover">
			<tr>
				<button type="button" class="btn btn-info" style="width: 150px">作者资料</button>
			</tr>
			<tr>
				<th width="20%">
					<p class="alert alert-info">作者姓名</p>
					<p class="alert alert-info">作者性别</p>
					<p class="alert alert-info">作者年龄</p>
					<p class="alert alert-info">作者国籍</p>
				</th>
				<th width="40%"><c:choose>
						<c:when test="${not empty requestScope.ylbook.ylbookWriterList }">
							<c:forEach items="${requestScope.ylbook.ylbookWriterList }"
								var="writer">
								<p class="alert alert-success">${writer.ylwriterName }</p>
								<p class="alert alert-success">${writer.ylwriterGender }</p>
								<p class="alert alert-success">${writer.ylwriterAge }</p>
								<p class="alert alert-success">${writer.ylwriterNationality }</p>
							</c:forEach>
						</c:when>
						<c:otherwise>
			    		     暂时没有查到作者信息！
			    	     </c:otherwise>
			 </c:choose>
			</th>
			</tr>
		</table>
		<table>
			<tr>
				<th>
					<button type="button" class="btn btn-warning" style="width: 150px">作者集结</button>
					<h2 style="color: black; font-family:"宋体";font-weight:bolder;">拾贝网的作家</h2>

					<p style="font-size: 16px;">这里是作家信息的集结地。
						拾贝网的作家个人资料全部聚集。想要了解拾贝网所有的作家， 请点击右下角。</p>

					<div class="text-right">
						<a
							href="${pageContext.request.contextPath }/admin/tologin">
							<button type="button" class="alert alert-warning">阅读更多</button>
						</a>
					</div>
				</th>
				<th><img src="/images/library/yellow.jpg" height=＂600px＂ width=＂491px＂ />
				</th>
			</tr>
		</table>

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
							<a class="db square-box one-one bgimg lazyload hidden"
								data-bgimg="background-image: url(/images/library/my1.PNG);"
								target="_blank" href="#"></a>


						</div>
						<div class="context">
							<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank"
								href="#">白夜行(精)</a>
							<div>
								<span class="fs-16 cl-rd-l">¥30.02</span> <span class="cl-9">|</span>
								<del class="fs-12 cl-9">¥39.50</del>
							</div>
						</div>
					</div>
				</li>
				<li class="ta-ct">
					<div class="mg-5 mouseenter mouseleave">
						<div class="scale pd-10 oh pr">
							<a class="db square-box one-one bgimg lazyload hidden"
								data-bgimg="background-image: url(/images/library/my2.PNG);"
								target="_blank" href="#"></a>

						</div>
						<div class="context">
							<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank"
								href="#">苏菲的世界(精)</a>
							<div>
								<span class="fs-16 cl-rd-l">¥17.68</span> <span class="cl-9">|</span>
								<del class="fs-12 cl-9">¥26.80</del>
							</div>
						</div>
					</div>
				</li>
				<li class="ta-ct">
					<div class="mg-5 mouseenter mouseleave">
						<div class="scale pd-10 oh pr">
							<a class="db square-box one-one bgimg lazyload hidden"
								data-bgimg="background-image: url(/images/library/my3.PNG);"
								target="_blank" href="#"></a>


						</div>
						<div class="context">
							<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank"
								href="#">读在大好时光</a>
							<div>
								<span class="fs-16 cl-rd-l">¥29.30</span> <span class="cl-9">|</span>
								<del class="fs-12 cl-9">¥38.00</del>
							</div>
						</div>
					</div>
				</li>
				<li class="ta-ct">
					<div class="mg-5 mouseenter mouseleave">
						<div class="scale pd-10 oh pr">
							<a class="db square-box one-one bgimg lazyload hidden"
								data-bgimg="background-image: url(/images/library/my4.PNG);"
								target="_blank" href="#"></a>


						</div>
						<div class="context">
							<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank"
								href="#">青春(韩寒文集典藏版)</a>
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
								data-bgimg="background-image: url(/images/library/my5.PNG);"
								target="_blank" href="#"></a>


						</div>
						<div class="context">
							<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank"
								href="#">了不起的盖茨比(精)</a>
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
								data-bgimg="background-image: url(/images/library/my6.PNG);"
								target="_blank" href="#"></a>


						</div>
						<div class="context">
							<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank"
								href="#">我们仨</a>
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
								data-bgimg="background-image: url(/images/library/my7.PNG);"
								target="_blank" href="#"></a>

							<div class="tip-box">
							</div>

						</div>
						<div class="context">
							<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank"
								href="#">时代广场的蟋蟀 不老泉文库</a>
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
							<a class="db square-box one-one bgimg lazyload hidden"
								data-bgimg="background-image: url(/images/library/my8.PNG);"
								target="_blank" href="#"></a>


						</div>
						<div class="context">
							<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank"
								href="#">爱探险的朵拉系列故事(第9辑相信有爱共4册)</a>
							<div>
								<span class="fs-16 cl-rd-l">¥21.50</span> <span class="cl-9">|</span>
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
			$(function() {
				//商品轮播 列表 - 大家都在看
				$('.flexslider.product-six').flexslider({
					animation : "slide",
					animationLoop : false,
					itemWidth : 200,
					itemMargin : 0,
					controlNav : ''
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
					src="/images/library/zheng.png" width="50" height="50"
					class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场正品</p>
						<p>出版社直采·博库正品</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/images/library/sheng.png" alt="" width="50" height="50"
					class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场满59包邮</p>
						<p>惊喜不断·让利多多</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/images/library/huo.png" alt="" width="50" height="50"
					class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">门店自取</p>
						<p>就近取货·方式灵活</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/images/library/hao.png" alt="" width="50" height="50"
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
						data-src="/images/library/app.jpg" width="105" height="105"
						class="db hidden bd-1-d ma">
						<p class="lh-30">下载手机客户</p>
					</li>
					<li class="cl-6 lh-30 ta-ct wd-50p fl">
						<p class="fs-16 lh-40 ">关注微信</p> <img
						data-src="/images/library/wx.jpg"  width="105" height="105"
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