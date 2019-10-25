package com.asiainfo.walk.webdemo.mvc.service.common;

import org.springframework.stereotype.Service;
import org.walkframework.data.bean.PageData;
import org.walkframework.data.bean.Pagination;
import org.walkframework.data.util.InParam;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.asiainfo.walk.webdemo.mvc.service.app.AppService;
import com.asiainfo.walk.webdemo.tools.utils.ApiUtil;

/**
 * 	API服务
 *
 */
@Service("callApiService")
public class CallApiService extends AppService {
	
	/**
	 * 	通用调用API服务
	 * 
	 * @param apiName
	 * @param inparam
	 * @return
	 */
	public Object call(String apiName, InParam<String, Object> inparam) {
		//请求API
		JSONObject rspInfo = ApiUtil.call(apiName, JSON.toJSONString(inparam));
		if(!"0".equals(rspInfo.getString("rspCode"))) {
			common.error(rspInfo.getString("rspDesc"));
		}
		
		//设置返回
		return rspInfo.getJSONObject("rspData");
	}
	
	/**
	 * 	通用调用API列表查询服务
	 * 
	 * @param apiName
	 * @param inparam
	 * @return
	 */
	public Object list(String apiName, InParam<String, Object> inparam) {
		//请求API
		JSONObject rspInfo = ApiUtil.call(apiName, JSON.toJSONString(inparam));
		if(!"0".equals(rspInfo.getString("rspCode"))) {
			common.error(rspInfo.getString("rspDesc"));
		}
		
		//设置返回
		return rspInfo.getJSONArray("rspData");
	}

	/**
	 * 	通用调用API分页查询服务
	 * 
	 * @param apiName
	 * @param inparam
	 * @param pagination
	 * @return
	 */
	public Object page(String apiName, InParam<String, Object> inparam, Pagination pagination) {
		//参数整理
		if(pagination != null) {
			inparam.put("currPage", pagination.getCurrPage());
			inparam.put("pageSize", pagination.getSize());
		}
		inparam.remove("page");
		inparam.remove("rows");
		
		//请求API
		JSONObject rspInfo = ApiUtil.call(apiName, JSON.toJSONString(inparam));
		if(!"0".equals(rspInfo.getString("rspCode"))) {
			common.error(rspInfo.getString("rspDesc"));
		}
		
		//返回数据
		JSONObject rspData = rspInfo.getJSONObject("rspData");
		
		//设置返回
		PageData<Object> pageData = new PageData<Object>();
		pageData.setRows(rspData.getJSONArray("rows"));
		pageData.setTotal(rspData.getLong("total"));
		pageData.setCurrPage(pagination.getCurrPage());
		pageData.setPageSize(pagination.getSize());
		return pageData;
	}
	
}
