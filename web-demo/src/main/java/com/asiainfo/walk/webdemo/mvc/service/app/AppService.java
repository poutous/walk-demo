package com.asiainfo.walk.webdemo.mvc.service.app;

import org.walkframework.base.mvc.service.base.BaseService;
import org.walkframework.base.system.factory.SingletonFactory;

import com.asiainfo.walk.common.subject.StaffSubject;


/**
 * service基类
 * 
 */
public class AppService extends BaseService {
	
	//当前登录主体，可获取用户身份信息、权限信息等
	protected final static StaffSubject subject = SingletonFactory.getInstance(StaffSubject.class);
}
