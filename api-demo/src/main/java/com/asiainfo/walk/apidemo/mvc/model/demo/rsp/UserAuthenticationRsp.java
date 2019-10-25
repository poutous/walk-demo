package com.asiainfo.walk.apidemo.mvc.model.demo.rsp;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.walkframework.restful.model.rsp.RspData;


/**
 * @desc 用户认证服务返回报文返回内容节点
 * @author shf675
 * @date 2018-10-12 08:57:23
 *
 * 本类由工具类RestfulGenerator自动生成
 */
@ApiModel(description = "用户认证服务返回报文返回内容节点") 
public class UserAuthenticationRsp extends RspData {

	private static final long serialVersionUID = 1L;

	@ApiModelProperty(value = "是否认证成功。0：认证成功；-1：认证失败", required = true, position = 50)
	private String successFlag;

	@ApiModelProperty(value = "错误信息编码。00：用户不存在或密码错误；10：用户状态异常", required = false, position = 60)
	private String errorCode;

	@ApiModelProperty(value = "错误信息内容", required = false, position = 70)
	private String errorMsg;

	public void setSuccessFlag(String successFlag){
		this.successFlag = successFlag;
	}
	
	public String getSuccessFlag(){
		return successFlag;
	}

	public void setErrorCode(String errorCode){
		this.errorCode = errorCode;
	}
	
	public String getErrorCode(){
		return errorCode;
	}

	public void setErrorMsg(String errorMsg){
		this.errorMsg = errorMsg;
	}
	
	public String getErrorMsg(){
		return errorMsg;
	}

}

