<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/view/resource.jsp" %>
<!DOCTYPE html>
<html>
 <head>
  <title></title>
  <link rel="shortcut icon" href="resources/fc/images/icon/favicon.ico">
  <!--[if lt IE 9]>
   <script src="/plug-in/login/js/html5.js"></script>
  <![endif]-->
  <!--[if lt IE 7]>
  <script src="/plug-in/login/js/iepng.js" type="text/javascript"></script>
  <script type="text/javascript">
	EvPNG.fix('div, ul, img, li, input'); //EvPNG.fix('包含透明PNG图片的标签'); 多个标签之间用英文逗号隔开。
</script>
  <![endif]-->
  <link href="/plug-in/login/css/zice.style.css" rel="stylesheet" type="text/css" />
  <link href="/plug-in/login/css/buttons.css" rel="stylesheet" type="text/css" />
  <link href="/plug-in/login/css/icon.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="/plug-in/login/css/tipsy.css" media="all" />
  <style type="text/css">
html {
	background-image: none;
}

label.iPhoneCheckLabelOn span {
	padding-left: 0px
}

#versionBar {
	background-color: #212121;
	position: fixed;
	width: 100%;
	height: 35px;
	bottom: 0;
	left: 0;
	text-align: center;
	line-height: 35px;
	z-index: 11;
	-webkit-box-shadow: black 0px 10px 10px -10px inset;
	-moz-box-shadow: black 0px 10px 10px -10px inset;
	box-shadow: black 0px 10px 10px -10px inset;
}

.copyright {
	text-align: center;
	font-size: 10px;
	color: #CCC;
}

.copyright a {
	color: #A31F1A;
	text-decoration: none
}

#login .logo {
	width: 500px;
	height: 51px;
}
</style>
 </head>
 <body>
  <div id="alertMessage"></div>
  <div id="successLogin"></div>
  <div class="text_success">
   <img src="/plug-in/login/images/loader_green.gif" alt="Please wait" />
   <span>登陆成功!请稍后....</span>
  </div>
  <div id="login">
   <div class="ribbon" style="background-image:url(/plug-in/login/images/typelogin.png);"></div>
   <div class="inner">
    <div class="logo">
     <img src="/plug-in/login/images/toplogo.png"/>
    </div>
    <div class="formLogin">
     <form name="formLogin" id="formLogin" action="loginController.do?login" check="checkuser.do" method="post">
      <div class="tip">
       <input class="userName" name="email" type="text" id="email"  value='admin@qq.com' title="用户名" iscookie="true"  nullmsg="请输入用户名!"/>
      </div>
      <div class="tip">
       <input class="password" name="pwd" type="password"  value='654321' id="pwd" title="密码" nullmsg="请输入密码!"/>
      </div>
      <div class="loginButton">
       <div style="float: right; padding: 3px 0; margin-right: -12px;">
        <div>
         <ul class="uibutton-group">
          <li>
           <a class="uibutton normal" id="but_login" >登陆</a>
          </li>
          <li>
           <a class="uibutton normal" href="javascrpt:void(0);" id="forgetpass">重置</a>
          </li>
         </ul>
        </div>
       </div>
       <div class="clear"></div>
      </div>
     </form>
    </div>
   </div>
   <div class="shadow"></div>
  </div>
  <!--Login div-->
  <div class="clear"></div>
  <div id="versionBar">
   <div class="copyright">
    &copy; 版权所有
    <span class="tip"><a href="https://github.com/jibaole" title="JEECG-Mybatis 演示系统">jeecg</a> (推荐使用IE8+,谷歌浏览器可以获得更快,更安全的页面响应速度)技术支持:<a href="javascrpt:void(0);" title="JEECG-Mybatis 演示系统">jeecg</a></span>
   </div>
  </div>
  <!-- Link JScript-->
  <script type="text/javascript" src="/plug-in/jquery/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="/plug-in/jquery/jquery.cookie.js"></script>
  <script type="text/javascript" src="/plug-in/login/js/jquery-jrumble.js"></script>
  <script type="text/javascript" src="/plug-in/login/js/jquery.tipsy.js"></script>
  <script type="text/javascript" src="/plug-in/login/js/iphone.check.js"></script>
  <script type="text/javascript" src="/plug-in/login/js/login.js"></script>
 </body>
</html>