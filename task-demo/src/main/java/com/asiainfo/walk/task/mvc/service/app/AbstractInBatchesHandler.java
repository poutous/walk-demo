package com.asiainfo.walk.task.mvc.service.app;

import java.util.List;

import org.walkframework.base.tools.spring.SpringPropertyHolder;
import org.walkframework.data.bean.PageData;
import org.walkframework.data.bean.Pagination;
import org.walkframework.data.util.DataMap;
import org.walkframework.data.util.IData;

/**
 * 	数据分批处理
 * 
 * 
 */
public abstract class AbstractInBatchesHandler extends AppService implements InBatchesHandler {

	/**
	 * 	默认分批处理分页尺寸
	 */
	public static final int DEFAULT_PAGE_SIZE = 100;

	public int getPageSize() {
		return Integer.parseInt(SpringPropertyHolder.getContextProperty("load.max.pagesize", DEFAULT_PAGE_SIZE + ""));
	}

	@Override
	public void handle(IData<String, Object> param) {
		param = param == null ? new DataMap<String, Object>():param;
		
		//处理之前动作
		preHandle(param);
		
		// 分批加载，防止内存溢出
		int pageSize = getPageSize();
		int i = 0;
		for (;;) {
			Pagination pagination = new Pagination();
			pagination.setNeedCount(false);
			pagination.setRange(i * pageSize, pageSize);
			PageData<IData<String, Object>> pageData = getSourceData(param, pagination);
			
			List<IData<String, Object>> sourceData = pageData.getRows();
			if(log.isInfoEnabled()){
				log.info("加载数据个数：{}", sourceData.size());
			}
			if (sourceData.size() > 0) {
				
				//业务逻辑处理
				doHandle(param, sourceData);

				if (sourceData.size() < pageSize) {
					break;
				}
			} else {
				break;
			}
			i++;
		}
	}

	/**
	 * 	获取源数据
	 * 
	 * @param pagination
	 * @return
	 */
	public abstract PageData<IData<String, Object>> getSourceData(IData<String, Object> param, Pagination pagination);
	
	/**
	 * 	业务逻辑预处理
	 * 
	 * @param sourceData
	 */
	protected void preHandle(IData<String, Object> param) {
		//nothing
	};
	
	/**
	 * 	业务逻辑处理
	 * 
	 * @param sourceData
	 */
	public abstract void doHandle(IData<String, Object> param, List<IData<String, Object>> sourceData);

}
