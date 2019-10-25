package com.asiainfo.walk.apidemo.mvc.service.demo;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.collections.CollectionUtils;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.springframework.stereotype.Service;
import org.walkframework.base.mvc.dao.BaseSqlSessionDao;
import org.walkframework.cache.annotation.ICacheable;
import org.walkframework.data.bean.PageData;
import org.walkframework.restful.model.req.ReqInfo;
import org.walkframework.restful.model.rsp.PaginationRsp;
import org.walkframework.restful.model.rsp.RspInfo;

import com.asiainfo.walk.apidemo.mvc.entity.TdMArea;
import com.asiainfo.walk.apidemo.mvc.entity.TdMUser;
import com.asiainfo.walk.apidemo.mvc.entity.ext.TdMUserExt;
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
import com.asiainfo.walk.apidemo.mvc.service.app.AppService;
import com.asiainfo.walk.apidemo.system.constant.SeqConstants;

/**
 * 	demo服务
 * 
 */
@Service("apiDemoService")
public class ApiDemoService extends AppService {

	@Resource(name = "sqlSessionDao")
	private BaseSqlSessionDao dao;

	/**
	 * 	用户注册服务
	 * 
	 * @param reqInfo
	 * @return
	 */
	@SuppressWarnings("serial")
	public RspInfo<UserRegisterRsp> doUserRegister(final ReqInfo<CommonHeadReq, UserRegisterReq> reqInfo) {
		RspInfo<UserRegisterRsp> rspInfo = new RspInfo<UserRegisterRsp>(new UserRegisterRsp());
		rspInfo.getRspData().setSuccessFlag("0");
		
		//校验
		Long count = dao.selectCount(new TdMUser(){{
			setUserName(reqInfo.getReqBody().getUserName()).asCondition();
		}});
		if(count != null && count > 0){
			rspInfo.getRspData().setSuccessFlag("-1");
			rspInfo.setRspDesc("用户编码已存在！");
			return rspInfo;
		}
		count = dao.selectCount(new TdMUser(){{
			setUserPid(reqInfo.getReqBody().getUserPid()).asCondition();
		}});
		if(count != null && count > 0){
			rspInfo.getRspData().setSuccessFlag("-1");
			rspInfo.setRspDesc("该身份证已被注册！");
			return rspInfo;
		}
		
		UserRegisterReq register = reqInfo.getReqBody();
		
		//插入用户表
		TdMUser newUser = new TdMUser();
		newUser.setUserId(dao.getSequenceL16(SeqConstants.SEQ_USER_ID));
		newUser.setUserName(register.getUserName());
		newUser.setPassword(new Sha256Hash(register.getPassword()).toString());
		newUser.setRealName(register.getRealName());
		newUser.setSex(register.getSex());
		newUser.setUserPid(register.getUserPid());
		newUser.setEmail(register.getEmail());
		newUser.setSerialNumber(register.getMobilePhone());
		newUser.setUserState("1");
		newUser.setBirthday(common.encodeTimestamp("yyyyMMdd", register.getBirthday()));
		newUser.setProvinceCode(register.getProvinceCode());
		newUser.setEparchyCode(register.getEparchyCode());
		newUser.setCityCode(register.getCityCode());
		newUser.setCreateTime(common.getCurrentTime());
		dao.insert(newUser);
		return rspInfo;
	}
	
	/**
	 * 	用户认证服务
	 * 
	 * @param reqInfo
	 * @return
	 */
	@SuppressWarnings("serial")
	public RspInfo<UserAuthenticationRsp> userAuthentication(final ReqInfo<CommonHeadReq, UserAuthenticationReq> reqInfo) {
		UserAuthenticationRsp rspInfo = new UserAuthenticationRsp();
		rspInfo.setSuccessFlag("0");
		
		String enPassword = new Sha256Hash(reqInfo.getReqBody().getPassword()).toString();
		
		TdMUser user = dao.selectOne(new TdMUser(){{
			setUserName(reqInfo.getReqBody().getUserName()).asCondition();
		}});
		if(user == null || !enPassword.equals(user.getPassword())){
			rspInfo.setSuccessFlag("-1");
			rspInfo.setErrorCode("00");
			rspInfo.setErrorMsg("用户不存在或密码错误");
		} else if(!"1".equals(user.getUserState())){
			rspInfo.setSuccessFlag("-1");
			rspInfo.setErrorCode("10");
			rspInfo.setErrorMsg("用户状态异常");
		}
		return new RspInfo<UserAuthenticationRsp>(rspInfo);
	}
	
