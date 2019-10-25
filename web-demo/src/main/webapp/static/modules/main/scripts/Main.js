var IFM = "IFM_";
$(function() {
	//初始化顶部菜单
	initTop();
	
	//初始化下拉列表
	initDropdown();
	
	//初始化左侧菜单
	initLeftMenu();
	
	//加载返回顶部组件
	if(!$.isIE8Under()){
		seajs.use('$scrolltop');
	}
	
	//初始化公告
	$('.notice-content ul').slideUpExt();
	
	//打开指定菜单
	openMenuById($.walk.getValueByUrl("menuId"));
	
});

//初始化下拉列表
function initDropdown(){
	$("#dropdown").hover(
		//mouseenter
		function(){
			var _this = $(this);
			$("#dropdown-list").css({
				"top" : _this.offset().top + _this.height() + "px",
				"left" : _this.offset().left - 175 + "px",
				"width" : "260px"
			}).show();
		},
		//mouseleave
		function(){
			//$("#dropdown-list").hide();
		}
	);
	
	$(document).unbind("click").bind("click", function(event) {
		if($("#dropdown-list") != $(event.target)){
			$("#dropdown-list").hide();
		}
	});
	
	//绑定退出
	$("#logout").bind('click', function(){
		$.walk.confirm('确认退出吗？', function(ok){
			if(ok){
				window.location.href = $.walk.ctx + "/logoutProxy";
			}
		});
	});
	
	//绑定个人信息
	$("#myProfile").bind('click', function(){
		addTab('myProfile_tab', '个人信息修改', $.walk.ctx + '/profile/myProfile');
	});
	
}

//初始化顶部
function initTop(){
	$("#nav-top").find(".menuItem").click(function(){
		$(this).siblings().removeClass("curr");
		$(this).addClass("curr");
		
		var childMenus = $(".menu-list[parentMenuId='"+$(this).attr("menuId")+"']");
		childMenus.siblings().slideUp();
		childMenus.slideDown();
		
		//如果左侧收起则展开
		var arrow = $('#arrow');
		if(arrow.hasClass("expand")){
			$('#arrow').click();
		}
	});
}

//初始化左侧导航菜单
function initLeftMenu(){
	//绑定左侧菜单点击事件
	$("#menu .menu-list li .item a").bind('click', function(){
		$("#nav-mid .menu-list li .item a").removeClass("active");
		$(this).addClass("active");
	});
	
	//展开/收起
	$("#menu .menu-list li").find("a.title,div.menu-img").bind('click', function(){
		var _this = $(this);
		var arrow = _this.parent().find(".menu-img");
		if(arrow.hasClass("up")){
			_this.parent().addClass("up");
			_this.parent().find(".menu-img").removeClass("up");
			_this.parent().find(".item").slideDown();
		} else {
			_this.parent().removeClass("up");
			_this.parent().find(".menu-img").addClass("up");
			_this.parent().find(".item").slideUp();
		}
	});
	
	//初始化菜单快捷搜索
	initQuickSearch();
	
	//记录左侧菜单的宽度
	$("#nav-mid-left").attr("width", $("#nav-mid-left").width());
	$("#nav-mid-right").attr("width", $("#nav-mid-right").width());
	
	//展开/收起
	$("#arrow").click(function(){
		var arrow = $(this);
		var width = $("#nav-mid").width();
		if(arrow.hasClass("collapse")){
			arrow.removeClass("collapse").addClass("expand");
			$(".search-box").hide();
			$("#menu").hide();
			$("#nav-mid-left").animate({width:0}, "slow", function(){
        		$(this).hide();
        	});
		} else {
			width = $("#nav-mid-right").attr("width");
			arrow.removeClass("expand").addClass("collapse");
			$("#nav-mid-left").show().animate({width:$("#nav-mid-left").attr("width")}, "slow", function(){
				$(".search-box").show();
				$("#menu").show();
			});
		}
		
		//重新设置面板宽度
		$('.tabs-container, .tabs-header, .tabs-wrap').width(width);
		$('.tabs-panels,.tabs-panels .panel,.tabs-panels .panel-body').width(width - 10);
	});
}

//首页加载成功后
function homeLoadSuccess(){
	setTimeout(function(){
		$('#arrow').click();
	}, 1000);
}

//初始化菜单快捷搜索
function initQuickSearch(){
	//注册回车事件
	$(document).keydown(function(event){
		if(event.keyCode == 13){
			quickSearch();
		}
	});
	
	//快捷搜索按钮事件
	$("#quickSearchBtn").click(function(){
		quickSearch();
	});
}

//显示目标目录
function showTargetModule(){
	$("#menu").slideDown();
	$("#searchMenuModule").hide();
}

//快捷搜索
function quickSearch(){
	var value = $("#quickSearch").val();
	if($.trim(value)){
		var searchedMenus = $("#menu").find(".menu-list li .item").find("a[text*='" + value + "']");
		$("#searchMenuModule").slideDown();
		$("#menu").hide();
		$("#searchMenuModule").find(".menu-list li .item").empty().append(searchedMenus.clone(true));
	} else {
		showTargetModule();
	}
}

//打开指定菜单
function openMenuById(menuId){
	if(menuId){
		setTimeout(function(){
			$("#menu").find(".menuItem[menuId='" + menuId + "']").click();
		}, 1000);
	}
}

//JavaScript Document
(function($) {
	$.fn.extend({
		slideUpExt: function(value) {
			var docthis = this;
			//默认参数
			value = $.extend({
				'li_h': '30',
				'time': 2000,
				'movetime': 1000
			}, value);

			//向上滑动动画
			function autoani() {
				$('li:first', docthis).animate({
					'margin-top': -value.li_h
				}, value.movetime, function() {
					$(this).css('margin-top', 0).appendTo('.notice-content ul');
				});
			}

			//自动间隔时间向上滑动
			var anifun = setInterval(autoani, value.time);

			//悬停时停止滑动，离开时继续执行
			$(docthis).children('li').hover(function() {
				clearInterval(anifun); //清除自动滑动动画
			}, function() {
				anifun = setInterval(autoani, value.time); //继续执行动画
			});
		}
	});
})(jQuery);