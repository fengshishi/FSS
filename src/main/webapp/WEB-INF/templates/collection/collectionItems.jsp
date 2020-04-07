<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="/css/cart/all.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/1.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/2.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/3.css" />
<!-- 字体图标 -->
<link rel="stylesheet" type="text/css" href="/css/cart/4.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/5.css" />
<link rel="stylesheet" type="text/css" href="/css/address/module.css" />
<link rel="stylesheet" type="text/css" href="/css/address/address.css" />
<script type="text/javascript" src="/webjars/jquery/3.2.1/dist/jquery.min.js"></script>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="/js/less.min.js"></script>
<script type="text/javascript" src="/js/first.js"></script>
<!-- FlexSlider -->
<script type="text/javascript" src="/js/2.js"></script>
<meta name="baidu-site-verification" content="s3QQaARPSL" />
<title id="www_pc_title">我的收藏-时光书店</title>

<style>
table {
    margin-right: auto;
    margin-left: auto;
}
</style>
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
                    <div class="mycolle-info mb-20">
                        <h3 class="list-item-title bb-1-e8 mb-20">收藏夹</h3>
                        <div class="goodlist">
                           <div class="mycolle-empty ta-ct" height="1000px">
                           <table border="0" cellpadding="0" cellspacing="0">
		<tr>
		<table class="address-info-table bd-1-e8" border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr class="info-title ta-ct">
											<th class="item bb-1-e8" width="5%">序号</th>
											<th class="item bb-1-e8" width="20%">图片</th>
											<th class="item bb-1-e8" width="15%">信息</th>
											<th class="item bb-1-e8" width="10%">单价</th>
											<th class="item bb-1-e8" width="15%">操作</th>
										</tr>

										<c:forEach items="${requestScope.collectionList }" var="collection" varStatus="statu">
											<tr class="info-text ta-ct">
												<td class="item">${statu.count }</td>
												<td class="item"><img id="img8" alt="src not found" src="${collection.booksId.booksImages }" width="20%">
												</td>
												<td class="item" style="color: blue;">${collection.booksId.booksName }<br>
												${collection.booksId.booksWriter }</td>
												<td class="item">${collection.booksId.booksPrice }</td>
      	  										
												<td class="item">
												<a href="${pageContext.request.contextPath }/collection/delete?collectionId=${collection.collectionId}">取消收藏</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
				
   <%-- <table border="0px" cellspacing="0px" cellpadding="0px" style="font-size:18px" width="900">

      <tr style="background-color:66CCFF" height="50px">
      	<th width="10%">序号</th>
      	<th width="20%">书本名称</th>
      	<th width="20%">作者</th>
      	<th width="20%">书本价格</th>
      	<th width="30%">删除</th>
      </tr>
      <c:forEach items="${requestScope.collectionList }" var="collection" varStatus="statu">
      	<tr height="70px" style="background-color:F0F0F0">
      	  <td>${statu.count }</td>  
      	  <td>${collection.booksId.booksName }</td>
      	  <td>${collection.booksId.booksWriter }</td>
          <td>${collection.collectionPrice }</td>
           <td>
      	 	<a href="${pageContext.request.contextPath }/collection/delete?collectionId=${collection.collectionId}">取消收藏</a>
      	  </td>
      	</tr>
      
	 </c:forEach>  	
  </table><br> --%>	
						
															
                           </div>
                          <div class="cb"></div>
                        </div>
                        <div class="mt-10">
                            <div class="page-number-group tcdPageCode fr">
                                                            </div>
                            <div class="cb"></div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="cb"></div>
    </div>
    <!-- 猜你喜欢 -->
    <!--一组或者多个商品，带标题 module_type=3 template_id=7 -->
