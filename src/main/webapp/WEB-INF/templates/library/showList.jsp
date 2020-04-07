<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<title>书海拾贝</title>
<script type="text/javascript" src="/webjars/jquery/3.0.0/jquery.js"></script>
<script type="text/javascript" src="/webjars/jquery/3.0.0/jquery.min.js"></script>
<script type="text/javascript" src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/librarycss/foot.css" />
<link rel="stylesheet" type="text/css" href="/css/librarycss/daohang.css" />
<link rel="stylesheet" type="text/css" href="/css/librarycss/logo.css" />
<script type="text/javascript" src="/js/libraryJs/foot.js"></script>
</head>

<body>

	<!-- 头部 -->
	<div class="header-2 bc-f oh">
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
					<!-- 搜索 -->
					<div class="fl">
					<form action="/book/findbyName" method="post">
						<div class="input-group">
				            <input style="height:40px;width:500px;" type="text" class="form-control" 
				                    placeholder="请输入要搜索的书籍名称" name="search">
				            <span class="input-group-addon">
				            <input style="height:40px;width:70px;" class="alert alert-info" type="submit" value="搜索">
							</span>
				        </div>
				        </form>
								<!-- <form action="/book/findbyName" method="post">
									<input style="height:40px;width:200px;" class="form-control" type="text" name="search" placeholder="书名"> 
									<input style="height:40px;width:200px;" class="alert alert-info" type="submit" value="搜索">
								</form> -->
						<div class="cb"></div>
					</div>
					
				</div>
			</div>
			
	
               
			<table class="table table-bordered table-striped table-hover">
				<tr>
					
					<th class="alert alert-info"><h4>图书序号</h4></th>
					<th class="alert alert-info"><h4>图书名称</h4></th>
					<th class="alert alert-info"><h4>图书作者</h4></th>
					<th class="alert alert-info"><h4>出版日期</h4></th>
					<th class="alert alert-info"><h4>出版社名</h4></th>
					<th class="alert alert-info"><h4>图书价格</h4></th>
					<th class="alert alert-info"><h4>类型名称</h4></th>
				</tr>
				<c:forEach items="${requestScope.ylbookList }" var="ylbook"
					varStatus="statu">
					<tr>
						<%-- <td><input type="checkbox" name="checkList"
						value="${ylbook.ylbookId}"></td> --%>
						<td>${statu.count }</td>
						<td>${ylbook.ylbookName }</td>
						<td><a class="text-info"
							href="${pageContext.request.contextPath }/book/showWriter?ylbookId=${ylbook.ylbookId}">
								${ylbook.ylbookWriter }</a></td>
						<td>${ylbook.ylbookDate }</td>
						<td><a class="text-info"
							href="${pageContext.request.contextPath }/book/showConcern?ylbookId=${ylbook.ylbookId}">
								${ylbook.ylbookConcern }</a></td>
						<td>${ylbook.ylbookPrice }</td>
						<td>${ylbook.ylbookCategory.ylcategoryName }</td>
					</tr>
				</c:forEach>
			</table>
			<div class="container" align="center">
				共<a class="text-info">${page.total }</a>条记录 &nbsp;&nbsp; 当前页是<a
					class="text-info">${page.pageNum }</a>&nbsp;&nbsp; 总<a
					class="text-info">${page.pages}</a>页&nbsp;&nbsp;
				<c:if test="${page.hasPreviousPage}">
					<a class="text-primary" href="/book/showList?pn=${page.prePage}">上一页</a>
				</c:if>
				<c:if test="${!page.hasPreviousPage}">上一页</c:if>
				<c:if test="${page.hasNextPage}">
					<a class="text-primary" href="/book/showList?pn=${page.nextPage}">下一页</a>
				</c:if>
				<c:if test="${! page.hasNextPage}">下一页</c:if>
			</div>
		</div>

	</div>



	<!-- 底部 -->
	<div class="footer">
		<!-- tag -->
		<div class="tag">
			<ul class="clearfix">
				<li class="cl-4 lh-25 pd-0500 wd-25p fl">
				<img src="/images/library/zheng.png" width="50" height="50" class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场正品</p>
						<p>出版社直采·博库正品</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl">
				<img src="/images/library/sheng.png" alt="" width="50" height="50" class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场满59包邮</p>
						<p>惊喜不断·让利多多</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl">
				<img src="/images/library/huo.png" alt="" width="50" height="50" class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">门店自取</p>
						<p>就近取货·方式灵活</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl">
				<img src="/images/library/hao.png" alt="" width="50" height="50" class="fl mr-10 defaultlazy" />
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
						<p class="fs-16 lh-40 ">手机拾贝</p>
						 <img data-src="/images/library/app.jpg" width="105" height="105" class="db hidden bd-1-d ma">
						<p class="lh-30">下载手机客户</p>
					</li>

					<li class="cl-6 lh-30 ta-ct wd-50p fl">
						<p class="fs-16 lh-40 ">关注微信</p>
						 <img data-src="/images/library/wx.jpg" width="105" height="105" class="db hidden bd-1-d ma">
						<p class="lh-30">关注官方微信</p>
					</li>
				</ul>

			</div>
		</div>

	</div>

	<script>
     
        // 懒加载
        lazyLoading();

        // 菜单
        mouseenterAndTab();

    </script>
</body>
</html>
