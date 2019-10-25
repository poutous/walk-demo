package com.asiainfo.walk.task.mvc.task.demo;

import javax.annotation.Resource;

import org.walkframework.base.system.task.AbstractClusterTask;

import com.asiainfo.walk.task.mvc.service.demo.BatchDataHandleDemoService;

/**
 * 	批量处理数据示例
 * 
 * 	继承AbstractClusterTask表示是集群任务，即在整个集群中只会有一个实例执行本任务
 *	如直接继承BaseTask表示非集群任务，在集群中每个实例都会执行本任务
 *
 */
public class BatchDataHandleDemoTask extends AbstractClusterTask {
	
	@Resource(name = "batchDataHandleDemoService")
	private BatchDataHandleDemoService batchDataHandleDemoService;

	/**
	 * 	任务执行入口
	 * 
	 */
	public void doExecute() {
		try {
			batchDataHandleDemoService.handle(null);
		} catch (Exception e) {
			log.error("待归档订单数据处理失败", e);
		}
	}
}
