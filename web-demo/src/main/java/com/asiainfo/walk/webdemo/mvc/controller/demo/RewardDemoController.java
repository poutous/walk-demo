package com.asiainfo.walk.webdemo.mvc.controller.demo;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.walkframework.data.bean.Pagination;
import org.walkframework.data.util.InParam;

import com.asiainfo.walk.webdemo.mvc.controller.app.AppController;
import com.asiainfo.walk.webdemo.mvc.entity.TdBRewardRule;
import com.asiainfo.walk.webdemo.mvc.service.demo.RewardDemoService;

/**
 *	佣金管理
 *
 */
@RestController
@RequestMapping("/demo/reward")
public class RewardDemoController extends AppController {
	
	@Resource(name = "rewardDemoService")
	private RewardDemoService rewardDemoService;
	
	/**
	 * 	查询佣金规则列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "queryRewardRuleList")
	public Object queryRewardRuleList(InParam<String, Object> inParam, Pagination pagination) {
		return rewardDemoService.queryRewardRuleList(inParam, pagination);
	}
	
	/**
	 * 	保存规则
	 * 
	 * @return
	 */
	@RequestMapping(value = "save")
	public String save(TdBRewardRule rule) {
		try {
			rewardDemoService.save(rule);
			return message.success("保存成功！");
		} catch (Exception e) {
			return message.error("保存失败：" + e.getCause(), e);
		}
	}
	
	/**
	 * 	删除规则
	 * 
	 * @return
	 */
	@RequestMapping(value = "delete")
	public String delete(InParam<String, Object> inParam) {
		try {
			rewardDemoService.delete(inParam);
			return message.success("删除成功！");
		} catch (Exception e) {
			return message.error("删除失败：" + e.getCause(), e);
		}
	}
}