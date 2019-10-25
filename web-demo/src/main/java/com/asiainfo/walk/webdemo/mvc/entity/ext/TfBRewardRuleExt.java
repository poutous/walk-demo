package com.asiainfo.walk.webdemo.mvc.entity.ext;

import org.walkframework.data.translate.StaticTranslate;
import org.walkframework.data.translate.TranslateEnable;

import com.asiainfo.walk.webdemo.mvc.entity.TdBRewardRule;

@TranslateEnable
public class TfBRewardRuleExt extends TdBRewardRule {
	private static final long serialVersionUID = 1L;
	
	@StaticTranslate(by = "ruleCode", typeId = "REWARD_RULECODE_DESC")
	private String ruleCodeName;
	
	@StaticTranslate(by = "ruleState", typeId = "RULE_STATE")
	private String ruleStateName;

	public String getRuleStateName() {
		return ruleStateName;
	}

	public void setRuleStateName(String ruleStateName) {
		this.ruleStateName = ruleStateName;
	}

	public String getRuleCodeName() {
		return ruleCodeName;
	}

	public void setRuleCodeName(String ruleCodeName) {
		this.ruleCodeName = ruleCodeName;
	}

}
