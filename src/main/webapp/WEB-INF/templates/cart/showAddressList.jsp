<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link rel="shortcut icon" href="#" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/css/cart/4.css" />
<link rel="stylesheet" type="text/css" href="/css/cart/5.css" />
<!-- 字体图标 -->
<script type="text/javascript" src="/js/js/less.min.js"></script>
<script type="text/javascript" src="/js/js/first.js"></script>
<!-- FlexSlider -->
<script type="text/javascript" src="/js/js/2.js"></script>
<meta name="baidu-site-verification" content="s3QQaARPSL" />
<title id="www_pc_title">书海拾贝</title>
<style >
   table{
       margin-right: auto;
        margin-left: auto;
   }
  
</style>
</head>
<body>

<!-- 头部 -->
<div class="header-2 bc-f oh">

    <!-- 顶部 小标题  登录信息-->
<div class="bc-f5 ht-30 lh-30">
    <div class="wd-1200 ma fs-12 cl-6">
        <p class="fl">
                        欢迎，18276705311
            <span class="pd-0005 cl-c">|</span>
            <a class="mr-30 hover cl-6" href="/login.php?act=loginout" title="退出登录">退出登录</a>
                        <a class="hover cl-6" href="/download.php" target="_blank" title="下载拾贝APP"><span class="icon-phone-line cl-bl-l fs-16 tp-3 mr-2 pr"><img src="/images/img/k5.PNG"></span>下载拾贝APP</a>
        </p>
        <p class="fr">
            <a class="hover fr cl-6" href="javascript:void()" onclick="openQimooChat();" title="联系客服">联系客服</a>
            <span class="pd-0015 cl-c fr">|</span>
            <a class="hover fr cl-6" href="/user/shop/settings.php" target="_blank" title="店铺管理">店铺管理</a>
            <span class="pd-0015 cl-c fr">|</span>
            <a class="hover fr cl-6" href="/user/collection.php" target="_blank" title="收藏夹">收藏夹</a>
            <span class="pd-0015 cl-c fr">|</span>
            <div class="fr mouseenter-box mouseenter mouseleave pr">
                <label class="cp">我的拾贝<span class="icon-down-line ml-5 fs-11"><img src="/images/img/y4.PNG"></span></label>
                <div class="acount">
                    <a class="hover cl-6 to-hd" href="#"  target="_blank" title="">我的博库</a>
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
    <div class="wd-1200 ma bb-1-e8">
        <div class="logo">
            <a class="db logo-box fl" href="/index.php">
                <img data-src="/images/img/logon.jpg" alt="" height="90" width="200" class="db hidden">
            </a>
            
            <div class="cb"></div>
        </div>
    </div>

