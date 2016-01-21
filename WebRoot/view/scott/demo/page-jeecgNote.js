$package('jeecg.jeecgNote');
jeecg.jeecgNote = function(){
	var _box = null;
	var _this = {
		config:{
			event:{
				add:function(){
					$('#typeIds_combobox').combobox('reload');
					_box.handler.add();
				},
				edit:function(){
					$('#typeIds_combobox').combobox('reload');
					_box.handler.edit();
				}
			},
  			dataGrid:{
  				title:'公告',
	   			url:'dataList.do',
	   			columns:[[
					{field:'id',checkbox:true},
					{field:'title',title:'标题',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.title;
							}
						},
					{field:'content',title:'详细描述',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.content;
							}
						},
					{field:'crtuser',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.crtuser;
							}
						},
					{field:'crtuser_name',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.crtuser_name;
							}
						},
					{field:'create_dt',title:'建创时间',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.create_dt;
							}
						},
					{field:'deleted',title:'',align:'center',sortable:true,
							formatter:function(value,row,index){
								return row.deleted;
							}
						},
					]]
			}
		},
		init:function(){
			_box = new YDataGrid(_this.config); 
			_box.init();
		}
	}
	return _this;
}();

$(function(){
	jeecg.jeecgNote.init();
});