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
<link rel="stylesheet" type="text/css" href="/css/librarycss/lunbo.css" /> 
<link rel="stylesheet" type="text/css" href="/css/librarycss/fenge.css" />
<script type="text/javascript" src="/js/libraryJs/lunbo.js"></script>
<script type="text/javascript">
	/* 商品删除 */
	function delect(id){
	if(confirm('确认删除？')) window.location.href="${pageContext.request.contextPath }/writer/deleteWriter?ylwriterId="+id;
	}
  /* 商品添加 */
  var ylwriterId;
  function Insert(){
	  ylwriterId=0;
	     $(".modal-title").html("添加作者");
	     $("#Insert").modal("show");
 }
  /* 商品修改 */
  function Update(ylwriterId,ylwriterName,ylwriterGender,ylwriterAge,ylwriterNationality){
	  yl_writer_id = ylwriterId;
	    $(".modal-title").html("修改作者");
	    $("#ylwriterName").attr("placeholder",ylwriterName);
	    $("#ylwriterGender").attr("placeholder",ylwriterGender);
	    $("#ylwriterAge").attr("placeholder",ylwriterAge);
	    $("#ylwriterNationality").attr("placeholder",ylwriterNationality);
	    $("#Insert").modal("show");
	    
	    
	}
  /* 提交商品添加和修改 */
  function Insert_submit(){
		alert("required");
		var yl_writer_name=$("#ylwriterName").val();
		var yl_writer_gender=$("#ylwriterGender").val();
		var yl_writer_age=$("#ylwriterAge").val();
		var yl_writer_nationality=$("#ylwriterNationality").val();
		 if(yl_writer_name!==""){ 
			if(ylwriterId==0){
				window.location.href="/writer/insert?ylwriterName="+yl_writer_name+"&ylwriterGender="+yl_writer_gender+"&ylwriterAge="+yl_writer_age
				+"&ylwriterNationality="+yl_writer_nationality;
			}else{
				 window.location.href="/writer/update?ylwriterId="+yl_writer_id+"&ylwriterName="+yl_writer_name+"&ylwriterGender="+yl_writer_gender+"&ylwriterAge="+yl_writer_age+"&ylwriterNationality="+yl_writer_nationality;
				 
			}
		 }else{
			alert("请输作者名称");
		} 
	}	

</script>
</head>

<body>
	<!-- 头部 -->
	<div class="header bc-f">
		<!-- 顶部 小标题  登录信息-->
		<div class="bc-f5 ht-30 lh-30">
			<div class="wd-1200 ma fs-12 cl-6">
				<p class="fl">
				
					<span class="hover cl-6" href="#" target="_blank" title="登录">${ sessionScope.admin.adminName}管理员，欢迎登录！</span> 
					<span class="pd-0005 cl-c">|</span> 
					<a class="mr-30 hover cl-6" href="${pageContext.request.contextPath }/admin/outAdmin" target="_blank">安全退出</a> 
					<a class="hover cl-6" href="#" target="_blank" title="下载拾贝APP">下载拾贝APP</a>
				</p>
				<div class="fr">
					<a class="hover fr cl-6" title="联系客服">联系客服</a> 
					<span class="pd-0015 cl-c fr">|</span> 
					<a class="hover fr cl-6" href="${pageContext.request.contextPath }/book/showList" target="_blank" title="图书馆">图书馆</a> 
					<span class="pd-0015 cl-c fr">|</span>
				    <a class="hover fr cl-6" href="#" target="_blank" title="收藏夹">收藏夹</a> 
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
					<!--固定导航菜单-->
				</div>
				<div class="cb"></div>
			</div>
			<br>

	<div class="content">
		<table class="table table-bordered table-striped table-hover">
			<tr>
				<!-- <th class="alert alert-info"></th> -->
				<th class="alert alert-info"><h4>作者序号</h4></th>
				<th class="alert alert-info"><h4>作者姓名</h4></th>
				<th class="alert alert-info"><h4>作者性别</h4></th>
				<th class="alert alert-info"><h4>作者年龄</h4></th>
				<th class="alert alert-info"><h4>作者国籍</h4></th>
				<th class="alert alert-info"><h4>操作</h4></th>
			</tr>
			<c:forEach items="${requestScope.ylbookWriterList }" var="ylwriter"
				varStatus="statu">
				<tr>
				    <td>${statu.count }</td>
					<td>${ylwriter.ylwriterName }</td>
					<td>${ylwriter.ylwriterGender }</td>
					<td>${ylwriter.ylwriterAge }</td>
					<td>${ylwriter.ylwriterNationality }</td>
					<td>
					<a class="text-info" href="javascript:void(0);" onclick="Insert()"> 新增</a>
					<a class="text-info" href="javascript:;" onclick="Update(${ylwriter.ylwriterId},'${ylwriter.ylwriterName}','${ylwriter.ylwriterGender}',
  		                        '${ylwriter.ylwriterAge}','${ylwriter.ylwriterNationality}')"> 修改</a>
				    <a class="text-danger" href="javascript:;" onclick="delect(${ylwriter.ylwriterId})">删除</a>
				</td>
				</tr>
			</c:forEach>
		</table>
		<div class="container" align="center">
				共<a class="text-info">${page.total }</a>条记录 &nbsp;&nbsp; 当前页是<a
					class="text-info">${page.pageNum }</a>&nbsp;&nbsp; 总<a
					class="text-info">${page.pages}</a>页&nbsp;&nbsp;
				<c:if test="${page.hasPreviousPage}">
					<a class="text-primary" href="/writer/showwriterList?pn=${page.prePage}">上一页</a>
				</c:if>
				<c:if test="${!page.hasPreviousPage}">上一页</c:if>
				<c:if test="${page.hasNextPage}">
					<a class="text-primary" href="/writer/showwriterList?pn=${page.nextPage}">下一页</a>
				</c:if>
				<c:if test="${! page.hasNextPage}">下一页</c:if>
			</div>
	</div>
	<br>

 <div id="Insert" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
	    <div class="modal-content radius">
				  <div class="modal-header">
					<h3 class="modal-title"></h3>
					<a class="close" data-dismiss="modal" aria-hidden="true" href="javascript:void();">×</a>
				  </div>
			  <div class="modal-body">
			     <div class="row cl">
			         <label class="form-label col-xs-4 col-sm-3">作者姓名：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text" placeholder="请输入作者姓名" class="input-text radius size-M" id="ylwriterName">
						</div>
						<label class="form-label col-xs-4 col-sm-3">作者性别：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text" placeholder="请输入作者性别" class="input-text radius size-M" id="ylwriterGender">
						</div>
						<label class="form-label col-xs-4 col-sm-3">作者年龄：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text" placeholder="请输入作者年龄" class="input-text radius size-M" id="ylwriterAge">
						</div>
						<label class="form-label col-xs-4 col-sm-3">作者国籍：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text" placeholder="请输入作者国籍" class="input-text radius size-M" id="ylwriterNationality">
						</div>
			     </div>
			  </div>
				<div class="modal-footer">
					<button class="btn btn-primary" onclick="Insert_submit()">提交</button>
					<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
				</div>
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

					<div>
						<a target="_blank" class="hover cl-6" href="#">&nbsp;&nbsp;&nbsp;&nbsp;    </a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6" href="#"> &nbsp;&nbsp;&nbsp;&nbsp;   </a>
					</div>
					<div>
						<a target="_blank" class="hover cl-6" href="#">
						<img src="/images/library/wx.jpg" width="105" height="105">
						<p class="lh-30">关注官方微信</p>
						</a>
					</div>
			
		</div>

	</div>

</body>
</html>
	
	