</div>
<div class="section">
    <div class="wd-1200 ma">
        <!-- 支付方式  JSP页面-->
            
        <div class="pd-1530 bc-f3 bd-1-e8 pt-20" style="background:#FFFFE0; color:#000000">
            <div class="fs-20 ff-ht bb-1-d7 lh-40"  style="background:; color:#000000">收件人信息</div>
						<div class="text" style=" text-align:center;">
          <h2>收件人信息</h2>
          <br>
                  <table  class="table table-striped table-bodrdered table-hover" style="font-size:18px" width="900">
   
                   <tr >
   	
                  	<th>收件人姓名</th>
 	                  <th>收件人电话</th>
 	                  <th>收件地址（省）</th>
 	                  <th>收件地址（市）</th>
                    <th>收件地址（区）</th>
 	                  <th>收件地址（街牌号）</th>
 	                  <th>删除</th>
                </tr>
 	               <c:forEach items="${requestScope.addressList }" var="address" varStatus="statu">
      		     <tr>
      	 	
      		     <td>${address.addressName }</td>
      	 	     <td>${address.addressPhone }</td>
      	 	     <td>${address.addressProvice }</td>
      	 	     <td>${address.addressCity }</td>
      	 	     <td>${address.addressXianqu }</td>
      	 	     <td>${address.addressDetail }</td>
      	 	     <td>
      	 	     	<a href="${pageContext.request.contextPath }/admin/delete?addressId=${address.addressId}">盘他</a>
      	 	     </td>
    		 </tr>
   		 </c:forEach>
 </table>
																</div>
            </div>
        </div>
        
        </div>
        <div align="center">
        <th > <img  src="/images/img/foot.jpg" height="200px" width="2400px" > </th>
        </div>

        <!-- 微信支付 弹窗-->
    <!--     <div class="dn" id="wxpay_layer">
            <div style="text-align: center;margin-bottom: 40px;" id="wxpay_qrcode"></div>
        </div> -->
        <div class="popup-box wxpay wd-660 pd-0 pr hidden">
            <div class="popup-content">
                <div class="content-center">
                   
                </div>
            </div>
        </div>
    </div>
    <!-- popup -->
    <div class="popup-box alipay pd-0 pr wd-460 hidden">
        <div class="popup-content">
            <div class="content-center">
             
                    <div class="cb"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- popup -->
    <div class="popup-box blancepay wd-460 pd-0 pr hidden">
        <div class="popup-content">
            <div class="content-center">

                    </div>
                    <div class="cb"></div>
                </div>
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
                <div><a  target="_blank" class="hover cl-6" href="name=新用户注册">新用户注册</a></div>
                <div><a  target="_blank" class="hover cl-6" href="name=购物流程">购物流程</a></div>
                <div><a  target="_blank" class="hover cl-6" href="name=积分制度">积分制度</a></div>
            </li>
            <li class="lh-30 wd-20p fl">
                <span class="db fs-16 lh-40 ">支付与配送</span>
                <div><a  target="_blank" class="hover cl-6" href="name=IC卡充值说明">IC卡充值说明</a></div>
                <div><a  target="_blank" class="hover cl-6" href="name=验货与签收">验货与签收</a></div>
                <div><a  target="_blank" class="hover cl-6" href="name=配送范围">配送范围</a></div>
            </li>
            <li class="lh-30 wd-20p fl">
                <span class="db fs-16 lh-40 ">售后服务</span>
                <div><a  target="_blank" class="hover cl-6" href="name=发票制度">发票制度</a></div>
                <div><a  target="_blank" class="hover cl-6" href="name=退换货流程">退换货流程</a></div>
                <div><a  target="_blank" class="hover cl-6" href="name=7天无理由退换货">7天无理由退换货</a></div>
            </li>
            <li class="lh-30 wd-20p fl">
                <span class="db fs-16 lh-40 ">个人中心</span>
                <div><a  target="_blank" class="hover cl-6" href="name=店铺设置">店铺设置</a></div>
                <div><a  target="_blank" class="hover cl-6" href="name=团队管理">团队管理</a></div>
                <div><a  target="_blank" class="hover cl-6" href="name=收入管理">收入管理</a></div>
            </li>
            <li class="lh-30 wd-20p fl">
                <span class="db fs-16 lh-40 ">了解拾贝</span>
                <div><a  target="_blank" class="hover cl-6" href="name=关于博库">关于拾贝</a></div>
                <div><a  target="_blank" class="hover cl-6" href="name=联系我们">联系我们</a></div>
                <div><a  target="_blank" class="hover cl-6" href="name=博库网隐私政策">拾贝网隐私政策</a></div>
            </li>
        </ul>
        <div class="code-box fr">
            <ul class="clearfix">
                <li class="cl-6 lh-30 ta-ct wd-50p fl">
                    <p class="fs-16 lh-40 ">手机拾贝</p>
                    <a><img src="/images/img/er.PNG" align="" width="105" height="105" class="db hidden bd-1-d ma"></a>
                    <p class="lh-30">下载手机客户端</p>
                </li>
                <li class="cl-6 lh-30 ta-ct wd-50p fl">
                    <p class="fs-16 lh-40 ">关注微信</p>
                    <img src="/images/img/er1.PNG" align="" width="105" height="105" class="db hidden bd-1-d ma">
                    <p class="lh-30">关注官方微信</p>
                </li>
            </ul>
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

<script type='text/javascript' src='ZHCN' async='async'>
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
       });

        // 进度条
        $('.progress-box').progress();

    </script>
</body>
</html>
<script type="text/javascript">
    //wx轮询变量
    var objTimer = null;



</script>
