package com.asiainfo.walk.apidemo.mvc.model.demo.rsp;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import org.walkframework.data.translate.StaticTranslate;
import org.walkframework.data.translate.TableTranslate;
import org.walkframework.data.translate.TranslateEnable;
import org.walkframework.restful.model.rsp.RspData;


/**
 * @desc 用户详情信息查询服务返回报文返回内容节点
 * @author shf675
 * @date 2018-10-12 08:57:23
 *
 * 本类由工具类RestfulGenerator自动生成
 */
@ApiModel(description = "用户详情信息查询服务返回报文返回内容节点")
@TranslateEnable
public class UserInfoRsp extends RspData {

	private static final long serialVersionUID = 1L;

	@ApiModelProperty(value = "用户ID", required = true, position = 10)
	private String userId;
	
	@ApiModelProperty(value = "用户名称", required = true, position = 20)
	private String userName;
	
	@ApiModelProperty(value = "真实姓名", required = true, position = 30)
	private String realName;

	@ApiModelProperty(value = "性别。0：女；1：男", required = false, position = 40)
	private String sex;
	
	@ApiModelProperty(value = "性别名称", required = false, position = 45)
	@StaticTranslate(by = "sex", typeId = "SEX")
	private String sexName;

	@ApiModelProperty(value = "邮箱", required = false, position = 50)
	private String email;

	@ApiModelProperty(value = "生日。例如：19880101", required = false, position = 60)
	private String birthday;

	@ApiModelProperty(value = "手机号码", required = false, position = 70)
	private String serialNumber;

	@ApiModelProperty(value = "用户状态。0：无效。1：有效", required = false, position = 80)
	private String userState;
	
	@ApiModelProperty(value = "用户状态名称", required = false, position = 85)
	@StaticTranslate(by = "userState", typeId = "USER_STATE")
	private String userStateName;
	
	@ApiModelProperty(value = "省份编码", required = true, position = 90)
	private String provinceId;
	
	@ApiModelProperty(value = "地市编码", required = true, position = 100)
	private String eparchyCode;
	
	@TableTranslate(by = "eparchyCode", path = "TD_M_AREA.AREA_CODE.AREA_NAME")
	@ApiModelProperty(value = "地市名称", required = true, position = 110)
	private String eparchyName;
	
	@ApiModelProperty(value = "区县编码", required = true, position = 120)
	private String cityCode;

	@TableTranslate(by = "cityCode", path = "TD_M_AREA.AREA_CODE.AREA_NAME")
	@ApiModelProperty(value = "区县名称", required = true, position = 130)
	private String cityName;
	
	@ApiModelProperty(value = "备注", required = true, position = 140)
	private String remark;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getSerialNumber() {
		return serialNumber;
	}

	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}

	public String getUserState() {
		return userState;
	}

	public void setUserState(String userState) {
		this.userState = userState;
	}

	public String getCityCode() {
		return cityCode;
	}

	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getEparchyCode() {
		return eparchyCode;
	}

	public void setEparchyCode(String eparchyCode) {
		this.eparchyCode = eparchyCode;
	}

	public String getEparchyName() {
		return eparchyName;
	}

	public void setEparchyName(String eparchyName) {
		this.eparchyName = eparchyName;
	}

	public String getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(String provinceId) {
		this.provinceId = provinceId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

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

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
}

