<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/pages/common/base/Head.jsp"%>
<title>正在退出，请稍后...</title>
<script>
$(function() {
	$.walk.getTopWindow().location.href = $.walk.ctx + "/logout";
});
</script>
</head>
<body>
<div class="container">
	<h2>正在退出，请稍后...</h2>
</div>
</body>
</html>