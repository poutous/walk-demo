var IFM = "IFM_";
$(function() {
	
	//初始化tab
	initTab();
	
	//iframe自适应
	try{
		iframeResizeInterval();
	}catch(e){}
	
});

//初始化tab
function initTab(){
	$('#tabs').tabs({
		width: getTabsWidth(),
		
		//tab选中时触发事件
		onSelect:function(title, index){
	        try{
	            var tabId =$(title).attr("id");
	            var menuId = tabId.split("TITLE_")[1];
	            chooseLeftMenu(menuId); // 选中标签后给左侧菜单增加选中样式
		        var cTab = getTabLi(tabId);
		        // 是否需要刷新
		        if(cTab.attr("onSelectedRefresh") == "true"){
			        updateTab();
			        cTab.removeAttr("onSelectedRefresh");
		        }
	        }catch(e){}
	    },
	    
		//tab关闭前触发事件
		onBeforeClose : function(title, index){
			var id = $('#tabs').tabs('getTab', index).panel('options').id;
			
			//回收iframe
			recoveryTabFrame(id);
			
	    },
	    
		//tab关闭时触发事件
		onClose : function(title, index){
			//关闭时选中最后一个tab
			var tabs = $('#tabs').tabs('tabs');
			$('#tabs').tabs('select', tabs.length - 1);
			
			//关闭时滚动到最顶部
			pageScrollTop();
	    }
	});
	
	//首页右键绑定
	setTimeout(function(){
		menuRightBind("TITLE_HOME_PAGE");
	}, 1000);
	
	$(".panel-body").css("overflow", "hidden");
}

//添加tab
function addTab(subId, subtitle, url, icon){
	$(".tabs-header").show();
	
	var isHome = (subId == "HOME_PAGE");
	subId = subId ? subId:$.walk.getRandomParam();
	
	url = $.walk._wrapCas(url);
	url = getUrlWithRandom(url);
	var index = -1;
	var tabs = $('#tabs').tabs('tabs');
	for(var i=0; i<tabs.length; i++){
		if(subId == tabs[i].panel('options').id){
			index = i;
			break;
		}
	}
	if(index == -1){
		var tId = "TITLE_" + subId;
		var tab = $('#tabs').tabs('add',{
			id : subId,
			title : '<span id="'+tId+'">'+subtitle+'</span>',
			content : '',
			closable : isHome?false:true,
			iconCls : icon
		});
		var currTab = $('#tabs').tabs('getSelected');
		var ifm = createTabFrame(subId);
		$('#tabs').tabs('update',{
			tab:currTab,
			options:{
				content:ifm
			}
		});
//		ifm.attr("src", url);
		ifm.get(0).src = url;
		
		//加载效果...
		var loadingTarget = $("#nav-mid-right");
		$.walk.showLoading(loadingTarget, null, "47%");
		setTimeout(function(){
			$.walk.hideLoading(loadingTarget);
		}, 5000);
		
		ifm.bind('load', function(){
			$.walk.hideLoading(loadingTarget);
		});
		
		//绑定右键
		menuRightBind(tId, currTab);
		
		//双击关闭tab
		getTabLi(tId).bind('dblclick', function(){
			tabOnDblclick();
		});
		
	}else{
		$('#tabs').tabs('select', index);
	}
	pageScrollTop();
	return subId;
}

/**
 * 菜单右键绑定
 */
function menuRightBind(tabId, tab){
	var refresh = {
		text: "刷新",
	    func: function() {
	        updateTab();
	    }
	}, maximize = {
		text: "最大化",
	    func: function() {
	    	maximizePage();
	    }
	}, minimize = {
		text: "最小化",
	    func: function() {
	    	minimizePage();
	    }
	}, close = {
		text: "关闭",
	    func: function() {
			$('#tabs').tabs('close', $('#tabs').tabs('getTabIndex', tab));
	    }
	}, closeAll = {
		text: "关闭全部",
	    func: function() {
			var tabs = $('#tabs').tabs('tabs');
			for(var i=tabs.length-1; i>0; i--){//首页不关闭
				$('#tabs').tabs('close',i);
			}
	    }
	}, closeOther = {
		text: "关闭其他",
	    func: function() {
	    	var prevall = $('.tabs-selected').prevAll();
	    	if(prevall.length==0){
	    		return false;
	    	}
	    	var nextall = $('.tabs-selected').nextAll();
	    	if(nextall.length==0){
	    		return false;
	    	}
	    	var index = $('#tabs').tabs('getTabIndex', $('#tabs').tabs('getSelected'));
	    	for(var i=index+nextall.length; i>index; i--){//首页不关闭
	    		$('#tabs').tabs('close',i);
	    	}
	    	
	    	for(var i=prevall.length-1; i>0; i--){//首页不关闭
	    		$('#tabs').tabs('close',1);
	    	}
	    }
	}, closeLeft = {
		text: "关闭左侧",
	    func: function() {
	        closeLeftPage();
	    }
	}, closeRight = {
		text: "关闭右侧",
	    func: function() {
	        closeRightPage();
	    }
	}, exit = {
		text: "退出",
	    func: function() {
	        $(document.body).click();
	    }
	};
	
	var menuData = null;
	if(tabId == "TITLE_HOME_PAGE"){//首页
		menuData = [
			[refresh],
			//[maximize,minimize],
			[closeRight],
			[exit]
		];
	} else {
		menuData = [
			[refresh],
			//[maximize,minimize],
			[close,closeRight,closeLeft,closeOther,closeAll],
			[exit]
		];
	}
	var li = getTabLi(tabId);
	seajs.use('$rightmenu', function(){
		li.smartMenu(menuData,{
			name: 'menu',
			beforeShow: function() {
				$('#tabs').tabs('select', $('#tabs').tabs('getTabIndex', tab));
				$.smartMenu.remove();
			},
			afterShow : function(){
				//低版本IE遮罩select
				if($.isIE8Under()){
					$("#smartMenu_menu").bgiframe();
				}
			}
		});
		
	});
}

