package com.asiainfo.walk.task.mvc.service.app;

import org.walkframework.data.util.IData;

/**
 * 	分批处理
 * 
 * @author shf675
 * 
 */
public interface InBatchesHandler {

	/**
	 * 	数据处理
	 */
	void handle(IData<String, Object> param);
}
