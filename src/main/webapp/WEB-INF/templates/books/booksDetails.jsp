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
    <link rel="stylesheet" type="text/css" href="/css/cart/details.css" /> 
  <link rel="stylesheet" type="text/css" href="/css/cart/all.css" />
   <link rel="stylesheet" type="text/css" href="/css/cart/1.css" />
  <link rel="stylesheet" type="text/css" href="/css/cart/2.css" />
  <link rel="stylesheet" type="text/css" href="/css/cart/3.css" />
   <link rel="stylesheet" type="text/css" href="/css/cart/4.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/5.css" />
<!-- <link rel="stylesheet" type="text/css" href="/css/address/address.css" /> -->
<script type="text/javascript" src="/webjars/jquery/3.2.1/dist/jquery.min.js"></script>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="/js/js/less.min.js"></script>
<script type="text/javascript" src="/js/js/first.js"></script>
<script type="text/javascript" src="/js/js/2.js"></script>
<!--  <style>
 	#divcss5{margin:0 auto} 
 </style>  -->
</head>

<body>
<br>


 <div class="book-essential-info">
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
                <img src="${requestScope.books.booksImages } " />
            </div>
            
            <div class="big_img">
                <img src="${requestScope.books.booksImages } " style=" width:650px; height:650px;" />
            </div>
            
            <span class="float"></span>
        </div>
        
	</div>        
</div>
	  
</div>
        <!-- <div class="evaluate">
                <span>顾客评分：</span>   
                <span>已有0人评论</span>
            </div> -->
    <h1 class="book-title">
        ${requestScope.books.booksName }
    </h1>
            <!-- Baidu Button BEGIN -->
				<div class="bdshare_t bds_tools get-codes-bdshare" id="bdshare" style="margin-left: 25px;" align="center">
                   <!--  <span class="bds_more">分享到：</span> -->
                    <a class="bds_qzone" href="javascript:;"></a>
                    <a class="bds_tsina" href="javascript:;"></a>
                    <a class="bds_tqq" href="javascript:;"></a>
                    <a class="bds_renren" href="javascript:;"></a>
                    <a class="bds_t163" href="javascript:;"></a>
                    <a class="shareCount" href="javascript:;"></a>
				</div>
     
        <!--{书籍封面 End}-->
        <!--{书籍销售信息 Start}-->
       <div class="book-sale-info">
            
            <div class="book-price">
                <p>
                    价格：<span class="yuan">
     					${requestScope.books.booksPrice }
                   </span>
                    <!--{tip：正常的显示内容为}-->
                    <!-- <span class="yuan">24</span><span class="cent">.98</span> -->
                </p>
                <p>
                    定&nbsp;&nbsp;价：<span class="old-price">${requestScope.books.booksPrice }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
            </form><br><br><br><br><br><br><br><br>
          </div>
          <div class="roduce" >
         
                    <th>书本简介</th>
                    
              <br><br>
             
            ${requestScope.books.booksIntroduce }
          </div>
         
   <!--一组或者多个商品，带标题 module_type=3 template_id=7 -->
            
			<div id="11" data-template-id="7" module-id="11" module-type="3" style="float:left">
				
				<div class="mb-20 mt-20 bc-f3 border-patch box-shadow scale-box" >
					<div class="lh-40 bc-f3 pd-0020 fs-18 fw-bd">猜你喜欢|<a  href="${pageContext.request.contextPath }/web/index" >首页</a></div>
					<div class="pt-5">
						<div class="flexslider product-six">
							<ul class="slides mouseenter-box">
                              
                              
								<li class="ta-ct">
									<div class="mg-5 mouseenter mouseleave">
										<div class="scale pd-10 oh pr">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(/images/myimg/my1.PNG);"
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
												data-bgimg="background-image: url(/images/myimg/my2.PNG);"
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
												data-bgimg="background-image: url(/images/myimg/my3.PNG);"
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
												data-bgimg="background-image: url(/images/myimg/my4.PNG);"
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
												data-bgimg="background-image: url(/images/myimg/my5.PNG);"
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
												data-bgimg="background-image: url(/images/myimg/my6.PNG);"
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
												data-bgimg="background-image: url(/images/myimg/my7.PNG);"
												target="_blank" href="#"></a>

											<div class="tip-box">
												<img
													src="https://media2.v.bookuu.com/activity/15/43/20190604154329224.png	">
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
												data-bgimg="background-image: url(/images/myimg/my8.PNG);"
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

		<!-- 底部 -->

	<!-- 	<!-- 底部 -->
		 <div class="footer">
			tag
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
  <style type="text/css">
.copyRightA {
	color: #999;
}

.copyRightA:hover {
	color: #fff;
}
</style>
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

			// 进度条
			$('.progress-box').progress();
		</script>
     
         </div>   
  
     
</body>
</html>