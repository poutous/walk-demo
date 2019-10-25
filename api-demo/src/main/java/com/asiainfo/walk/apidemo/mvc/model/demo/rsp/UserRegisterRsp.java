package com.asiainfo.walk.apidemo.mvc.model.demo.rsp;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.walkframework.restful.model.rsp.RspData;


/**
 * @desc 账号注册服务返回报文返回内容节点
 * @author shf675
 * @date 2018-10-12 08:57:23
 *
 * 本类由工具类RestfulGenerator自动生成
 */
@ApiModel(description = "账号注册服务返回报文返回内容节点") 
public class UserRegisterRsp extends RspData {

	private static final long serialVersionUID = 1L;

	@ApiModelProperty(value = "是否注册成功。0：注册成功；-1：注册失败", required = true, position = 50)
	private String successFlag;

	public void setSuccessFlag(String successFlag){
		this.successFlag = successFlag;
	}
	
	public String getSuccessFlag(){
		return successFlag;
	}

}

