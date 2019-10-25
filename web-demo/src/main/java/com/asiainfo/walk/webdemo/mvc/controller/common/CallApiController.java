package com.asiainfo.walk.webdemo.mvc.controller.common;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.util.AntPathMatcher;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.HandlerMapping;
import org.walkframework.data.bean.Pagination;
import org.walkframework.data.util.InParam;

import com.asiainfo.walk.webdemo.mvc.controller.app.AppController;
import com.asiainfo.walk.webdemo.mvc.service.common.CallApiService;

/**
 * 	API服务通用调用Controller
 *
 */
@RestController
@RequestMapping("/callapi")
public class CallApiController extends AppController {

	@Resource(name = "callApiService")
	private CallApiService callApiService;
	
	/**
	 * 	通用调用API服务
	 * 
	 * @param apiName
	 * @param inParam
	 * @return
	 */
	@RequestMapping(value = "call/**")
	public Object call(InParam<String, Object> inParam, HttpServletRequest request){
		String apiName = extractPathFromPattern(request);
		return callApiService.call(apiName, inParam);
	}
	
	/**
	 * 	通用调用API列表查询服务
	 * 
	 * @param apiName
	 * @param inParam
	 * @param pagination
	 * @return
	 */
	@RequestMapping(value = "list/**")
	public Object list(InParam<String, Object> inParam, HttpServletRequest request){
		String apiName = extractPathFromPattern(request);
		return callApiService.list(apiName, inParam);
	}
	
	/**
	 * 	通用调用API分页查询服务
	 * 
	 * @param apiName
	 * @param inParam
	 * @param pagination
	 * @return
	 */
	@RequestMapping(value = "page/**")
	public Object page(InParam<String, Object> inParam, Pagination pagination, HttpServletRequest request){
		String apiName = extractPathFromPattern(request);
		return callApiService.page(apiName, inParam, pagination);
	}
	
	/**
	 * 	解析apiName
	 * 
	 * @param request
	 * @return
	 */
	private String extractPathFromPattern(final HttpServletRequest request) {
		String path = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		String bestMatchPattern = (String) request.getAttribute(HandlerMapping.BEST_MATCHING_PATTERN_ATTRIBUTE);
		return new AntPathMatcher().extractPathWithinPattern(bestMatchPattern, path);
	}
	
}