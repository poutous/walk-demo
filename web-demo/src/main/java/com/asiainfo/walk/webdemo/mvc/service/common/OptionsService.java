package com.asiainfo.walk.webdemo.mvc.service.common;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.walkframework.base.mvc.dao.BaseSqlSessionDao;

import com.asiainfo.walk.webdemo.mvc.service.app.AppService;

/**
 * 	下拉列表相关
 *
 */
@Service("optionsService")
public class OptionsService extends AppService {

	@Resource(name = "sqlSessionDao")
	private BaseSqlSessionDao dao;

	/**
	 * 	获取地市
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<?> queryEparchyList() {
		String eparchyCode = "";
		return dao.selectList("OptionsSQL.queryEparchyList", eparchyCode);
	}

	/**
	 * 	获取区县
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<?> queryCityList(String eparchyCode) {
		return dao.selectList("OptionsSQL.queryCityList", eparchyCode);
	}

	/**
	 * 	获取部门树
	 * 
	 * @param parentId
	 * @return
	 */
	public List<?> queryDepartList(String parentId) {
		return dao.selectList("OptionsSQL.queryDepartList", parentId);
	}
}
