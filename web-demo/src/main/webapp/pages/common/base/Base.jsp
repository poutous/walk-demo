<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
<%@ taglib uri="http://walkframework.org/tags" prefix="w"%>
<%@ taglib uri="http://walkframework.org/functions" prefix="util"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="subject" value="${util:getSubject()}"/>
<c:set var="principal" value="${subject.principal}"/>