//获取tab页li对象
function getTabLi(tId){
	return $("#"+tId).parents("li").first();
}

//刷新tab页
function updateTab(url) {
	var currTab = $('#tabs').tabs('getSelected');
	var ifmId = IFM + currTab.panel('options').id;
	if(url) {
//		$("#"+ifmId).attr("src", url);
		$("#"+ifmId).get(0).src = url;
	} else {
		$("#"+ifmId).get(0).contentWindow.location.reload();
	}
}

//根据tabId刷新tab页 
function updateTabById(tabId){
	var tabs = $('#tabs').tabs('tabs');
	for(var i=0; i<tabs.length; i++){
		if(tabId == tabs[i].panel('options').id){
			var tId = "TITLE_" + tabId;
			var cTab = getTabLi(tId);
			cTab.attr("onSelectedRefresh", "true");
			break;
		}
	}
}

//根据tabId刷新tab页 
function closeTabById(tabId){
	var tabs = $('#tabs').tabs('tabs');
	for(var i = 0; i < tabs.length; i++){
		if(tabId == tabs[i].panel('options').id){
			$('#tabs').tabs('close', $('#tabs').tabs('getTabIndex', tabs[i]));
			return true;
		}
	}
	return false;
}

//tab页双击事件
function tabOnDblclick() {
	closeSelectedTab();
}

//tab页双击事件
function closeSelectedTab() {
	//双击关闭tab页
	var index = $('#tabs').tabs('getTabIndex', $('#tabs').tabs('getSelected'));
	if(index == 0){//首页不关闭
		return false;
	}
	$('#tabs').tabs('close',index);
	return true;
}

//最大化
function maximizePage(){
	$("#nav-top").slideUp("slow");
	$("#nav-mid-left").animate({width:0}, "slow", function(){$(this).hide();})
	
	//重置tabs宽度
	resizeTabsWidth();
}

//最小化
function minimizePage(){
	$("#nav-top").slideDown("slow");
	$("#nav-mid-left").show().animate({width:$("#nav-mid-left").attr("width")}, "slow");
	
	//重置tabs宽度
	resizeTabsWidth();
}

//关闭左侧
function closeLeftPage(){
	var prevall = $('.tabs-selected').prevAll();
	if(prevall.length==0){
		return false;
	}
	for(var i=prevall.length-1; i>0; i--){//首页不关闭
		$('#tabs').tabs('close',1);
	}
	return false;
}

//关闭右侧
function closeRightPage(){
	var nextall = $('.tabs-selected').nextAll();
	if(nextall.length==0){
		return false;
	}
	var index = $('#tabs').tabs('getTabIndex', $('#tabs').tabs('getSelected'));
	for(var i=index+nextall.length; i>index; i--){//首页不关闭
		$('#tabs').tabs('close',i);
	}
	return false;
}

//返回页面顶部
function pageScrollTop(){
	$("html, body").animate({scrollTop:"0px"}, 400);
}

//返回页面顶部
function pageScrollBottom(){
	$("html, body").animate({scrollTop:$(window.document).height()}, 400);
}

//重置tabs宽度
function resizeTabsWidth(){
	var width = getTabsWidth();
	setTimeout(function(){
		$('.tabs-container, .tabs-header, .tabs-wrap').width(width);
		$('.tabs-panels, .tabs-panels panel, .tabs-panels panel-body').width(width - 10);
		$('#tabs').find('li.tabs-selected').click();
	}, 400);
}