	/**
	 * 	用户详情信息查询服务
	 * 
	 * @param reqInfo
	 * @return
	 */
	@SuppressWarnings("serial")
	public RspInfo<UserInfoRsp> qryUserInfo(final ReqInfo<CommonHeadReq, QryUserInfoReq> reqInfo) {
		
		UserInfoRsp rspInfo = null;
		TdMUserExt user = dao.selectOne(new TdMUserExt(){{
			setUserName(reqInfo.getReqBody().getUserName()).asCondition();
		}});
		
		if(user != null){
			//@EntityTranslate测试
			List<TdMArea> areaList = user.getAreaList();
			log.info("SaleUserService.qryUserInfoById()>>>" + areaList);
			
			//@SqlTranslate测试
			List<TdMArea> areaList2 = user.getAreaList2();
			log.info("SaleUserService.qryUserInfoById()>>>" + areaList2);
			
			rspInfo = new UserInfoRsp();
			rspInfo.setUserId(user.getUserId()+"");
			rspInfo.setUserName(user.getUserName());
			rspInfo.setRealName(user.getRealName());
			rspInfo.setSex(user.getSex());
			rspInfo.setEmail(user.getEmail());
			rspInfo.setBirthday(common.decodeTimestamp("yyyyMMdd", user.getBirthday()));
			rspInfo.setSerialNumber(user.getSerialNumber());
			rspInfo.setUserState(user.getUserState());
			rspInfo.setCityCode(user.getCityCode());
			rspInfo.setEparchyCode(user.getEparchyCode());
			rspInfo.setProvinceId(user.getProvinceCode());
			rspInfo.setRemark(user.getRemark());
		}
		return new RspInfo<UserInfoRsp>(rspInfo);
	}
	
	/**
	 * 	用户列表查询服务
	 * 
	 * @param reqInfo
	 * @return
	 */
	public RspInfo<PaginationRsp<UserListRsp>> qryUserList(ReqInfo<CommonHeadReq, QryUserListReq> reqInfo) {
		PageData<TdMUserExt> pageData = dao.selectList("ApiDemoSQL.qryUserList", reqInfo.bodyParameters(), reqInfo.paginationInfo());
		PaginationRsp<UserListRsp> paginationRsp = new PaginationRsp<UserListRsp>(pageData.getTotal());
		List<TdMUserExt> rows = pageData.getRows();
		if (CollectionUtils.isNotEmpty(rows)) {
			for (TdMUserExt row : rows) {
				UserListRsp rsp = new UserListRsp();
				rsp.setUserId(row.getUserId() + "");
				rsp.setUserName(row.getUserName());
				rsp.setRealName(row.getRealName());
				rsp.setSex(row.getSex());
				rsp.setEmail(row.getEmail());
				rsp.setBirthday(common.decodeTimestamp("yyyyMMdd", row.getBirthday()));
				rsp.setSerialNumber(row.getSerialNumber());
				rsp.setUserState(row.getUserState());
				rsp.setCityCode(row.getCityCode());
				rsp.setEparchyCode(row.getEparchyCode());
				rsp.setProvinceId(row.getProvinceCode());
				rsp.setRemark(row.getRemark());
				
				// 注册productListRsp.elementInfos节点翻译器入参
//				productListRsp.registerPropertyTranslatorSourceObject("elementInfos", row.getItemId());
				
				paginationRsp.addRow(rsp);
			}
		}
		return new RspInfo<PaginationRsp<UserListRsp>>(paginationRsp);
	}
	
	/**
	 * 	行政区域级联查询
	 * 
	 * @param reqInfo
	 * @return
	 */
	@SuppressWarnings("serial")
	@ICacheable(value = "QUERY_CACHE_DEMO", cacheSeconds="3600")
	public RspInfo<List<AreaListRsp>> qryAreaList(ReqInfo<CommonHeadReq, QryAreaListReq> reqInfo) {
		RspInfo<List<AreaListRsp>> rspInfo = new RspInfo<List<AreaListRsp>>();
		
		final QryAreaListReq reqBody = reqInfo.getReqBody();
		List<TdMArea> list = dao.selectList(new TdMArea() {{
			setParentAreaCode(reqBody.getParentAreaCode()).asCondition();
			setValidflag("0").asCondition();
		}});
		if (CollectionUtils.isEmpty(list)) {
			return rspInfo;
		}
		List<AreaListRsp> rspData = new ArrayList<AreaListRsp>();
		for (TdMArea data : list) {
			AreaListRsp rsp = new AreaListRsp();
			rsp.setAreaCode(data.getAreaCode());
			rsp.setAreaName(data.getAreaName());
			rsp.setAreaLevel(data.getAreaLevel());
			rspData.add(rsp);
		}
		return rspInfo.setRspData(rspData);
	}
	
}
