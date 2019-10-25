<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/pages/common/base/Head.jsp"%>
<title>佣金管理</title>
<w:script src="/static/modules/demo/RewardManager.js"/>
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
							<td class="字段">规则对象 : </td>
							<td>
								<select name="ruleCode" class="w-select2 w180">
									<w:options typeId="REWARD_RULECODE_DESC"/>
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
       		    <li><a onclick="insertRow(0)"><img src="${ctx}/static/component/resources/images/icons/color/18/new.png"/>新增规则</a></li>
       		    <li><a onclick="deleteBatch()"><img src="${ctx}/static/component/resources/images/icons/color/18/delete.png"/>批量删除</a></li>
		    </ul>
		</div>
		
		<!-- 数据表 -->
        <div class="w-panel-content">
			<table id="dataGrid" class="easyui-datagrid" url="${ctx}/demo/reward/queryRewardRuleList" 
				data-options="nowrap:false,frozenAlign:'right',singleSelect:false">
				<thead data-options="frozen:true">
					<tr>
						<th data-options="field:'oper',width:200,align:'center',formatter:operRecord,exportable:false">操作区</th>
					</tr>
				</thead>
				<thead>
					<tr>
						<th data-options="field:'ck', checkbox:true, exportable:false"></th>
						<th data-options="field:'ruleCodeName',width:120,editor:{
							type:'combobox',
							options:{
								valueField:'dataId',
								textField:'dataName',
								url:'${ctx}/static/component/staticlist/REWARD_RULECODE_DESC',
								required:true,
								onSelect:function(record){
								    var row = $('#dataGrid').datagrid('getRows')[parseInt($(this).closest('tr.datagrid-row').attr('datagrid-row-index'))];
								    row.ruleCode = record.dataId;
								}
							}
						}">规则对象</th>
						<th data-options="field:'ruleOperator',editor:{
							type:'combobox',
							options:{
								valueField:'dataId',
								textField:'dataName',
								url:'${ctx}/static/component/staticlist/REWARD_RULE_OPERATOR',
								required:true
							}
						}">运算符</th>
						<th data-options="field:'ruleValue',width:300,editor:'text',required:true">规则值</th>
						<th data-options="field:'ruleExp',width:200,editor:'text'">规则表达式</th>
						<th data-options="field:'rewardMoney',editor:{type:'numberbox',options:{required:true}}">佣金金额(分)</th>
						<th data-options="field:'ruleStateName',editor:{
							type:'combobox',
							options:{
								valueField:'dataId',
								textField:'dataName',
								url:'${ctx}/static/component/staticlist/RULE_STATE',
								required:true,
								onSelect:function(record){
								    var row = $('#dataGrid').datagrid('getRows')[parseInt($(this).closest('tr.datagrid-row').attr('datagrid-row-index'))];
								    row.ruleState = record.dataId;
								}
							}
						}">规则状态</th>
						<th data-options="field:'ruleDesc',width:300,tip:true,editor:'text'">规则值解释</th>
						<th data-options="field:'remark',width:300,tip:true,editor:'text'">备注</th>
					</tr>
				</thead>
			</table>
        </div>
    </div>
</div>
</body>
</html>