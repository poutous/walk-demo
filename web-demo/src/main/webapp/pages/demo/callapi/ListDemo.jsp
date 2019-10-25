<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/pages/common/base/Head.jsp"%>
<title>API服务调用示例</title>
<w:script src="/static/modules/demo/ListDemo.js"/>
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
		
		<!-- 数据表 -->
        <div class="w-panel-content">
			<table id="dataGrid" class="easyui-datagrid"
				url="${ctx}/callapi/page/demo/qryUserList" 
				data-options="queryParams:$.walk.getQueryParams('conditionForm'),frozenAlign:'right'">
				<thead data-options="frozen:true">
					<tr>
						<th data-options="field:'oper',width:180,formatter:operRecord,align:'center'">操作区</th>
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
</body>
</html>