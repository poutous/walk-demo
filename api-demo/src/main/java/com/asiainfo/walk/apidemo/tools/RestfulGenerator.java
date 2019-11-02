package com.asiainfo.walk.apidemo.tools;

import java.io.IOException;

import org.walkframework.restful.generator.Config;
import org.walkframework.restful.generator.JavaFileBuilder;

/**
 * 接口请求报文与返回报文生成器
 * 
 * @author wangxin
 * 
 */
public class RestfulGenerator {

	/**
	 * 直接执行本方法生成
	 * 
	 * @param args
	 * @throws Exception
	 */
	public static void main(String[] args) throws Exception {
		
		//生成模型代码
		startGenCode();
	}
	
	/**
	 * 生成模型代码
	 * 
	 * @throws Exception
	 */
	public static void startGenCode() throws Exception {
		Config config = Config.DEFAULT;
		// 1、设置是否覆盖原有文件，此项配置要注意！！！
		config.setOverride(true);
		// 2、设置请求报文包名
		config.setReqPackageName("com.asiainfo.walk.apidemo.mvc.model.user.req");
		// 3、设置返回报文包名
		config.setRspPackageName("com.asiainfo.walk.apidemo.mvc.model.user.rsp");
		// 4、设置属性翻译器包名
		config.setTranslatorPackageName("com.asiainfo.walk.apidemo.mvc.service.user.translator");
		// 5、设置Excel文档目录
		config.setExcelFileDir("D:/Workspace/github/walk-demo/doc/apidoc");
		// 6、设置生成的.java文件存放目录位置
		config.setCodeDirPath("D:/Workspace/github/walk-demo/doc/gen");
		// 7、执行...
		JavaFileBuilder.newInstance().builder(config);
		// 8、打开生成好的代码文件目录
		openDir(config.getCodeDirPath());
	}

	// 打开输出目录
	private static void openDir(String openDir) {
		try {
			String osName = System.getProperty("os.name");
			if (osName != null) {
				if (osName.contains("Mac")) {
					Runtime.getRuntime().exec("open " + openDir);
				} else if (osName.contains("Windows")) {
					Runtime.getRuntime().exec("cmd /c start " + openDir);
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
