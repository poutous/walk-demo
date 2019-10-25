/**
 * 自定义配置
 *
 * @author liuqf5
 */
(function($) {
	/**Start:easyui自定义配置****************************************************/
	//参考easyloader.sea.js文件对window.easyloader进行扩展
	//注意：配置自定义的js或css一定要以/打头，反之使用框架自带的不需要以/打头如下示例。
	$.extend(true, window.easyloader, {
		customBase: ($.walk && $.walk.ctx ? $.walk.ctx:"") + "/static/resources/scripts/easyui/1.8.1/",
		customIcon: false,//themes/icon.css是否自定义
		locales:{
			"zh_CN": "/easyui-lang-zh_CN.js"//本地语言自定义
		}
		,
		modules: {
	        tabs: {
	            css: "/tabs.css"
	        }/*,
	        datagrid: {
	            js: "/jquery.datagrid.js"
	        }*/
		}
	});
	/**End:easyui自定义配置******************************************************/
	
	/**Start: seajs扩展配置****************************************************/
	var ctx = $.walk.ctx;
	seajs.config({
		// 别名配置：当模块标识很长时，可以使用 alias 来简化。 如果不想在这配置别名可直接写路径，例如seajs.use(['arale/position/1.0.1/position'], function(Position) {//代码});
		// 定义规范：
		// 1、jQuery插件以$开头；
		// 2、非jQuery插件首字母大写
		alias: {
			//'Groupmgr': ctx + '/static/resources/scripts/common/groupmgr',
		},
	
		// 路径配置：当目录比较深，或需要跨目录调用模块时，可以使用 paths 来简化书写
		paths: {
			'scripts': ctx + '/static/resources/scripts',
			'css': ctx + '/static/resources/css'
		}
	});
	/**End: seajs扩展配置****************************************************/
})(jQuery);
