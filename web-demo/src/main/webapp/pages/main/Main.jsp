<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/pages/common/base/Head.jsp"%>
<w:link href="/static/modules/main/css/base.css"/>
<w:link href="/static/modules/main/css/style.css"/>
<w:script src="/static/modules/main/scripts/tab.js"/>
<w:script src="/static/modules/main/scripts/Main.js"/>
<title>${util:getContextProperty('app.title')}</title>
</head>
<body>
<div class="container" style="background:#f5f8fb;">
<!-- 顶部区域 -->
<div id="nav-top" class="header clearfix">
	<div class="header-l">
	    <img src="${ctx}/static/modules/main/images/logo.png">
	    <div class="logo-name">${util:getContextProperty('app.title')}</div>
	</div>
	<div class="header-r clearfix">
		<c:forEach items="${treeNode}" var="node1" varStatus="status1">
			<div class="item menuItem ${status1.index==0?'curr':''}" menuId="${node1.menuNode.MENU_ID}">
				<img src="${ctx}/static/modules/main/images/icon/icon${empty node1.menuNode.IMAGE_INDEX?'1':node1.menuNode.IMAGE_INDEX}.png" alt="">
		        <span class="text">${node1.menuNode.MENU_TITLE}</span>
		    </div>
		</c:forEach>
		<div class="item dropdown" id="dropdown">
	        <img src="${ctx}/static/modules/main/images/icon/icon-head.png" alt="" style="width: 24px; height: 24px; margin-top: 4px;">
	        <span class="text">${principal.staffName}</span>
	    </div>
	</div>
</div>

<!-- 中间区域 -->
<div id="nav-mid" class="container-warp clearfix">
	<!-- 展开/收起 -->
	<div id="arrow" class="arrow collapse" title="展开/收起"></div>
	<!-- 左侧区域 -->
    <div id="nav-mid-left" class="con-left">
        <div class="search-box">
            <div class="radius-box clearfix">
                <div class="radius-l"></div>
                <div class="radius-c">
                    <div class="input-serch">
                        <input id="quickSearch" type="text" placeholder="菜单快捷搜索...">
                        <img id="quickSearchBtn" src="${ctx}/static/modules/main/images/icon/icon-search.png" alt="">
                    </div>
                </div>
                <div class="radius-r"></div>
            </div>
        </div>
        <!-- 菜单展示区  line61  style="display: ${status2.index==0 || status2.index==1?'':'none'}" -->
        <div class="menu" id="menu">
        	<c:forEach items="${treeNode}" var="node1" varStatus="status1">
        		<ul class="menu-list" parentMenuId="${node1.menuNode.MENU_ID}" style="display: ${status1.index==0?'':'none'}">
        			<c:forEach items="${node1.children}" var="node2" varStatus="status2">
						<li class="${status2.last ? '':'no-border'} ${status2.first ? 'up':''}">
							<img src="${ctx}/static/modules/main/images/icon/icon${empty node2.menuNode.IMAGE_INDEX?'20':node2.menuNode.IMAGE_INDEX}.png" alt="">
		                    <a class="title" href="javascript:void(0)">${node2.menuNode.MENU_TITLE}</a>
		                    <div class="menu-img"></div>
		                    <div class="item">
		                    	<c:forEach items="${node2.children}" var="node3" varStatus="status3">
			                        <a href="javascript:void(0)" menuId="${node3.menuNode.MENU_ID}" onclick="redirectToPage('${node3.menuNode.MOD_NAME}', this);" class="menuItem ${status3.last ? 'no-border':''}" text="${node3.menuNode.MENU_TITLE}">
			                            <img class="menu-a-icon-deafult" src="${ctx}/static/modules/main/images/icon/icon22.png" alt="">
			                            <div>${node3.menuNode.MENU_TITLE}</div>
			                        </a>
						    	</c:forEach>
		                    </div>
		                </li>
					</c:forEach>
	            </ul>
			</c:forEach>
        </div>
        
        <!-- 菜单快捷结果区 -->
        <div class="menu" id="searchMenuModule" style="display: none">
            <ul class="menu-list">
           	 	<li class="no-border up">
                    <a class="title" href="javascript:void(0)">搜索结果</a>
                    <div class="menu-img"></div>
                    <div class="item">
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- 右侧区域 -->
    <div id="nav-mid-right" class="content-wrap">
        <div class="tabs" id="tabs">
            <div title="<span id='TITLE_HOME_PAGE'>首页</span>" class="home" data-options="iconCls:'icon-home'" style="overflow:hidden;">
            	欢迎进入${util:getContextProperty('app.title')}
            	<!--  
				<iframe class="tabsFrame" scrolling="no" frameborder="0" width="100%" height="100%" style="min-height: 675px;" id="IFM_HOME" name="IFM_HOME" src="${ctx}/allLifeCycleView/forwardAllLifeCyclePage" onload="homeLoadSuccess()"></iframe>
				-->
	        </div>
        </div>
    </div>
</div>
<input type="text" id="eparchyCode" value="${principal.eparchyCode}" style="display: none"/>
<input type="text" id="cityCode" value="${principal.cityCode}" style="display: none"/>
<!-- 底部区域 -->
<div class="footer">
	<p>XXX有限公司机构代码证</p>
	<p>XXX有限公司XXX省分公司 版权所有</p>
</div>

<!-- 下拉列表 -->
<div>
	<ul class="w-header-dropdown" id="dropdown-list">
	    <li><a href="javascript:void(0)" title="${principal.departName}"><img src="${ctx}/static/modules/main/images/icon/depart.png" width="16" height="16"/>${principal.departName}</a></li>
	    <!--<li><a href="javascript:void(0)" id="myProfile"><img src="${ctx}/static/modules/main/images/icon/profile.png" width="16" height="16"/>个人信息</a></li>-->
	    <li><a href="javascript:void(0)" id="logout"><img src="${ctx}/static/modules/main/images/icon/logout.png" width="16" height="16"/>退出</a></li>
	</ul>
</div>
</div>
</body>
</html>