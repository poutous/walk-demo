<%@ page language="java" pageEncoding="UTF-8" isErrorPage="true"%>
<%@ include file="/pages/common/base/Base.jsp"%>
<!-- 使用框架定义页面 -->
<c:set var="common" value="<%=org.walkframework.base.system.common.Common.getInstance()%>"/>
<w:fm path="error/error" var="common" value="${common}"/>