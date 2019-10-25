<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/pages/common/base/Head.jsp"%>
<title>用户修改</title>
</head>
<body>
<div class="wrapper">
	<div class="w-panel">
        <div class="w-panel-content">
        	<form id="userForm" name="userForm" class="w-form" method="post" action="${ctx}/demo/user/modifyUser" validXml='${util:validXml("demo/UserValidator.xml")}'>
        		<!-- 隐藏区 -->
				<input type="hidden" name="userId" value="${userInfo.userId}" />
				
				<!-- 修改区 -->
				<div class="find_inbox_list2">
					<table>
						<tr>
							<td class="字段">用户名称 : <span class="required">*</span></td>
							<td>
								<input type="text" id="userName" name="userName" class="w180" value="${userInfo.userName}" readonly="readonly"/>
							</td>
							<td class="字段">用户姓名 : <span class="required">*</span></td>
							<td>
								<input type="text" id="realName" name="realName" class="w180" value="${userInfo.realName}"/>
							</td>
						</tr>
						<tr>
							<td class="字段">性别 : <span class="required">*</span></td>
							<td>
								<select id="sex" name="sex" class="w-select2 w180">
									<w:options typeId="SEX" isfull="false" defaultValue="${userInfo.sex}"/>
								</select>
							</td>
							<td class="字段">身份证号码 : <span class="required">*</span></td>
							<td>
								<input type="text" id="userPid" name="userPid" class="w180" value="${userInfo.userPid}"/>
							</td>
						</tr>
						<tr>
							<td class="字段">手机号码 : <span class="required">*</span></td>
							<td>
								<input type="text" id="serialNumber" name="serialNumber" class="w180" value="${userInfo.serialNumber}"/>
							</td>
							<td class="字段">电子邮箱 : <span class="required">*</span></td>
							<td>
								<input type="text" id="email" name="email" class="w180" value="${userInfo.email}"/>
							</td>
						</tr>
						<tr>
							<td class="字段">用户状态 : <span class="required">*</span></td>
							<td>
								<select id="userState" name="userState" class="w-select2 w180" value="${userInfo.userState}">
									<w:options typeId="USER_STATE" isfull="false"/>
								</select>
							</td>
						</tr>
						<tr>
							<td class="字段">附件： <span class="required">*</span></td>
							<td>
								<w:ajaxfileupload id="attachment" types="txt|sql|zip|rar" fileIds="${userInfo.fileId}" limit="1"/>
							</td>
						</tr>
					</table>
				</div>
				<div class="w-button-row">
					<a class="w-a-btn orange" onclick="modifyUser();" href="javascript:void(0)">修改</a>
					<a class="w-a-btn blue" onclick="$.walk.closeDialog();" href="javascript:void(0)">关闭</a>
				</div>
			</form>
        </div>
    </div>
</div>
<script>
//修改用户
function modifyUser(){
	if(confirm("确认修改吗？")){
		$.walk.ajaxSubmit("userForm", function(message){
			$.walk.alert(message, function(){
				if(message.isError != true){
					$.walk.closeDialog();
					$.walk.openerWindow().$("#queryBtn").click();
				}
			});
		});
	}
}
</script>
</body>
</html>