//tab页 iframe
function createTabFrame(id){
	//使用iframe池，防止iframe占用内存过高
	var tabsIframePool = $("#tabsIframePool");
	if(tabsIframePool.size() == 0){
		$(document.body).append('<div id="tabsIframePool" style="display:none"></div>');
		tabsIframePool = $("#tabsIframePool");
	}
	if(tabsIframePool.find("iframe").size() == 0){
		tabsIframePool.append('<iframe class="tabsFrame" scrolling="no" frameborder="0" width="100%" height="100%" style="min-height: 675px;"></iframe>');
	}
	var ifmId = IFM + id;
	var iframe = tabsIframePool.find("iframe").first();
	iframe.attr("id", ifmId);
	iframe.attr("name", ifmId);
	
	//绑定加载完成后事件
	iframe.unbind("load").bind("load", function(){
		framePageHandle(iframe);
	});
	return iframe;
}

//iframe嵌入页面特殊处理
function framePageHandle(iframe){
	var src = iframe.attr("src");
	if(!src){
		return;
	}
	var contents = iframe.contents();
//	//首页特殊处理
//	if(src.indexOf('action=Main&target=cancelOrder') > -1){
//		contents.find("#navCancelOrder").show();
//		contents.find("#refreshTab1, #m_footer").hide();
//		contents.find("#app").find(".m_nav").css({
//			"position": "unset",
//			"overflow": "hidden"
//		});
//	}
}

//回收iframe
function recoveryTabFrame(id){
	var ifmId = IFM + id;
	var iframe = $("#" + ifmId);
	$.walk.clearFrameCache(iframe.get(0));
	
	iframe.removeAttr("id").removeAttr("name").css("height",'');
	$("#tabsIframePool").append(iframe);
}

//iframe自适应
function iframeResizeInterval(){
	var contentWinH = 0;
	var treeHeight = 0;
	var resizeInterval = setInterval(function(){
		if($("#nav-mid").is(":visible")){
			var menuH = $("#nav-mid-left").height() + 50;
			var frame = $("#tabs").find(".panel:visible").find("iframe");
			
			//同域
			if(sameDomain(frame)){
				var newContentWinH = getFrameContentHeight(frame);
				//console.log(menuH+"--"+contentWinH + "---" + newContentWinH);
				if(contentWinH != newContentWinH){
					contentWinH = newContentWinH + 150;
					var setH = contentWinH > menuH ? contentWinH : menuH;
					frame.height(setH);
				}
			} 
			//跨域
			else{
				frame.attr("scrolling", "auto");
				frame.height(menuH > 675 ? menuH : 675);
			}
		} 
	}, 1500);
	return resizeInterval;
}

//获取Iframe子页面高度
function getFrameContentHeight(frame){
	try{
		if(frame && frame.size() > 0){
			var body = $(frame.get(0).contentWindow.document.body);
			var childrens = body.children();
			if(childrens.length > 1){
				var totalHeight = 0;
				childrens.each(function(){
					if($(this).hasClass("window-mask")){
					} else {
						totalHeight += $(this).height();
					}
				});
				return totalHeight;
			} else {
				return childrens.height();
			}
		} else {
			return 0;
		}
	}catch(e){
		return 0;
	}
}

//判断ifame内容是否是同域
function sameDomain(frame){
	var same = true;
	try{
		if(frame.get(0).contentWindow){
			frame.get(0).contentWindow.document.body;
		}
	}catch(e){
		same = false;
	}
	return same;
}

//获取tabs宽度
function getTabsWidth(){
	var width = $("#nav-mid-right").width();
	return $.isIE8Under() ? (width - 15) : (width + 13);
}

//url后加随机数
function getUrlWithRandom(url){
	if (url.indexOf("random=") == -1) {
		if(url.indexOf("?") == -1) {
			url += "?random=" + $.walk.getRandomParam();
		} else {
			url += "&random=" + $.walk.getRandomParam();
		}
	}
	return url;
}

//转向内容页面
function redirectToPage(url, obj){
	url = url.startsWith('/') || url.toLowerCase().startsWith('http') ? url:($.walk.ctx + '/' + url);
	if(url.startsWith('/choiceAddress')){
		url += '?EPARCHY_CODE='+$('#eparchyCode').val()+'&CITY_CODE=' + $('#cityCode').val();
	}
	
	addTab($(obj).attr("menuId"), $(obj).text().trim(), url);
	
	//记录菜单日志
	recordMenuAccessLog($(obj).attr("menuId"), url);
}

//记录菜单日志
function recordMenuAccessLog(menuId, accessUrl){
	$.ajax({
        url: $.walk.ctx + "/main/recordMenuAccessLog",
        type: "POST",
        data: {
        	menuId: menuId,
        	accessUrl: accessUrl
        },
        cache: false,
        success: function (data) {}
    });
}