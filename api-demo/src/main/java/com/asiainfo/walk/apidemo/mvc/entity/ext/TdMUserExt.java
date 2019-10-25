package com.asiainfo.walk.apidemo.mvc.entity.ext;

import java.util.List;

import org.walkframework.data.translate.EntityTranslate;
import org.walkframework.data.translate.SqlTranslate;
import org.walkframework.data.translate.StaticTranslate;
import org.walkframework.data.translate.TableTranslate;
import org.walkframework.data.translate.TranslateEnable;

import com.asiainfo.walk.apidemo.mvc.entity.TdMArea;
import com.asiainfo.walk.apidemo.mvc.entity.TdMUser;

/**
 * TdMUser扩展
 */
@TranslateEnable
public class TdMUserExt extends TdMUser {
	private static final long serialVersionUID = 1L;

	/**
	 * 性别名称
	 */
	@StaticTranslate(by = "sex", typeId = "SEX")
	private String sexName;
	
	/**
	 * 用户状态
	 */
	@StaticTranslate(by = "userState", typeId = "USER_STATE")
	private String userStateName;

	/**
	 * 地市名称
	 */
	@TableTranslate(by = "eparchyCode", path = "TD_M_AREA.AREA_CODE.AREA_NAME")
	private String eparchyName;

	/**
	 * 区县名称
	 */
	@TableTranslate(by = "cityCode", path = "TD_M_AREA.AREA_CODE.AREA_NAME")
	private String cityName;
	
	/**
	 * 	区域信息 @EntityTranslate注解示例
	 */
	@EntityTranslate(conditions = "AREA_CODE=#{eparchyCode} and VALIDFLAG='0' ")
	private TdMArea areaInfo;
	
	/**
	 *	 区域列表 @EntityTranslate注解示例
	 */
	@EntityTranslate(conditions = "AREA_CODE=#{eparchyCode} and VALIDFLAG='0'")
	private List<TdMArea> areaList;
	
	/**
	 *	 区域列表@SqlTranslate注解示例
	 */
	@SqlTranslate(sqlId = "ApiDemoSQL.selectAreaList")
	private List<TdMArea> areaList2;
	
	public String getSexName() {
		return sexName;
	}

	public void setSexName(String sexName) {
		this.sexName = sexName;
	}

	public String getEparchyName() {
		return eparchyName;
	}

	public void setEparchyName(String eparchyName) {
		this.eparchyName = eparchyName;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public TdMArea getAreaInfo() {
		return areaInfo;
	}

	public void setAreaInfo(TdMArea areaInfo) {
		this.areaInfo = areaInfo;
	}
	
	public List<TdMArea> getAreaList() {
		return areaList;
	}

	public void setAreaList(List<TdMArea> areaList) {
		this.areaList = areaList;
	}

	public List<TdMArea> getAreaList2() {
		return areaList2;
	}

	public void setAreaList2(List<TdMArea> areaList2) {
		this.areaList2 = areaList2;
	}

	public String getUserStateName() {
		return userStateName;
	}

	public void setUserStateName(String userStateName) {
		this.userStateName = userStateName;
	}

}
