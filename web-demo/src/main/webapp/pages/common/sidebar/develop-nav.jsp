<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/pages/common/base/Base.jsp"%>

<div class="menuPart underline">
    <div class="title">
	    <div class="icon"><img src="${ctx}/static/component/resources/images/nav/title_0.png"></div>
        <span>参考例子</span>
        <div class="arrow down"></div>
    </div>
    <div class="menuList">
        <div class="menu" onclick="redirectToPage('forward/demo/user/UserManager', this);">用户管理</div>
        <div class="menu" onclick="redirectToPage('forward/demo/reward/RewardManager', this);">佣金规则</div>
        <div class="menu" onclick="redirectToPage('forward/demo/callapi/ListDemo', this);">API服务调用示例</div>
    </div>
</div>
<div class="menuPart">
    <div class="title">
	    <div class="icon"><img src="${ctx}/static/component/resources/images/nav/title_0.png"></div>
        <span>平台管理</span>
        <div class="arrow down"></div>
    </div>
    <div class="menuList">
        <div class="menu" onclick="redirectToPage('common/exportLog/toPage', this);">我的导出</div>
        <div class="menu" onclick="redirectToPage('forward/act/model/ActModelList', this);">流程模型管理</div>
        <div class="menu" onclick="redirectToPage('console/session/go/sessionManager', this);">在线会话管理</div>
        <div class="menu" onclick="redirectToPage('console/staticparam/go/staticParamCacheManager', this);">静态参数表缓存管理</div>
        <div class="menu" onclick="redirectToPage('console/cache/go/cacheManager', this);">缓存管理</div>
        <div class="menu" onclick="redirectToPage('console/queue/go/queueManager', this);">队列管理</div>
        <div class="menu" onclick="redirectToPage('console/pubsub/go/pubSubManager', this);">发布/订阅管理</div>
    </div>
</div>
