<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%@include file="/view/resource.jsp" %>
  </head>
  <body class="easyui-layout">
 	 <!-- Search panel start -->
 	 <div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">标题:</label><input name="title" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">详细描述:</label><input name="content" class="easyui-box ui-text" style="width:100px;">
	    </p>
	    <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search">查询</a>
      </form>  
     </div> 
     <!--  Search panel end -->

     <!-- Data List -->
     <div region="center" border="false" >
     <table id="data-list"></table>
	 </div>
	 
     <!-- Edit Win&Form -->
     <div id="edit-win" class="easyui-dialog" title="Basic window" data-options="closed:true,iconCls:'icon-save',modal:true" style="width:400px;height:380px;">  
     	<form id="editForm" class="ui-form" method="post">  
     		 <input class="hidden" name="id">
     		 <div class="ui-edit">
		     	   <div class="ftitle">公告</div>
					<div class="fitem">
						<label>标题</label>
						<input name="title" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写标题">
					</div>
					<div class="fitem">
						<label>详细描述</label>
						<input name="content" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写详细描述">
					</div>
					<div class="fitem">
						<label></label>
						<input name="crtuser" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写">
					</div>
					<div class="fitem">
						<label></label>
						<input name="crtuser_name" type="text" maxlength="255" class="easyui-validatebox" data-options="" missingMessage="请填写">
					</div>
					<div class="fitem">
						<label>建创时间</label>
						<input name="create_dt" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写建创时间">
					</div>
					<div class="fitem">
						<label></label>
						<input name="deleted" type="text" maxlength="" class="easyui-numberbox" data-options="" missingMessage="请填写">
					</div>
  			</div>
     	</form>
  	 </div>
  	 <script type="text/javascript" src="<%=basePath%>/view/scott/demo/page-jeecgNote.js"></script>
  </body>
</html>
