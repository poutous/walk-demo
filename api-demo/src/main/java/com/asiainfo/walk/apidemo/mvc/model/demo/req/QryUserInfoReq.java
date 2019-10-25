package com.asiainfo.walk.apidemo.mvc.model.demo.req;

import org.hibernate.validator.constraints.NotBlank;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.walkframework.restful.model.req.ReqBody;


/**
 * @desc 用户详情信息查询服务请求报文业务参数节点
 * @author shf675
 * @date 2018-10-12 08:57:23
 *
 * 	本类由工具类RestfulGenerator自动生成
 */
@ApiModel(description = "用户详情信息查询服务请求报文业务参数节点") 
public class QryUserInfoReq extends ReqBody {

	private static final long serialVersionUID = 1L;

	@NotBlank 
	@ApiModelProperty(value = "用户名称", required = true, position = 10)
	private String userName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}

