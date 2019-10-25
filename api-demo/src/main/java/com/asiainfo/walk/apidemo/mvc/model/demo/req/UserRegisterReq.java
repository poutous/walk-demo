package com.asiainfo.walk.apidemo.mvc.model.demo.req;

import org.hibernate.validator.constraints.NotBlank;
import org.walkframework.restful.model.req.ReqBody;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;


/**
 * @desc 用户注册服务请求报文业务参数节点
 * @author shf675
 * @date 2018-10-12 08:57:23
 *
 * 本类由工具类RestfulGenerator自动生成
 */
@ApiModel(description = "用户注册服务请求报文业务参数节点") 
public class UserRegisterReq extends ReqBody {

	private static final long serialVersionUID = 1L;

	@NotBlank 
	@ApiModelProperty(value = "用户名", required = true, position = 10)
	private String userName;
	
	@NotBlank 
	@ApiModelProperty(value = "真实姓名", required = true, position = 20)
	private String realName;

	@NotBlank 
	@ApiModelProperty(value = "密码", required = true, position = 30)
	private String password;

	@NotBlank 
	@ApiModelProperty(value = "性别。0：女； 1：男", required = true, position = 40)
	private String sex;
	
	@NotBlank 
	@ApiModelProperty(value = "生日。格式YYYYMMDD", required = true, position = 50)
	private String birthday;

	@NotBlank 
	@ApiModelProperty(value = "身份证号码", required = true, position = 60)
	private String userPid;

	@NotBlank 
	@ApiModelProperty(value = "移动电话", required = true, position = 70)
	private String mobilePhone;

	@NotBlank 
	@ApiModelProperty(value = "电子邮箱", required = true, position = 80)
	private String email;
	
	@NotBlank 
	@ApiModelProperty(value = "省份编码", required = true, position = 90)
	private String provinceCode;
	
	@NotBlank 
	@ApiModelProperty(value = "地市编码", required = true, position = 100)
	private String eparchyCode;

	@NotBlank 
	@ApiModelProperty(value = "区县编码", required = true, position = 110)
	private String cityCode;

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getUserPid() {
		return userPid;
	}

	public void setUserPid(String userPid) {
		this.userPid = userPid;
	}

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProvinceCode() {
		return provinceCode;
	}

	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
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

}

