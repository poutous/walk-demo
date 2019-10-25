package com.asiainfo.walk.webdemo.mvc.controller.app;

import org.walkframework.base.mvc.controller.base.BaseController;
import org.walkframework.base.system.factory.SingletonFactory;

import com.asiainfo.walk.common.subject.StaffSubject;


/**
 * controller基类
 *
 */
public class AppController extends BaseController{
	//当前登录主体，可获取用户身份信息、权限信息等
	protected final static StaffSubject subject = SingletonFactory.getInstance(StaffSubject.class);
}
