package com.asiainfo.walk.apidemo.tools;

import org.walkframework.batis.tools.dbtobean.CreateBeanConfig;
import org.walkframework.batis.tools.dbtobean.CreateBeans;

/**
 * 根据数据库表生成实体类
 *
 */
public abstract class DbToEntity {
	
    public static void main(String[] args) throws Exception {
    	CreateBeanConfig appConfig = new CreateBeanConfig();
    	appConfig.setDriverClassName("com.mysql.jdbc.Driver");
		appConfig.setDburl("jdbc:mysql://127.0.0.1:3306/obillingdb?useUnicode=true&amp;characterEncoding=utf-8");
		appConfig.setDbusername("obilling");
		appConfig.setDbpassword("123456");
		
		String packageName = "com.asiainfo.walk.apidemo.mvc.entity";
		String packagePath = "D:\\Workspace\\HLJ_WW\\obilling\\code\\branches\\develop\\obs\\obs-api\\src\\main\\java\\com\\asiainfo\\walk\\apidemo\\mvc\\entity";

		String[][] tables = new String[][] {
			new String[] {"TD_M_USER", packageName, packagePath},
		};
		CreateBeans.createJavaBean(tables, appConfig);
    }
}
