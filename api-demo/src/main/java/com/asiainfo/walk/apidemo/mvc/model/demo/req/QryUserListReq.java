package com.asiainfo.walk.apidemo.mvc.model.demo.req;

import org.walkframework.restful.model.req.PaginationReq;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


/**
 * @desc 用户列表查询服务请求报文业务参数节点
 * @author shf675
 * @date 2018-10-12 08:57:23
 *
 * 	本类由工具类RestfulGenerator自动生成
 */
@ApiModel(description = "用户列表查询服务请求报文业务参数节点") 
public class QryUserListReq extends PaginationReq {

	private static final long serialVersionUID = 1L;

	@ApiModelProperty(value = "用户ID", required = false, position = 10)
	private String userId;
	
	@ApiModelProperty(value = "用户名称", required = false, position = 20)
	private String userName;
	
	@ApiModelProperty(value = "真实姓名", required = false, position = 30)
	private String realName;

	@ApiModelProperty(value = "性别 1：男，0：女", required = false, position = 40)
	private String sex;
	
	@ApiModelProperty(value = "手机号码", required = false, position = 50)
	private String serialNumber;

	@ApiModelProperty(value = "有效标识。1：有效，0：无效", required = false, position = 60)
	private String userState;
	
	@ApiModelProperty(value = "省份编码", required = false, position = 70)
	private String provinceCode;
	
	@ApiModelProperty(value = "地市编码", required = false, position = 80)
	private String eparchyCode;

	@ApiModelProperty(value = "区县编码", required = false, position = 90)
	private String cityCode;


	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

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

	public String getEparchyCode() {
		return eparchyCode;
	}

	public void setEparchyCode(String eparchyCode) {
		this.eparchyCode = eparchyCode;
	}

	public String getCityCode() {
		return cityCode;
	}

	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}

	public String getProvinceCode() {
		return provinceCode;
	}

	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}
}

