<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/pages/common/base/Head.jsp"%>
<title>用户管理</title>
<w:script src="/static/modules/demo/UserManager.js"/>
</head>
<body>
<div class="wrapper">
	<div class="w-panel">
		<!-- 查询条件区 -->
        <div class="w-panel-content">
        	<form id="conditionForm" class="w-form">
	        	<div class="find_inbox_list3">
					<table>
						<tr>
							<td class="字段">用户名称 : </td>
							<td>
								<input name="userName" type="text" class="w180"/>
							</td>
							<td class="字段">用户姓名 : </td>
							<td>
								<input name="realName" type="text" class="w180"/>
							</td>
							<td class="字段">手机号码 : </td>
							<td>
								<input name="serialNumber" type="text" class="w180"/>
							</td>
						</tr>
						<tr>
							<td class="字段">用户性别 :</td>
							<td>
								<select name="sex" class="w-select2 w180">
									<w:options typeId="SEX"/>
								</select>
							</td>
							<td class="字段">用户状态: </td>
							<td>
								<select name="userState" class="w-select2 w180">
									<w:options typeId="USER_STATE"/>
								</select>
							</td>
							<td colspan="10" align="center">
								<a id="queryBtn" class="w-a-btn orange EnterPress" onclick="$.walk.queryList('dataGrid', 'conditionForm');" href="javascript:void(0)">查询</a>
							</td>
						</tr>
					</table>
				</div>
			</form>
        </div>
        
        <!-- 工具栏 -->
		<div class="w-panel-toolbar">
       		<ul>
       		    <li><a onclick="forwardUserCreate();"><img src="${ctx}/static/component/resources/images/icons/color/18/new.png"/>新增</a></li>
       		    <li><a onclick="openImpWin();"><img src="${ctx}/static/component/resources/images/icons/color/18/import.png"/>导入</a></li>
       		    <li><a id="exportBtn" isAsyn="true" asynExportWay="1|2"><img src="${ctx}/static/component/resources/images/icons/color/18/export.png"/>导出</a></li>
		    </ul>
		</div>
		
		<!-- 数据表 -->
        <div class="w-panel-content">
			<table id="dataGrid" class="easyui-datagrid" exportId="exportBtn"
				url="${ctx}/demo/user/queryUserList" 
				data-options="queryParams:$.walk.getQueryParams('conditionForm'),frozenAlign:'right'">
				<thead data-options="frozen:true">
					<tr>
						<th data-options="field:'oper',width:150,formatter:operRecord,exportable:false,align:'center'">操作区</th>
					</tr>
				</thead>
				<thead>
					<tr>
						<th data-options="field:'userName',width:180">用户名称</th>
						<th data-options="field:'realName',width:180">用户姓名</th>
						<th data-options="field:'sexName',width:180">性别</th>
						<th data-options="field:'serialNumber',width:180">手机号码</th>
						<th data-options="field:'email',width:240">电子邮箱</th>
						<th data-options="field:'userStateName',width:180">用户状态</th>
						<th data-options="field:'remark',tip:true,width:200">备注</th>
					</tr>
				</thead>
			</table>
        </div>
    </div>
</div>

<!-- 导入窗口 -->
<div id="impWindow" style="display: none">
	<form id="impForm" class="w-form" method="post" action="${ctx}/demo/user/importUsers" enctype="multipart/form-data">
    	<div class="find_inbox_list1" style="padding: 20px 10px;">
	    	<table>
				<tr>
					<td>
					   <input name="fileInfo" type="file" class="w-fileinput" style="width: 300px;" />
					</td>
				</tr>
				<tr>
					<td>
					   <a href="${ctx}/static/templates/demo/userInfoImport.xls">导入模板下载</a>
					</td>
				</tr>
			</table>
    	</div>
    	<div class="w-button-row" style="text-align:center;">
			<a class="w-a-btn orange" onclick="importUsers();" href="javascript:void(0)">导入</a>
			<a class="w-a-btn blue" onclick="$('#impWindow').window('close');" href="javascript:void(0)">取消</a>
		</div>
	</form>
</div>
</body>
</html>