package com.asiainfo.walk.webdemo.mvc.controller.common;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.walkframework.base.mvc.entity.TdSParam;
import org.walkframework.base.mvc.service.common.CommonService;
import org.walkframework.base.tools.utils.JsonUtil;
import org.walkframework.data.util.InParam;

import com.asiainfo.walk.webdemo.mvc.controller.app.AppController;
import com.asiainfo.walk.webdemo.mvc.service.common.OptionsService;

/**
 * 	相关组件
 *
 */
@RestController
@RequestMapping("/component")
public class ComponentController extends AppController {

	@Resource(name = "commonService")
	private CommonService commonService;

	@Resource(name = "optionsService")
	private OptionsService optionsService;

	/**
	 * 	查询静态参数表列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "staticlist/{typeId}")
	public List<TdSParam> staticlist(@PathVariable String typeId) {
		return commonService.queryStaticList(typeId, null);
	}

	/**
	 * 	获取地市
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "eparchyList/{eparchyCode}")
	public List<?> queryEparchyList() {
		return optionsService.queryEparchyList();
	}

	/**
	 * 	获取区县
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "cityList/{eparchyCode}")
	public List<?> queryCityList(@PathVariable String eparchyCode) {
		return optionsService.queryCityList(eparchyCode);
	}

	/**
	 * 	查询部门树
	 * 
	 * @return
	 */
	@RequestMapping(value = "departTree")
	public String departTree(InParam<String, Object> inParam) {
		List<?> list = optionsService.queryDepartList(inParam.getString("id"));
		return JsonUtil.toJson(list);
	}
}