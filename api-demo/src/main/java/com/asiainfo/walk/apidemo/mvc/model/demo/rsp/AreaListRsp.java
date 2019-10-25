package com.asiainfo.walk.apidemo.mvc.model.demo.rsp;

import java.math.BigDecimal;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.walkframework.restful.model.rsp.RspData;

/**
 * @desc 区域列表级联查询服务返回报文返回内容节点
 * @author shf675
 * @date 2018-10-12 08:57:23
 *
 * 	本类由工具类RestfulGenerator自动生成
 */
@ApiModel(description = "区域列表级联查询服务返回报文返回内容节点") 
public class AreaListRsp extends RspData {

   private static final long serialVersionUID = 1L;

   @ApiModelProperty(value = "地域编码", required = true, position = 10)
   private String areaCode;

   @ApiModelProperty(value = "地域名称", required = true, position = 20)
   private String areaName;

   @ApiModelProperty(value = "地域级别： 其中 10－省， 20－地州， 30－业务区， 其它抽象出来的级别在对应的区间范围之中", required = true, position = 30)
   private BigDecimal areaLevel;

   public void setAreaCode(String areaCode){
         this.areaCode = areaCode;
   }
   
   public String getAreaCode(){
         return areaCode;
   }

   public void setAreaName(String areaName){
         this.areaName = areaName;
   }
   
   public String getAreaName(){
         return areaName;
   }

   public void setAreaLevel(BigDecimal areaLevel){
         this.areaLevel = areaLevel;
   }
   
   public BigDecimal getAreaLevel(){
         return areaLevel;
   }

}

