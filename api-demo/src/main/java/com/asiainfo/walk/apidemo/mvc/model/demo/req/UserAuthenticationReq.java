package com.asiainfo.walk.apidemo.mvc.model.demo.req;

import org.hibernate.validator.constraints.NotBlank;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.walkframework.restful.model.req.ReqBody;


/**
 * @desc 用户认证服务请求报文业务参数节点
 * @author shf675
 * @date 2018-10-12 08:57:22
 *
 * 本类由工具类RestfulGenerator自动生成
 */
@ApiModel(description = "用户认证服务请求报文业务参数节点") 
public class UserAuthenticationReq extends ReqBody {

	private static final long serialVersionUID = 1L;

	@NotBlank 
	@ApiModelProperty(value = "用户编码", required = true, position = 10)
	private String userName;

	@NotBlank 
	@ApiModelProperty(value = "用户密码", required = true, position = 20)
	private String password;

	@NotBlank 
	@ApiModelProperty(value = "客户端IP地址。记录来源IP", required = true, position = 30)
	private String ipAddr;

	public void setPassword(String password){
		this.password = password;
	}
	
	public String getPassword(){
		return password;
	}

	public void setIpAddr(String ipAddr){
		this.ipAddr = ipAddr;
	}
	
	public String getIpAddr(){
		return ipAddr;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}

