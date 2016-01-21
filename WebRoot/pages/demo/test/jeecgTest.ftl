<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<#include "/pages/head.ftl" >
  </head>
  <body class="easyui-layout">
 	 <!-- Search panel start -->
 	 <div class="ui-search-panel" region="north" style="height: 80px;" title="过滤条件" data-options="striped: true,collapsible:false,iconCls:'icon-search',border:false" >  
 	 <form id="searchForm">
        <p class="ui-fields">
			<label class="ui-label">年龄:</label><input name="age" class="easyui-box ui-text" style="width:100px;">
			<label class="ui-label">名字:</label><input name="name" class="easyui-box ui-text" style="width:100px;">
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
		     	   <div class="ftitle">测试</div>
					<div class="fitem">
						<label>年龄</label>
						<input name="age" type="text" maxlength="" class="easyui-numberbox" data-options="required:true" missingMessage="请填写年龄">
					</div>
					<div class="fitem">
						<label>名字</label>
						<input name="name" type="text" maxlength="255" class="easyui-validatebox" data-options="required:true" missingMessage="请填写名字">
					</div>
					<div class="fitem">
						<label>工资</label>
						<input name="salary" type="text" maxlength="" class="easyui-numberbox" data-options="precision:2,groupSeparator:','" missingMessage="请填写工资">
					</div>
					<div class="fitem">
						<label>出生日期</label>
						<input name="createdt" type="text" maxlength="" class="easyui-datetimebox" data-options="" missingMessage="请填写出生日期">
					</div>
  			</div>
     	</form>
  	 </div>
  	 <script type="text/javascript" src="${base}/view/demo/test/page-jeecgTest.js"></script>
  </body>
</html>
