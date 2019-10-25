package com.asiainfo.walk.webdemo.mvc.controller.main;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.walkframework.base.system.security.DefaultUserService;
import org.walkframework.data.util.InParam;

import com.asiainfo.walk.webdemo.mvc.controller.app.AppController;
import com.asiainfo.walk.webdemo.mvc.service.common.MenuService;

/**
 * main
 *
 */
@RestController
@RequestMapping("/main")
public class MainController extends AppController {
	
	@Resource(name = "userService")
	private DefaultUserService userService;
	
	@Resource(name = "menuService")
	private MenuService menuService;

	
	/**
	 * 	首页
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "")
	public ModelAndView main(InParam<String, Object> inParam) throws Exception {
		ModelAndView mv = new ModelAndView("main/Main");
		mv.addObject("treeNode", userService.findMenus(subject.getPrincipal().getStaffId(), ""));
		return mv;
	}
	
	/**
	 * 记录菜单访问日志
	 * 
	 * @return
	 */
	@RequestMapping(value = "recordMenuAccessLog")
	public void recordMenuAccessLog(InParam<String, Object> inParam) {
		try {
			menuService.doRecordMenuAccessLog(inParam);
		} catch (Exception e) {
			log.error("记录菜单访问日志错误：" + e.getMessage(), e);
		}
	}
}