package com.asiainfo.walk.webdemo.mvc.controller.demo;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.walkframework.data.util.InParam;

import com.asiainfo.walk.webdemo.mvc.controller.app.AppController;
import com.asiainfo.walk.webdemo.mvc.service.common.CallApiService;

/**
 * 	用户管理Controller
 *
 */
@RestController
@RequestMapping("/demo/callapi")
public class CallApiDemoController extends AppController {

	@Resource(name = "callApiService")
	private CallApiService callApiService;
	
	/**
	 * 	进入用户详情界面
	 * 
	 * @return
	 */
	@RequestMapping(value = "forwardUserViewDemo/{userName}")
	public ModelAndView forwardUserView(@PathVariable String userName){
		InParam<String, Object> inparam = new InParam<String, Object>();
		inparam.put("userName", userName);
		ModelAndView model = new ModelAndView("demo/callapi/ViewDemo");
		model.addObject("userInfo", callApiService.call("demo/qryUserInfo", inparam));
		return model;
	}
}