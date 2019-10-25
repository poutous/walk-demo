package com.asiainfo.walk.webdemo.tools;

import java.lang.reflect.Method;

import com.asiainfo.walk.webdemo.mvc.entity.TdMUser;

/**
 * 根据实体类生成set语句
 * 
 */
public abstract class EntityToSetMethod {

	public static void main(String[] args) throws Exception {
		entityToSetMethod(TdMUser.class, "user");
	}

	public static void entityToSetMethod(Class<?> clazz, String name) throws Exception {
		Method[] methods = clazz.getDeclaredMethods();
		for (Method method : methods) {
			if(method.getName().startsWith("set")){
				System.out.println(name + "." + method.getName() + "();");
			}
		}
	}
}
