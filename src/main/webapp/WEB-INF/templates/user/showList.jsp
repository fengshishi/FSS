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
<script type="text/javascript">
/* 商品删除 */
function delect(id){
if(confirm('确认删除？')) window.location.href="${pageContext.request.contextPath }/user/showAllUser?userId=${param.userId}"+id;
}
  /* 添加用户 */
	  var userId;
	  function Insert(){
		 userId=0;
		     $(".modal-title").html("添加用户 ");
		     $("#Insert").modal("show");
	 } 
	  /*修改用户 */
	  function Update(userId,userName,userPwd,userEmail,userPhone,updateTime){
		  user_id = userId;
		    $(".modal-title").html("修改用户");
		    $("#userName").attr("placeholder",userName);
		    $("#userPwd").attr("placeholder",userPwd);
		    $("#userEmail").attr("placeholder",userEmail);
		    $("#userPhone").attr("placeholder",userPhone);
		    $("#create_time").attr("placeholder",createTime);
		    $("#updateTime").attr("placeholder",updateTime);
		    $("#Insert").modal("show");
		    
		    
		} 
	   /* 提交用户添加和修改 */
	  function Insert_submit(){ 
			alert("required");
			var user_name=$("#userName").val();
			var user_pwd=$("#userPwd").val();
			var user_email=$("#userEmail").val();
			var user_phone=$("#userPhone").val();
			var create_time=$("#createTime").val();
			var update_time=$("#updateTime").val();
			 if(user_name!==""){ 
				if(userId==0){
					window.location.href="/user/insert?userName="+user_name+"&userPwd="+user_pwd+"&userEmail="+user_email
					+"&userPhone="+user_phone+"&createTime="+create_time;
				}else{
					 window.location.href="/user/update?userId="+user_id+"&userName="+user_name+"&userPwd="+user_pwd+"&userEmail="+user_email+"&userPhone="+user_phone+"&createTime="+create_time;
					 
				}
			 }else{
				alert("请输入用户名 ");
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
					欢迎，${ sessionScope.SuperAdmin.superadminName}超级管理员登录成功！ <span
						class="pd-0005 cl-c">|</span> <a class="mr-30 hover cl-6" href="#"
						title="安全退出">安全退出</a> <a class="hover cl-6" href="#"
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

		<div class="nav fl" style="margin-left: 350px">
			<!--固定导航菜单-->
			<a target="_blank" class="db pd-0015 fl " href="${pageContext.request.contextPath}/web/index"><span>首页</span></a>
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

	<div style="padding-left: 405px; padding-top: 80px;">
		<button class="btn btn-outline-info" href="javascript:;"
			onclick="Insert()">添加用户</button>
		<a href="${pageContext.request.contextPath }/books/findBooks">
			<button class="btn btn-outline-info">显示所有新书信息</button>
		</a>
	</div>
	<div class="container" style="padding-top: 30px;">
		<table class="table table-bordered table-striped table-hover">
			<tr class="table-info">
				<th>ID</th>
				<th>用户名</th>
				<th>密码</th>
				<th>电子邮箱</th>
				<th>手机号</th>
				<th>注册时间</th>
				<th>修改时间</th>
				<th>操作</th>
			</tr>

			<c:forEach items="${requestScope.page.list }" var="user"
				varStatus="statu">
				<tr>
					<td>${statu.count }</td>
					<td>${user.userName }</td>
					<td>${user.userPwd }</td>
					<td>${user.userEmail}</td>
					<td>${user.userPhone }</td>
					<td>${user.createTime }</td>
					<td>${user.updateTime }</td>
					<td><a class="text-info" href="javascript:;"
						onclick="Update(${user.userId},
					       '${user.userName}','${user.userPwd}', '${user.userEmail}',
					       '${user.userPhone}','${user.createTime}','${user.updateTime}')">
							修改</a> <a class="text-danger"
						href="${pageContext.request.contextPath }/user/deleteUser?userId=${user.userId}"
						onclick="delect(${user.userId})">删除</a></td>
				</tr>
			</c:forEach>
		</table>
		<div class="container" align="center">
			共<a class="text-info">${page.total }</a>条记录 &nbsp;&nbsp; 当前页是<a
				class="text-info">${page.pageNum }</a>&nbsp;&nbsp; 总<a
				class="text-info">${page.pages}</a>页&nbsp;&nbsp;
			<c:if test="${page.hasPreviousPage}">
				<a class="text-primary" href="/user/showAllUser?pn=${page.prePage}">上一页</a>
			</c:if>
			<c:if test="${!page.hasPreviousPage}">上一页</c:if>
			<c:if test="${page.hasNextPage}">
				<a class="text-primary" href="/user/showAllUser?pn=${page.nextPage}">下一页</a>
			</c:if>
			<c:if test="${! page.hasNextPage}">下一页</c:if>
		</div>
	</div>


	<div id="Insert" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content radius">
				<div class="modal-header">
					<h3 class="modal-title"></h3>
					<a class="close" data-dismiss="modal" aria-hidden="true"
						href="javascript:void();">×</a>
				</div>
				<div class="modal-body">
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-3">name：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text" placeholder="username"
								class="input-text radius size-M" id="userName">
						</div>
						<label class="form-label col-xs-4 col-sm-3">password：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="password" placeholder="userpassword"
								class="input-text radius size-M" id="userPwd">
						</div>
						<label class="form-label col-xs-4 col-sm-3">Email：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text" placeholder="useremail"
								class="input-text radius size-M" id="userEmail">
						</div>
						<label class="form-label col-xs-4 col-sm-3">phone：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text" placeholder="userphone"
								class="input-text radius size-M" id="userPhone">
						</div>
						<label class="form-label col-xs-4 col-sm-3">createDate：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text" placeholder="date"
								class="input-text radius size-M" id="createTime">
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
</body>
</html>