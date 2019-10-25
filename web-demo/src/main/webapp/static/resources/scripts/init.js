/**
 * walk框架初始化
 * 
 * @author shf675
 *
 */
(function($){
//加载必须项
$.walk.init = function(){
	//Start:初始化各部件******************************************************************************************************
	var plugins = [];
	var funcs = [];
	//添加插件和函数
	var addInit = function(plugin, func){
		//插件
		if (typeof plugin == "string") {
			plugins.push(plugin);
		} else if($.isArray(plugin)){
			$.merge(plugins, plugin);
		} else if($.isFunction(plugin)){
			funcs.push(plugin);
		}
		//函数
		if(func && $.isFunction(func)){
			funcs.push(func);
		}
	}
	
	//初始化函数
	var startInit = function(){
		seajs.use(plugins, function(){
			$.each(funcs, function(i, func){
				if(func){
					func();
				}
			});
		});
	}
	//End:初始化各部件******************************************************************************************************
	
	//json2。兼容JSON.stringify。ie6、7、8不支持JSON.stringify。
	addInit(function(){
		if($.isIE() && $.isIE9Under()){
			seajs.use('Json2');
		}
	});
	
	//面板
	addInit(function(){
		$(".w-panel.collapsible .w-panel-header").each(function() {
			if ($(this).find(".w-panel-toggler").size() === 0) {
				$("<span></span>").addClass("w-panel-toggler").appendTo($(this))
			}
		});
		$("div.w-panel.collapsible .w-panel-header .w-panel-toggler").on("click", function(f) {
			parentToggled = false;
			$(this).closest(".w-panel").children(":not(.w-panel-header)").slideToggle("normal",function() {
				if (!parentToggled) {
					$(this).closest(".w-panel").toggleClass("collapsed");
					parentToggled = true
				}
			});
			f.preventDefault()
		});
	});
	
	//tab
	addInit(function(){
		$(".w-tab,.w-tab-t").find("li").bind("click", function(){
			var tab = $(this);
			tab.addClass("active").siblings().removeClass("active");
			var onchange = tab.parents(".w-tab,.w-tab-t").attr("onchange");
			var val = tab.attr("val");
			if(onchange && val){
				onchange = onchange.replace(/\(.*\)/igm, "");
				eval(onchange+'('+val+')');
			}
		});
	});
	
	//tab-head
	addInit(function(){
		$(".w-tab-head").find("li").bind("click", function(){
			var tab = $(this);
			tab.addClass("current").siblings().removeClass("current");
			var onchange = tab.parents(".w-tab-head").attr("onchange");
			var val = tab.attr("val");
			if(onchange && val){
				onchange = onchange.replace(/\(.*\)/igm, "");
				eval(onchange+'('+val+')');
			}
		});
	});
	
	//choose
	addInit(function(){
		$(".w-choose").find("li").bind("click", function(){
			var choose = $(this);
			choose.addClass("active").siblings().removeClass("active");
			var onchange = choose.parents(".w-choose").attr("onchange");
			var val = choose.attr("val");
			if(onchange && val){
				onchange = onchange.replace(/\(.*\)/igm, "");
				eval(onchange+'('+val+')');
			}
		});
	});
	
	//checkbox、radio美化
	addInit('$beautify', function(){
		if($(".w-cr-box").size() > 0){
			$(".w-cr-box").find("input[type=checkbox],input[type=radio]").customBeautify();
		}
	});
	
	//工具tip提示
	if($(".w-tooltip-n,.w-tooltip-ne,.w-tooltip-e,.w-tooltip-se,.w-tooltip-s,.w-tooltip-sw,.w-tooltip-w,.w-tooltip-nw").size() > 0){
		addInit('$tipsy', function(){
			var d = ["n", "ne", "e", "se", "s", "sw", "w", "nw"];
			for (var b in d) {
				var tooltip = $(".w-tooltip-" + d[b]);
				if(tooltip.size() > 0){
					$(".tipsy").remove();
					tooltip.tipsy({gravity: d[b]})
				}
			}
		
		});
	};
	
	//下拉菜单
	addInit(function(){
		$(".w-dropdown").click(function(event){
			var clickObj = $(this);
			var dropdownTarget = $("#"+clickObj.attr("dropdownId"));
			dropdownTarget.css({
				"top" : clickObj.offset().top + clickObj.height() + "px",
				"left" : clickObj.offset().left + "px"
			}).show();
			$(document).unbind("click").bind("click", function(event) {
				if(clickObj.attr("dropdownId") != $(event.target).attr("dropdownId")){
					dropdownTarget.hide();
				}
			});	
		});
	});
	
    // 加载级联下拉列表
    if ($("select[relyon]").size() > 0) {
    	addInit('$cascadingSelect');
    }
	
	//jQuery.select2组件初始化
	var select2 = $("select.w-select2");
	if(select2.size() > 0){
		if($.isIE9Under()){
		} else {
			addInit('$select2',function(){
				select2.select2();
			});
		}
	};
	
	//jQuery.fileinput 组件初始化 单文件上传
	var fileinput = $("input[type='file'].w-fileinput");
	if(fileinput.size() > 0){
		addInit('$fileinput',function(){
			fileinput.initFileInput();
		});
	};
	
	//jQuery.ajaxfileupload ajax方式上传文件组件
	if($(".ajaxfileupload").size() > 0){
		addInit('$ajaxfileupload');
	};
	
	//日期控件初始化
	if($(".Wdate").size() > 0){
		addInit('Wdate', function(){
			$(".w-form .Wdate").css("height", "auto");
		});
	};
	
	//代码高亮显示初始化
	var wCode = $(".w-code");
	if(wCode.size() > 0){
		addInit('$syntaxhighlighter', function(){
			wCode.each(function(){
				var code = $(this);
				var pre = $('<pre></pre>').attr("class", code.attr("class")).append(code.val().replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\r\n", "<br/>").replaceAll("\n", "<br/>"));
				code.replaceWith(pre);
			});
			$.SyntaxHighlighter.init();
			$(".w-code").fadeIn("slow");
		});
	}
	
	//绑定form表单验证
	var forms = $("form[validXml]");//未定义validXml属性说明未启用客户端验证
	if(forms.size() > 0){
		addInit('$validate', function(){
			forms.each(function(){
				$.walk.validateForm($(this));
			});
		});
	}
	
	//使低版本浏览器支持placeholder
	addInit(function(){
		$.initPlaceholder();
	});
	
	//生成页面ID
	addInit(function(){
		$.walk._generatePageId();
	});

	//开始初始化
	startInit();
};

//页面初始化后
$(function(){
	$.walk.init();
});
	
//全局ajax错误处理
$(document).ajaxError(function(event, jqXHR, options, errorMsg){
//	if(jqXHR.status == 4011){//http状态码401.1表示登录失败
//		$.walk.alert("由于您长时间未操作，登录状态可能已失效，点击“确定”后系统将尝试刷新页面检测登录状态，谢谢！", "error", function(){
//			window.location.reload();
//		});
//		return;
//	}
//	
//	var errMsg = jqXHR.responseText;
//	if(jqXHR.status == 0 && !errMsg){//http状态码0,(未初始化)还没有调用send()方法,主要出现在页面还没加载完成做了关闭页面的操作
//		return;
//	}
//	if(!errMsg){
//		errMsg = "出错了！";
//		return;
//	}
//	try{
//		if($(errMsg).find("#exception")){
//			errMsg = $(errMsg).find("#exception").html().trim();
//		}
//	}catch(e){}
//	$.walk.alert(errMsg, "error");
});

//全局ajax开始处理
$(document).ajaxStart(function(){});

//全局ajax停止处理
$(document).ajaxStop(function(){});

//窗口大小改变时
$(window).on("resize", function() {
	try{
		//datagrid自适应
		resizeDatagrid();
	}catch(e){}
});

//绑定回车，查询
$(document).bind('keypress',function(event){
	if(event.keyCode == "13"){
		$(".EnterPress").click();
	}
});

})(jQuery);