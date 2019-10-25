var baseUrl = $.walk.ctx + '/demo/user';

//页面初始化
$(function(){
});

//进入用户新增界面
function forwardUserCreate(){
	var url = $.walk.ctx + "/forward/demo/user/UserCreate";
	var title = "新增用户";
	$.walk.openUrlDialog(url, title, 1000, 400, 20);
}

//操作单条记录
function operRecord(val, row){
	var operhtml = [];
	operhtml.push("<a onclick=\"forwardUserModify('" + row.userId + "', '" + row.realName + "')\">修改</a>");
	operhtml.push("<a onclick=\"forwardUserView('" + row.userId + "', '" + row.realName + "')\">查看</a>");
	operhtml.push("<a onclick=\"delUser('" + row.userId + "', '" + row.realName + "', '0')\">删除</a>");
	return operhtml.join("");
	
//	//绑定查看用户事件
//	var viewId = $.walk.live("click", function(ele) {
//		forwardUserView(row.userId, row.realName);
//	});
//	//绑定修改用户事件
//	var modifyId = $.walk.live("click", function(ele) {
//		forwardUserModify(row.userId, row.realName);
//	});
//	//绑定删除用户事件
//	var delId = $.walk.live("click", function(ele) {
//		delUser(row.userId, row.realName);
//	});
//	
//	var operhtml = [];
//	operhtml.push('<a id="' + viewId + '">查看</a>');
//	operhtml.push('<a id="' + modifyId + '">修改</a>');
//	operhtml.push('<a id="' + delId + '">删除</a>');
//	return operhtml.join("");
}

//进入用户详情界面
function forwardUserView(userId, realName){
	var url = baseUrl + "/forwardUserView/" + userId;
	var title = "查看用户[" + realName + "]";
	$.walk.openUrlDialog(url, title, 1000, 400, 20);
}

//进入用户修改界面
function forwardUserModify(userId, realName){
	var url = baseUrl + "/forwardUserModify/" + userId;
	var title = "修改用户[" + realName + "]";
	$.walk.openUrlDialog(url, title, 1000, 400, 20);
}

//删除用户
function delUser(userId, realName){
	var confirmMsg = '确认删除用户['+realName+']吗？';
	$.walk.confirm(confirmMsg, function(ok){
		if(ok){
			$.ajax({
				url : baseUrl + "/delUser/" + userId,
				type : "POST",
				cache: false,
				success : function(response){
					$.walk.alert(response, function(){
						$("#queryBtn").click();
					});
				}
			});
		}
	});
}

//打开批量导入窗口
function openImpWin(){
	$("#impWindow").window({
		title : '批量导入',
		width : 400,
		height : 300,
		top : 20,
		collapsible : false,
		minimizable : false,
		maximizable : true,
		resizable : false,
		draggable : true,
		modal: true,
		openAnimation : 'slide',
		closeAnimation : 'slide'
	}).show();
}

//批量导入
function importUsers(){
	$.walk.confirm("确认导入吗？", function(ok){
		if(ok){
			$.walk.ajaxSubmit("impForm", function(message){
				$.walk.alert(message, function(){
					if(message.isError != true){
						$("#impWindow").window("close");
						$("#queryBtn").click();
					}
				});
			});
		}
	});
}