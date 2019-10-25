var baseUrl = $.walk.ctx + '/demo/callapi';

//页面初始化
$(function(){
});


//操作单条记录
function operRecord(val, row){
	var operhtml = [];
	operhtml.push("<a onclick=\"forwardUserView('" + row.userName + "', '" + row.realName + "')\">详情</a>");
	operhtml.push("<a onclick=\"showUserViewByAjax('" + row.userName + "', '" + row.realName + "')\">详情(ajax)</a>");
	return operhtml.join("");
	
//	//绑定查看用户事件
//	var viewId = $.walk.live("click", function(ele) {
//		forwardUserView(row.userId, row.realName);
//	});
//	
//	var operhtml = [];
//	operhtml.push('<a id="' + viewId + '">详情</a>');
//	return operhtml.join("");
}

//进入用户详情界面
function forwardUserView(userName, realName){
	var url = baseUrl + "/forwardUserViewDemo/" + userName;
	var title = "查看详情[" + realName + "]";
	$.walk.openUrlDialog(url, title, 1000, 400, 20);
}

//查看用户详情(ajax)
function showUserViewByAjax(userName, realName){
	$.ajax({
		url : $.walk.ctx + "/callapi/call/demo/qryUserInfo",
		data : {
			userName: userName
		},
		type : "POST",
		cache: false,
		success : function(response){
			console.log(response);
			alert(JSON.stringify(response, null, "   "));
		}
	});
}