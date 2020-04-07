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
<script type="text/javascript"
	src="/webjars/jquery/3.2.1/dist/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!-- FlexSlider -->
<link rel="stylesheet" type="text/css" href="/css/index/5.css" />
<script type="text/javascript" src="/js/index/2.js"></script>
<script type="text/javascript" src="/js/user/regist.js"></script>
<script type="text/javascript" src="/layDate-v5.0.9/laydate/laydate.js"></script>
<script type="text/javascript">
//执行一个laydate实例
laydate.render({
	elem : '#dt',
	theme : 'molv' ,
	max:0
});
</script>
</head>
<body>
	
	<!-- 头部 -->
	<!-- 顶部 小标题  登录信息-->
	<div class="bc-f5 ht-30 lh-30">
		<div class="wd-1200 ma fs-12 cl-6">
			<p class="fl" style="margin-top: 75px">
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
					class="pd-0015 cl-c fr">|</span> <a class="hover fr cl-6" href="#"
					target="_blank" title="店铺管理">店铺管理</a> <span class="pd-0015 cl-c fr">|</span>
				<a class="hover fr cl-6" href="#" target="_blank" title="收藏夹">收藏夹</a>
				<span class="pd-0015 cl-c fr">|</span>
			<div class="fr mouseenter-box mouseenter mouseleave pr">
				<label class="cp">我的拾贝<span class=" ml-5 fs-11"><img
						src="/images/myimg/y4.PNG" /></span></label>
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
		</div>
		</p>
		<div class="cb"></div>
	</div>
	</div>
	</div>
	<div class="wd-1200 ma bb-1-e8">
		<div class="logo">
			<a class="db logo-box fl" href="#"> <img
				src="/images/myimg/logon.jpg" alt="" width="220" height="100"
				class="db hidden">
			</a>
			<div class="cb"></div>
		</div>
	</div>

	
<div class="content">
		<div class="reg-bar-tips mt-25">
			<p class="lh-2 fs-16">
				<strong>用户注册</strong>
			</p>
			<div class="ht-30 pr">
				<img alt="" src="/images/myimg/bb.PNG">
			</div>
		</div>
	</div>

	<div class="wd-720 mg-a mt-20">
		<form class="reg-frame lh-2p5"
			action="${pageContext.request.contextPath }/user/regist"
			method="post">
			<ul>
				<li>
					<div class="pl-90 reg-err ht-35"></div>
				</li>
				<li>
					<div class="wd-90 ta-rt fl">用户名:</div>
					<div class="fl pr">
						<input class="wd-266 ht-24 lh-24 pd-0406" placeholder="字母a~z或0~9数字组成，长度4~8位"  type="text"
							name="userName" id="name" value=""> <label id="tip1"></label>
					</div>
					<div class="fl ml-10">
						<p>&nbsp;</p>
					</div>
					<div class="cb"></div>
				</li>
				<li class="mt-20">
					<div class="wd-90 ta-rt fl">密码：</div>
					<div class="fl pr">
						<input class="wd-266 ht-24 lh-24 pd-0406" placeholder="6-16位密码"  type="password"
							name="userPwd" id="password" value=""> <img
							src="/images/user/icon-invisible.png" alt="" id="eyesHide"
							width="30px;" height="18px;"> <img
							src="/images/user/icon-visible.png" alt="" id="eyesShow"
							style="display: none; width: 30px; height: 18px;"> <label
							id="tip2"></label>
					</div>

					<div class="fl ml-10">
						<p>&nbsp;</p>
					</div>
					<div class="cb"></div>
				</li>

				<li class="mt-20">
					<div class="wd-90 ta-rt fl">邮箱：</div>
					<div class="fl pr">
						<input class="wd-266 ht-24 lh-24 pd-0406"  placeholder="邮箱" type="text"
							name="userEmail" id="email" value=""> <label
							id="tip3"></label>
					</div>

					<div class="cb"></div>
				</li>
				<li class="mt-20">
					<div class="wd-90 ta-rt fl">手机号：</div>
					<div class="fl pr">
						<input class="wd-266 ht-24 lh-24 pd-0406" placeholder="手机号"  type="text"
							name="userPhone" id="phone" value=""> <label
							id="tip4"></label>
					</div>
					<div class="cb"></div>
				</li>
				<li class="mt-20">
					<div class="wd-90 ta-rt fl">注册时间：</div>
					<div class="fl pr">
						<input class="wd-266 ht-24 lh-24 pd-0406" type="text"
							name="createTime" id="dt" value="">
                           
					</div>
					<div class="cb"></div>
				</li>
				<li class="wd-370 ta-ct">
					<button class="reg-btn mt-35 lh-2p4" style="cursor: pointer"
						type="button" id="register">注册</button>
					<div class="wd-328 ma">
						<p class="ta-rt cl-bl-l" style="cursor: pointer">
							已有账号&nbsp;<a class="cl-bl-l"
								href="${pageContext.request.contextPath}/user/tologin">前往登录</a>
						</p>
					</div>
				</li>
			</ul>
		</form>
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
       
</script>
</html>