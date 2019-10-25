package com.asiainfo.walk.apidemo.mvc.model.demo.req;

import org.hibernate.validator.constraints.NotBlank;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.walkframework.restful.model.req.ReqBody;


/**
 * @desc 区域列表级联查询请求报文业务参数节点
 * @author shf675
 * @date 2018-10-12 08:57:23
 *
 * 	本类由工具类RestfulGenerator自动生成
 */
@ApiModel(description = "区域列表级联查询服务请求报文业务参数节点") 
public class QryAreaListReq extends ReqBody {

   private static final long serialVersionUID = 1L;

   @NotBlank 
   @ApiModelProperty(value = "上级地域编码", required = true, position = 50)
   private String parentAreaCode;

   public void setParentAreaCode(String parentAreaCode){
         this.parentAreaCode = parentAreaCode;
   }
   
   public String getParentAreaCode(){
         return parentAreaCode;
   }

}

