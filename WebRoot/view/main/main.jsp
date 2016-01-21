<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>jeecg-mybatis-framework</title>
    <%@include file="/view/resource.jsp" %>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/main.css">
    <script type="text/javascript" src="<%=basePath%>/js/ux/main/main.js"></script>
  </head>
  <body class="easyui-layout">
 	<div class="ui-header" data-options="region:'north',split:true,border:false" style="height:40px;overflow: hidden;">
 	<h1>JEECG-Mybatis 演示系统V1.0</h1>
 	<div  class="ui-login">
 		<div class="ui-login-info">
	 		欢迎 <span class="orange">${user.nickName}</span> 第[<span class="orange">${user.loginCount}</span>]次登录 
	 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 		<a class="modify-pwd-btn"  href="javascript:void(0);">修改密码</a> |
 			<a class="logout-btn" href="<%=basePath%>/logout.shtml">退出</a>
 		</div>
 	</div>
 	</div>
	<!-- 树形菜单 -->
	<div data-options="region:'west',split:true,title:'功能导航'" style="width:200px;">
		<div id="tree-box" class="easyui-accordion" data-options="fit:true,border:false">
			<c:forEach var="item" items="${menuList}">
			<div title="${item.text}">
				<c:forEach var="node" items="${item.children}">
				<a class="menu-item" href="<%=basePath%>${node.url}">${node.text}</a>
				</c:forEach>
			</div>
			</c:forEach>
		</div>
	</div>
	<div data-options="region:'south',split:true,border:false" style="height: 30px;overflow:hidden;">
		<div class="panel-header" style="border: none;text-align: center;" >CopyRight &copy; 2016 JIBAOLE 版权所有. &nbsp;&nbsp;https://github.com/jibaole</div>
	</div>
	<!-- 中间内容页面 -->
	<div data-options="region:'center'" >
		<div class="easyui-tabs" id="tab-box" data-options="fit:true,border:false">
			<div title="Welcome" style="padding:20px;overflow:hidden;"> 
				<div style="margin-top:20px;">
					<h3>简要说明</h3>
					<ul>
					    <li>JEECG[J2EE Code Generation]是一款基于代码生成器的J2EE智能开发框架,借助该框架可以节省50%的工作量,实现代码生成+手工merge的半智能开发</li>
					    <li>代码生成：根据表生成对应的Bean,Service,Dao,Action,XML,JSP等,增删改查功能直接使用,实现了快速开发</li> 
						<li>jeecg-mybatis-framework,采用SpringMVC+Mybatis等主流框架</li> 
						<li>支持数据库: Mysql,Oracle10g</li> 
						<li>前端:使用Jquery和Easyui技术.JS封装简洁,操作简单.</li> 
						<li>权限:对菜单,按钮控制.根据登陆用户权限展示拥有的菜单和按钮.</li> 
						<li>拦截:对所有无权限URL进行拦截,防止手动发送HTTP请求,确保系统全性.</li> 
					</ul>
				</div>
				
				<div style="margin-top:20px;">
					<h3>技术交流</h3>
					<p>  &nbsp;&nbsp;本系统由JEECG开发提供,如需个性化定制,外包项目,可与本人联系.</p>
					<ul>
						<li>交流群:106259349, 106838471, 289782002</li> 
						<li>开发者：Paul</li>
						<li>邮箱：admin@163.com</li> 
						<li>官网：<a href="https://github.com/jibaole">https://github.com/jibaole</a></li>
					</ul>
				</div>
				
				
				
			</div>
		</div>	
	</div>
	<!--  modify password start -->
	<div id="modify-pwd-win"  class="easyui-dialog" buttons="#editPwdbtn" title="修改用户密码" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:350px;height:200px;">
		<form id="pwdForm" action="modifyPwd.do" class="ui-form" method="post">
     		 <input class="hidden" name="id">
     		 <input class="hidden" name="email">
     		 <div class="ui-edit">
	           <div class="fitem">  
	              <label>旧密码:</label>  
	              <input id="oldPwd" name="oldPwd" type="password" class="easyui-validatebox"  data-options="required:true"/>
	           </div>
	            <div class="fitem">  
	               <label>新密码:</label>  
	               <input id="newPwd" name="newPwd" type="password" class="easyui-validatebox" data-options="required:true" />
	           </div> 
	           <div class="fitem">  
	               <label>重复密码:</label>  
	              <input id="rpwd" name="rpwd" type="password" class="easyui-validatebox"   required="required" validType="equals['#newPwd']" />
	           </div> 
	         </div>
     	 </form>
     	 <div id="editPwdbtn" class="dialog-button" >  
            <a href="javascript:void(0)" class="easyui-linkbutton" id="btn-pwd-submit">Submit</a>  
            <a href="javascript:void(0)" class="easyui-linkbutton" id="btn-pwd-close">Close</a>  
         </div>
	</div>
	<!-- modify password end  -->
  </body>
</html>
