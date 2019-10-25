<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%--指定资源版本号--%>
<c:set var="resourcesRandomVersion" value="<%=String.valueOf(java.lang.Math.random()*100)%>"/>
<w:set var="${util:getContextProperty('resources.global.vname')}" value="${empty util:getContextProperty('resources.version') ? resourcesRandomVersion : util:getContextProperty('resources.version')}"/>