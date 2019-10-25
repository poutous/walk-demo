package com.asiainfo.walk.task.mvc.service.demo;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;
import org.walkframework.base.mvc.dao.BaseSqlSessionDao;
import org.walkframework.data.bean.PageData;
import org.walkframework.data.bean.Pagination;
import org.walkframework.data.util.IData;
import com.asiainfo.walk.task.mvc.service.app.AbstractInBatchesHandler;

/**
 * 	批量处理数据示例
 * 
 */
@Service("batchDataHandleDemoService")
public class BatchDataHandleDemoService extends AbstractInBatchesHandler {

	@Resource(name = "sqlSessionDao")
	private BaseSqlSessionDao dao;

	/**
	 * 	获取源数据
	 * 
	 * @param pagination
	 * @return
	 */
	@Override
	public PageData<IData<String, Object>> getSourceData(IData<String, Object> param, Pagination pagination) {
		return dao.selectList("UserDemoSQL.queryUserList", param, pagination);
	}

	/**
	 * 	获取源数据。业务逻辑处理
	 * 
	 */
	@Override
	public void doHandle(IData<String, Object> param, List<IData<String, Object>> sourceData) {
		if (CollectionUtils.isEmpty(sourceData)) {
			return;
		}
		
		//逐条处理
		for (IData<String, Object> data : sourceData) {
			System.out.println(data);
		}
	}
}