<div class="my_module" id="11" data-template-id="7" module-id="11" module-type="3">

    <!--猜你喜欢  横向-->
    <div class="mb-20 mt-20 bc-f3 border-patch box-shadow scale-box">

        <div class="lh-40 bc-f3 pd-0020 fs-18 fw-bd">猜你喜欢</div>

        <!-- 商品列表 -->
        <div class="pt-5">
            <div class="flexslider product-six">
                <ul class="slides mouseenter-box">
				<ul class="slides mouseenter-box">
                  <li class="ta-ct">
                        <div class="mg-5 mouseenter mouseleave">
                            <div class="scale pd-10 oh pr">
                                <a class="db square-box one-one bgimg lazyload hidden" data-bgimg="background-image: url(/images/img/bai.PNG);" target="_blank" href="/detail.php?id=100106259"></a>

                                                                
                            </div>
                            <div class="context">
                                <a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="/detail.php?id=100106259">白夜行(精)</a>
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
                                <a class="db square-box one-one bgimg lazyload hidden" data-bgimg="background-image: url(/images/img/fei.PNG);" target="_blank" href="/detail.php?id=100102984"></a>

                                                                
                            </div>
                            <div class="context">
                                <a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="/detail.php?id=100102984">苏菲的世界(精)</a>
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
                                <a class="db square-box one-one bgimg lazyload hidden" data-bgimg="background-image: url(/images/img/da.PNG);" target="_blank" href="/detail.php?id=100717552"></a>

                                                                
                            </div>
                            <div class="context">
                                <a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="/detail.php?id=100717552">读在大好时光</a>
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
                                <a class="db square-box one-one bgimg lazyload hidden" data-bgimg="background-image: url(/images/img/qing.PNG);" target="_blank" href="/detail.php?id=100122384"></a>

                                                                
                            </div>
                            <div class="context">
                                <a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="/detail.php?id=100122384">青春(韩寒文集典藏版)</a>
                                <div>
                                    <span class="fs-16 cl-rd-l">¥22.40</span>
                                    <span class="cl-9">|</span>
                                    <del class="fs-12 cl-9">¥32.00</del>
                                </div>
                            </div>
                        </div>
                    </li>
                                        <li class="ta-ct">
                        <div class="mg-5 mouseenter mouseleave">
                            <div class="scale pd-10 oh pr">
                                <a class="db square-box one-one bgimg lazyload hidden" data-bgimg= "background-image:url(/images/img/la.PNG)" target="_blank" href="/detail.php?id=100102555"></a>

                                                                
                            </div>
                            <div class="context">
                                <a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="/detail.php?id=100102555">了不起的盖茨比(精)</a>
                                <div>
                                    <span class="fs-16 cl-rd-l">¥23.68</span>
                                    <span class="cl-9">|</span>
                                    <del class="fs-12 cl-9">¥32.00</del>
                                </div>
                            </div>
                        </div>
                    </li>
                                        <li class="ta-ct">
                        <div class="mg-5 mouseenter mouseleave">
                            <div class="scale pd-10 oh pr">
                                <a class="db square-box one-one bgimg lazyload hidden" data-bgimg="background-image: url(/images/img/san.PNG);" target="_blank" href="/detail.php?id=100104392"></a>

                                                                
                            </div>
                            <div class="context">
                                <a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="/detail.php?id=100104392">我们仨</a>
                                <div>
                                    <span class="fs-16 cl-rd-l">¥17.25</span>
                                    <span class="cl-9">|</span>
                                    <del class="fs-12 cl-9">¥23.00</del>
                                </div>
                            </div>
                        </div>
                    </li>
                                        <li class="ta-ct">
                        <div class="mg-5 mouseenter mouseleave">
                            <div class="scale pd-10 oh pr">
                                <a class="db square-box one-one bgimg lazyload hidden" data-bgimg="background-image: url(/images/img/shi.PNG);" target="_blank" href="/detail.php?id=100101664"></a>

                                                                <div class="tip-box">
                          
                                </div>
                                                                
                            </div>
                            <div class="context">
                                <a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="/detail.php?id=100101664">时代广场的蟋蟀 不老泉文库</a>
                                <div>
                                    <span class="fs-16 cl-rd-l">¥8.2</span>
                                    <span class="cl-9">|</span>
                                    <del class="fs-12 cl-9">¥15.00</del>
                                </div>
                            </div>
                        </div>
                    </li>
                                        <li class="ta-ct">
                        <div class="mg-5 mouseenter mouseleave">
                            <div class="scale pd-10 oh pr">
                                <a class="db square-box one-one bgimg lazyload hidden" data-bgimg="background-image: url(/images/img/bao.PNG);" target="_blank" href="/detail.php?id=100385168"></a>

                                                                
                            </div>
                            <div class="context">
                                <a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="/detail.php?id=100385168">爱探险的朵拉系列故事(第9辑相信有爱共4册)</a>
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
            animationLoop: false,
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
            <li class="cl-4 lh-25 pd-0500 wd-25p fl">
                <img src="/images/img/zheng.PNG" width="50" height="50" class="fl mr-10 defaultlazy" />
                <div class="fl">
                    <p class="fs-24 ">全场正品</p>
                    <p>出版社直采·博库正品</p>
                </div>
                <div class="cb"></div>
            </li>
            <li class="cl-4 lh-25 pd-0500 wd-25p fl">
                <img src="/images/img/sheng.PNG" alt="" width="50" height="50" class="fl mr-10 defaultlazy" />
                <div class="fl">
                    <p class="fs-24 ">全场满59包邮</p>
                    <p>惊喜不断·让利多多</p>
                </div>
                <div class="cb"></div>
            </li>
            <li class="cl-4 lh-25 pd-0500 wd-25p fl">
                <img src="/images/img/huo.PNG" alt="" width="50" height="50" class="fl mr-10 defaultlazy" />
                <div class="fl">
                    <p class="fs-24 ">门店自取</p>
                    <p>就近取货·方式灵活</p>
                </div>
                <div class="cb"></div>
            </li>
            <li class="cl-4 lh-25 pd-0500 wd-25p fl">
                <img src="/images/img/you.PNG" alt="" width="50" height="50" class="fl mr-10 defaultlazy" />
                <div class="fl">
                    <p class="fs-24 ">售后无忧</p>
                    <p>服务体验·更加精彩</p>
                </div>
                <div class="cb"></div>
            </li>
        </ul>
    </div>
              <div class="wd-1200 ma pd-2000 clearfix">
        <ul class="links-box fl clearfix">
            <li class="lh-30 wd-20p fl">
                <span class="db fs-16 lh-40 ">新手指南</span>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?act=list&pid=2&cid=9&cid_name=新用户注册">新用户注册</a></div>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?act=list&pid=2&cid=10&cid_name=购物流程">购物流程</a></div>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?act=list&pid=2&cid=11&cid_name=积分制度">积分制度</a></div>
            </li>
            <li class="lh-30 wd-20p fl">
                <span class="db fs-16 lh-40 ">支付与配送</span>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?act=list&pid=3&cid=14&cid_name=IC卡充值说明">IC卡充值说明</a></div>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?act=list&pid=3&cid=15&cid_name=验货与签收">验货与签收</a></div>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?act=list&pid=3&cid=16&cid_name=配送范围">配送范围</a></div>
            </li>
            <li class="lh-30 wd-20p fl">
                <span class="db fs-16 lh-40 ">售后服务</span>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?act=list&pid=5&cid=19&cid_name=发票制度">发票制度</a></div>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?act=list&pid=5&cid=21&cid_name=退换货流程">退换货流程</a></div>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?pid=5&cid=47&cid_name=7天无理由退换货">7天无理由退换货</a></div>
            </li>
            <li class="lh-30 wd-20p fl">
                <span class="db fs-16 lh-40 ">个人中心</span>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?act=list&pid=6&cid=27&cid_name=店铺设置">店铺设置</a></div>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?act=list&pid=6&cid=28&cid_name=团队管理">团队管理</a></div>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?act=list&pid=6&cid=29&cid_name=收入管理">收入管理</a></div>
            </li>
            <li class="lh-30 wd-20p fl">
                <span class="db fs-16 lh-40 ">了解拾贝</span>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?act=list&pid=37&cid=38&cid_name=关于博库">关于拾贝</a></div>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?act=list&pid=37&cid=39&cid_name=联系我们">联系我们</a></div>
                <div><a  target="_blank" class="hover cl-6" href="/help.php?pid=37&cid=45&cid_name=博库网隐私政策">拾贝网隐私政策</a></div>
            </li>
        </ul>
        <div class="code-box fr">
            <ul class="clearfix">
                <li class="cl-6 lh-30 ta-ct wd-50p fl">
                    <p class="fs-16 lh-40 ">手机拾贝</p>
                    <a><img src="images/img/er.PNG" align="" width="105" height="105" class="db hidden bd-1-d ma"></a>
                    <p class="lh-30">下载手机客户端</p>
                </li>
                <li class="cl-6 lh-30 ta-ct wd-50p fl">
                    <p class="fs-16 lh-40 ">关注微信</p>
                    <img src="images/img/er1.PNG" align="" width="105" height="105" class="db hidden bd-1-d ma">
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
        "left":{
            "url": ""
        },
        "right1": {
            "text": "",
            "color": "",
            "fontSize": 12
        },
        "right2": {
            "text": "",
            "color": "",
            "fontSize": 12
        },
        "right3": {
            "text": "",
            "color": "",
            "fontSize": 14
        },
        "extraInfos": [],
        "url": "//www.bookuu.com/"
    };
    var chatflag = 0;

    //获取用户登陆信息并


</script>

<script type='text/javascript' src='https://webchat.7moor.com/javascripts/7moorInit.js?accessId=92464560-3f16-11e9-8a25-8d8585556f17&autoShow=false&language=ZHCN' async='async'>
</script>

<script type="text/javascript">
    function openQimooChat(){
        if(chatflag == 1){
            console.log(qimoClientId);
            console.log(m7CardInfo);
        }
        window.qimoChatClick();
    }
</script>
    <script>
        $(function(){
            //频道 tab切换
            $(".my_tab").click(function(){
                var tabId = $(this).attr("data-id");
                $(this).addClass('on-click');
                $(this).siblings().removeClass('on-click');

                $("my_tab_"+tabId).removeClass("dn");
                $("my_tab_"+tabId).siblings(".my_tab_content").addClass('dn');

                //tablazy 图片加载
                let id = "my_tab_"+ tabId + ' img'
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
            //公共：签到
            $('.checkin').on('click',function(){
                $.ajax({
                    type: "post",
                    url:"/ajax/checkin.php?act=signed",
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
        
        // 进度条
        $('.progress-box').progress();

    </script>
</body>
</html>
<script type="text/javascript">
</script>
