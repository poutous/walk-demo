package com.asiainfo.walk.webdemo.mvc.entity.ext;

import org.walkframework.data.translate.StaticTranslate;
import org.walkframework.data.translate.TranslateEnable;

import com.asiainfo.walk.webdemo.mvc.entity.TdMUser;

/**
 * TdMUser实体类扩展
 *
 */
@TranslateEnable
public class TdMUserExt extends TdMUser {
	private static final long serialVersionUID = 1L;
	
	@StaticTranslate(by = "sex", typeId = "SEX")
	private String sexName;
	
	@StaticTranslate(by = "userState", typeId = "USER_STATE")
	private String userStateName;
	
	public String getSexName() {
		return sexName;
	}

	public void setSexName(String sexName) {
		this.sexName = sexName;
	}

	public String getUserStateName() {
		return userStateName;
	}

	public void setUserStateName(String userStateName) {
		this.userStateName = userStateName;
	}

}
