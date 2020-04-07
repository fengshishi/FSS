<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>书本上架</title>
<meta name="baidu-site-verification" content="s3QQaARPSL" /> 
<link rel="stylesheet" type="text/css" href="/css/cart/all.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/1.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/2.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/3.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/4.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/5.css" />
<link rel="stylesheet" type="text/css" href="/css/address/bootstrap-theme.min.css"/>
<link rel="stylesheet" type="text/css" href="/css/address/bootstrapbootstrap-theme.min.css.min.css" />
<link rel="stylesheet" type="text/css" href="/css/address/address.css" />
<script type="text/javascript" src="/webjars/jquery/3.2.1/dist/jquery.min.js"></script>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="/js/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/js/js/less.min.js"></script>
<script type="text/javascript" src="/js/js/first.js"></script>
<script type="text/javascript" src="/js/js/2.js"></script>
<style type="text/css">
#img8{
width: 100px;height: 100px;
}
#img8:hover{
width: 150px;height: 150px;
}
table 
{
	
    width:65%;
}
td
{
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
				${ sessionScope.business.businessName}
				用户，您好，欢迎您的登录！
				<a class="mr-30 hover cl-6"
					href="${pageContext.request.contextPath}/business/outBusiness"
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
</div>
<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
<div class="personal-list-item ml-10 bd-1-e8 fl" style="width: 800px;height: 590px">
            <ul>
                <li class="list-item active">
                    <div class="userCenter-content">
                        <h1 class="blue-line clearfix">书本上架</h1><br><br>
			<form style="padding-left: 150px;" action="${pageContext.request.contextPath }/books/insert"
		enctype="multipart/form-data" method="post">
				<div class="address-bar">
				<p>
					书本名称：
					<input name="booksName"  type="text" id="name"/>
					
				</p>
				
				<br>

				<p>
					书本类型： 
					<select id="category_id" name="booksCategory.categoryId" style="width:27%;height: 27px;">
						<c:forEach items="${requestScope.booksCategoryName}" var="u">
							<option value="${u.categoryId }"
								<c:if test="${category.category_id==u.categoryId}"><c:out value="selected"/></c:if>>
								${u.categoryName}</option>
						</c:forEach>
				</select>
					
				</p>

				<br>
				<p >
					图&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;片：
					
					<input type="file" name="file"/> 
					
				</p>
				<br>
				<p>
					作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;者：
					<input type="text" name="booksWriter"/> 
				
				</p>
				
				<br>
				<p>
					出版&nbsp;&nbsp;社：
					<input type="text" name="booksConcern" /> 
					
				</p>
				
				<br>
				<p>
					价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：
					<input type="text" name="booksPrice"/> 
					
				</p>
				
				<br>
				<p>
					数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;量：
					<input type="text" name="booksNum"/> 
					
				</p>
				
				<br>
				
				<input type="hidden" name="collectionBusiness.businessId" />
				
				<p>
					<input type="submit" class="btn-style1" id="address" value="添加"/>
					<!-- <input type="submit" value="添加"> -->
				</p>
			 </div>
			</form>
			<br><br><br><br><br><br><br><br><br><br>
	
                 </div>   
                </li>
            </ul>
        </div>
        <div class="cb"></div>
    </div>
   
		<!-- <tr class="info-title ta-ct" style="text-align: center;">
			<th class="item bb-1-e8" width="10%">序号</th>
			<th class="item bb-1-e8" width="10%">书本名称</th>
			<th class="item bb-1-e8" width="10%">作者</th>
			<th class="item bb-1-e8" width="15%">出版社</th>
			<th  width="10%" class="alert alert-info">时间</th>
			<th class="item bb-1-e8" width="5%">价格</th>
			<th class="item bb-1-e8" width="5%">库存</th>
			<th class="item bb-1-e8" width="25%">图片</th>
			<th class="item bb-1-e8" width="10%">书本类型</th>
			<th class="item bb-1-e8" width="10%">下架</th>
		</tr> -->
		
	<div align="center">
	 <table border="0" cellpadding="0" cellspacing="0">
		<tr>
				<table>
					<bean:size name="requestScope.booksList1" id="count" />
					<c:forEach items="${requestScope.booksList1 }" var="books"
						varStatus="statu">
						<!-- begin -->
						<c:if test="${statu.count eq 5 || (statu.count-1) % 4 eq 0}"><!-- 设置行和列 -->
						<tr>
						</c:if>
						<td>
						<table>
							 <tr>
								<td>
									<div><a href="${pageContext.request.contextPath }/books/findDetails?booksId=${books.booksId }"><img id="img8" alt="src not found" src="${books.booksImages }" width="30%"></a></div>
									<div><br>&nbsp;${books.booksName }<br>
									&nbsp;${books.booksWriter }<br>
									&nbsp;${books.booksConcern }<br>
									￥&nbsp;${books.booksPrice }&nbsp;
									&nbsp;库存：${books.booksNum }<br>
									&nbsp;${books.booksCategory.categoryName }&nbsp;&nbsp;<br>
									<a style="color: blue; " href="${pageContext.request.contextPath }/books/test?booksId=${books.booksId}">修改简介</a>
									<a style="color: blue;" href="${pageContext.request.contextPath }/books/delete?booksId=${books.booksId}">下架</a></div>
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
	</table>
</div>
	<%-- <c:forEach items="${requestScope.booksList1 }" var="books" varStatus="statu">
	      	    
			<c:if test="${status.index%3==2}">
			<img alt="src not found" src="${books.booksImages }" width="10%">
				<br>&nbsp;${books.booksName }<br>
				作者：&nbsp;${books.booksWriter }<br>
				出版社：&nbsp;${books.booksConcern }<br>
				￥&nbsp;${books.booksPrice }<br>
				数量：&nbsp;${books.booksNum }<br>
				类别：&nbsp;${books.booksCategory.categoryName }<br>
				<a href="${pageContext.request.contextPath }/books/delete?booksId=${books.booksId}">下架</a><br>
			</c:if>
			<c:out value="${books.booksName}${books.booksWriter}${books.booksConcern }
			${books.booksPrice}数量：&nbsp;${books.booksNum }
				类别：&nbsp;${books.booksCategory.categoryName }"/>
			</c:forEach>
				<a href="${pageContext.request.contextPath }/books/delete?booksId=${books.booksId}">下架</a><br><br> --%>
		<%-- <c:forEach items="${requestScope.booksList1 }" var="books" varStatus="statu">
			<!-- <div class="info" style="text-align: center;"> -->
				<td class="item">${statu.count }</td>
				<img alt="src not found" src="${books.booksImages }"
					width="20%"><br>
					${books.booksName }<br>
					${books.booksWriter }<br>
					${books.booksConcern }<br>
					${books.booksPrice }<br>
					${books.booksNum }<br>
					${books.booksCategory.categoryName }&nbsp;
					<a href="${pageContext.request.contextPath }/books/delete?booksId=${books.booksId}">下架</a>
					
				<td class="item">${books.booksName }</td>
				<td class="item">${books.booksWriter }</td>
				<td class="item">${books.booksConcern }</td>
				 <td>${books.booksConcerndate }</td>
				<td class="item">${books.booksPrice }</td>
				<td class="item">${books.booksNum }</td>
				<td class="item">${books.booksCategory.categoryName }</td>
				<td class="item"><a href="${pageContext.request.contextPath }/books/delete?booksId=${books.booksId}">下架</a>
				
		</div> 
		</c:forEach> --%>
	<br><br><br><br><br>
	<div class="container" align="center">
		共<a class="text-info">${page.total }</a>条记录 &nbsp;&nbsp; 当前页是<a
			class="text-info">${page.pageNum }</a>&nbsp;&nbsp; 总<a
			class="text-info">${page.pages}</a>页&nbsp;&nbsp;
		<c:if test="${page.hasPreviousPage}">
			<a class="text-primary" href="/books/find?pn=${page.prePage}">上一页</a>
		</c:if>
		<c:if test="${!page.hasPreviousPage}">上一页</c:if>
		<c:if test="${page.hasNextPage}">
			<a class="text-primary" href="/books/find?pn=${page.nextPage}">下一页</a>
		</c:if>
		<c:if test="${! page.hasNextPage}">下一页</c:if>
	</div>
<!-- 	<script type="text/javascript">
$(function(){
		
		$("img").hover(function(){
	    	$(this).animate({width: "50px"});
		},function(){
			 $(this).animate({width: "50%"});
		});
});
</script> -->
<!--一组或者多个商品，带标题 module_type=3 template_id=7 -->
			<div class="my_module" id="11" data-template-id="7" align="center">
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
							data-src="/images/myimg/app.jpg" width="105"
							height="105" class="db hidden bd-1-d ma">
							<p class="lh-30">下载手机客户端</p>
						</li>
						<li class="cl-6 lh-30 ta-ct wd-50p fl">
							<p class="fs-16 lh-40 ">关注微信</p> <img
							data-src="/images/myimg/wx.jpg" width="105" height="105"
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
<!--  <style type="text/css">
.copyRightA {
	color: #999;
}

.copyRightA:hover {
	color: #fff;
}
</style> -->
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

</body>

</html>


