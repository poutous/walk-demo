var baseUrl = $.walk.ctx + '/demo/reward';

//页面初始化
$(function(){

	//初始化表格
	initDataGrid();
});

//初始化表格
function initDataGrid(){
	$('#dataGrid').datagrid({
		onDblClickCell: function(index, field, value){
			$('#dataGrid').datagrid('getRows')[index].editing = 1;
			$('#dataGrid').datagrid('beginEdit', index);
		},
		onEndEdit:function(index, row){
			var changes = $(this).datagrid('getChanges');
			if(changes.length == 0)	return;
			
			//保存
			$.ajax({
                type: "post",
                url: baseUrl + "/save",
                data: changes[0],
                success: function(response) {
                	$.walk.alert(response, function(){
						//queryList();
					});
                }
            });
	    },
	    onBeforeEdit:function(index, row){
	        $(this).datagrid('refreshRow', index);
	    },
	    onAfterEdit:function(index, row){
	        row.editing = 0;
	        $(this).datagrid('refreshRow', index);
	    },
	    onCancelEdit:function(index, row){
	        row.editing = 0;
	        $(this).datagrid('refreshRow', index);
	    }
	});
	
	//查询列表
	queryList();
}

//查询列表
function queryList(){
	$.walk.queryList('dataGrid', 'conditionForm');
}

//编辑单条记录, row.editing定义了三种状态： 0、初始态	1、修改	2、新增
function operRecord(val, row, index){
	if(row.editing == 1) {
        var s = '<a href="javascript:void(0)" onclick="saveRow(this)">保存</a> ';
        var c = '<a href="javascript:void(0)" onclick="cancelRow(this)">取消</a>';
        return s + c;
    }else if(row.editing == 2){
    	var a = '<a href="javascript:void(0)" onclick="saveRow(this)">保存</a> ';
    	var g = '<a href="javascript:void(0)" onclick="giveUpRow(this)">取消</a>';
    	return a + g;
    }else{
    	var e = '<a href="javascript:void(0)" onclick="editRow(this)">修改</a> ';
    	var d = '<a href="javascript:void(0)" onclick="deleteRow(this)">删除</a>';
    	return e + d;
    }
}

//获取行索引
function getRowIndex(target){
    var tr = $(target).closest('tr.datagrid-row');
    return parseInt(tr.attr('datagrid-row-index'));
}

//编辑行
function editRow(target){
	$('#dataGrid').datagrid('getRows')[getRowIndex(target)].editing = 1;
	var index = getRowIndex(target);
    $('#dataGrid').datagrid('beginEdit', index);
}

//插入行
function insertRow(index){
	$('#dataGrid').datagrid('insertRow', {
		index: index,
		row: {
			editing : 2,
		}
	});
	$('#dataGrid').datagrid('beginEdit', 0);
}

//保存
function saveRow(target){
    $('#dataGrid').datagrid('endEdit', getRowIndex(target));
}

//取消
function cancelRow(target){
    $('#dataGrid').datagrid('cancelEdit', getRowIndex(target));
}

//取消添加
function giveUpRow(target){
	$('#dataGrid').datagrid('deleteRow', getRowIndex(target));
}

//删除数据请求调用
function deleteInvoke(ids){
	$.walk.confirm("确认删除吗？", function(ok){
		if(ok){
			$.ajax({
				type: "POST",
				url: baseUrl + "/delete",
				data: {
					ids: ids
				},
				success: function(response) {
					$.walk.alert(response, function(){
						queryList();
					});
				}
			});
		}
	});
}

//删除行
function deleteRow(target){
	var row = $('#dataGrid').datagrid('getRows')[getRowIndex(target)];
	deleteInvoke(row.ruleId);
}

//批量删除
function deleteBatch(){
	var rows = $("#dataGrid").datagrid('getChecked');
	if(rows.length == 0) {
		$.walk.alert("请先选择数据！");
		return;
	}
	var ids = $.walk.checkeds2str(rows, 'ruleId');
	deleteInvoke(ids);
}
