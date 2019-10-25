package com.asiainfo.walk.apidemo.mvc.controller.demo;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.walkframework.restful.model.req.ReqInfo;
import org.walkframework.restful.model.rsp.PaginationRsp;
import org.walkframework.restful.model.rsp.RspInfo;

import com.asiainfo.walk.apidemo.mvc.controller.app.AppController;
import com.asiainfo.walk.apidemo.mvc.model.common.req.CommonHeadReq;
import com.asiainfo.walk.apidemo.mvc.model.demo.req.QryAreaListReq;
import com.asiainfo.walk.apidemo.mvc.model.demo.req.QryUserInfoReq;
import com.asiainfo.walk.apidemo.mvc.model.demo.req.QryUserListReq;
import com.asiainfo.walk.apidemo.mvc.model.demo.req.UserAuthenticationReq;
import com.asiainfo.walk.apidemo.mvc.model.demo.req.UserRegisterReq;
import com.asiainfo.walk.apidemo.mvc.model.demo.rsp.AreaListRsp;
import com.asiainfo.walk.apidemo.mvc.model.demo.rsp.UserAuthenticationRsp;
import com.asiainfo.walk.apidemo.mvc.model.demo.rsp.UserInfoRsp;
import com.asiainfo.walk.apidemo.mvc.model.demo.rsp.UserListRsp;
import com.asiainfo.walk.apidemo.mvc.model.demo.rsp.UserRegisterRsp;
import com.asiainfo.walk.apidemo.mvc.service.demo.ApiDemoService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(description = "demo服务列表", tags = {"demo"}, position = 10)
@RestController
@RequestMapping(value = "${intf.version}/demo", method = RequestMethod.POST, produces = "application/json")
public class ApiDemoController extends AppController {
	
	@Resource(name = "apiDemoService")
    private ApiDemoService apiDemoService;
	
	/**
	 * 	用户注册服务
	 * 
	 * @param reqInfo
	 * @return
	 */
	
	@ApiOperation(value = "用户注册服务", notes = "用户注册服务", position = 10)
	@RequestMapping(value = "userRegister")
	public RspInfo<UserRegisterRsp> userRegister(@RequestBody @Valid ReqInfo<CommonHeadReq, UserRegisterReq> reqInfo, BindingResult bindingResult) {
		return apiDemoService.doUserRegister(reqInfo);
	}
	
	/**
	 * 	用户认证服务
	 * 
	 * @param reqInfo
	 * @return
	 */
	
	@ApiOperation(value = "用户认证服务", notes = "用户认证服务", position = 20)
	@RequestMapping(value = "userAuthentication")
	public RspInfo<UserAuthenticationRsp> userAuthentication(@RequestBody @Valid ReqInfo<CommonHeadReq, UserAuthenticationReq> reqInfo, BindingResult bindingResult) {
		return apiDemoService.userAuthentication(reqInfo);
	}
	
	/**
	 * 	用户详情信息查询服务
	 * 
	 * @param reqInfo
	 * @return
	 */
	@ApiOperation(value = "用户详情信息查询服务", notes = "用户详情信息查询服务", position = 30)
	//@SentinelResource(value = "qryUserInfo")//阿里流量防卫兵
	@RequestMapping(value = "qryUserInfo")
	public RspInfo<UserInfoRsp> qryUserInfo(@RequestBody @Valid ReqInfo<CommonHeadReq, QryUserInfoReq> reqInfo, BindingResult bindingResult) {
		return apiDemoService.qryUserInfo(reqInfo);
	}
	
	/**
	 * 	用户列表查询服务(带分页示例)
	 * 
	 * @param reqInfo
	 * @return
	 */
	@ApiOperation(value = "用户列表查询服务(带分页示例)", notes = "用户列表查询服务(带分页示例)", position = 40)
	//@SentinelResource(value = "qryUserList")//阿里流量防卫兵
	@RequestMapping(value = "qryUserList")
	public RspInfo<PaginationRsp<UserListRsp>> qryUserList(@RequestBody @Valid ReqInfo<CommonHeadReq, QryUserListReq> reqInfo, BindingResult bindingResult) {
		return apiDemoService.qryUserList(reqInfo);
	}
	
	/**
	 * 	区域列表级联查询服务(无分页示例)
	 * @param reqInfo
	 * @param bindingResult
	 * @return
	 */
	@ApiOperation(value = "区域列表级联查询服务(无分页示例)", notes = "区域列表级联查询服务(无分页示例)", position = 50)
	@RequestMapping(value = "/qryAreaList")
	public RspInfo<List<AreaListRsp>> qryAreaList(@RequestBody @Valid ReqInfo<CommonHeadReq, QryAreaListReq> reqInfo, BindingResult bindingResult) {
		return apiDemoService.qryAreaList(reqInfo);
	}
}
