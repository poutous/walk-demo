package com.asiainfo.walk.apidemo.mvc.model.common.req;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import org.hibernate.validator.constraints.NotBlank;
import org.walkframework.restful.model.req.ReqHead;


/**
 * @desc 接口请求报文公共请求头节点
 * @author shf675
 * @date 2018-03-27 20:37:03
 *
 * 本类由工具类RestfulGenerator自动生成
 */
@ApiModel(description = "接口请求报文公共请求头节点") 
public class CommonHeadReq extends ReqHead {

	private static final long serialVersionUID = 1L;

	@NotBlank 
	@ApiModelProperty(value = "调用方标识", required = true, position = 30)
	private String appId;

	@NotBlank 
	@ApiModelProperty(value = "时间戳。当前时间毫秒数System.currentTimeMillis()", required = true, position = 40)
	private String timestamp;

	@NotBlank 
	@ApiModelProperty(value = "签名。公式：sign=DigestUtils.sha256Hex(appId+timestamp+appKey)", required = true, position = 50)
	private String sign;

	public void setAppId(String appId){
		this.appId = appId;
	}
	
	public String getAppId(){
		return appId;
	}
	
	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}

	public void setSign(String sign){
		this.sign = sign;
	}
	
	public String getSign(){
		return sign;
	}
}