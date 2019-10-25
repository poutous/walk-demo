package com.asiainfo.walk.webdemo.mvc.service.demo;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.walkframework.base.mvc.dao.BaseSqlSessionDao;
import org.walkframework.data.bean.PageData;
import org.walkframework.data.bean.Pagination;
import org.walkframework.data.util.IData;
import org.walkframework.data.util.InParam;

import com.asiainfo.walk.webdemo.mvc.entity.TdBRewardRule;
import com.asiainfo.walk.webdemo.mvc.entity.ext.TfBRewardRuleExt;
import com.asiainfo.walk.webdemo.mvc.service.app.AppService;

/**
 * 	佣金服务
 * 
 */
@Service("rewardDemoService")
public class RewardDemoService extends AppService {
	
	@Resource(name = "sqlSessionDao")
	private BaseSqlSessionDao dao;
	
	/**
     * 	查询佣金规则列表
     * 
     * @param param
     * @param pagination
     */
	public PageData<TfBRewardRuleExt> queryRewardRuleList(IData<String, Object> inParam, Pagination pagination){
		TfBRewardRuleExt cond = new TfBRewardRuleExt();
		cond.noAnyCondition();
		if(StringUtils.isNotEmpty(inParam.getString("ruleCode"))){
			cond.setRuleCode(inParam.getString("ruleCode")).asCondition();
		}
		return dao.selectList(cond, pagination);
	}
	
	/**
	 * 	保存规则
	 * 
	 * @return
	 */
	public void save(TdBRewardRule rule) {
		if(rule.getRuleId() == null){
			dao.insert(rule);
		} else {
			rule.setRuleId(rule.getRuleId()).asCondition();
			dao.update(rule);
		}
	}
	
	/**
	 * 	删除规则
	 * 
	 * @return
	 */
	@SuppressWarnings("serial")
	public void delete(InParam<String, Object> inParam) {
		String ruleIds = inParam.getString("ids", "");
    	String[] ruleIdArr = ruleIds.split(",");
    	List<TdBRewardRule> list = new ArrayList<TdBRewardRule>();
		for (final String ruleId : ruleIdArr) {
			list.add(new TdBRewardRule(){{
				setRuleId(Long.valueOf(ruleId)).asCondition();
			}});
		}
		if(CollectionUtils.isNotEmpty(list)){
			dao.deleteBatch(list);
		}
	}
}
