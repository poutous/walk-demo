package com.asiainfo.walk.task.tools;

import java.lang.reflect.Method;

/**
 * 根据实体类生成set语句
 * 
 */
public abstract class EntityToSetMethodUtil {

	public static void main(String[] args) throws Exception {
//		entityToSetMethod(TlFMessageLog.class, "data", "msgInfo");
	}

	public static void entityToSetMethod(Class<?> clazz, String target, String source) throws Exception {
		Method[] methods = clazz.getDeclaredMethods();
		StringBuilder method = new StringBuilder();
		for (Method m : methods) {
			if(m.getName().startsWith("set")){
				method.append(target + "." + m.getName() + "("+source+".getString(\"XX\")"+");\n");
			}
		}
		System.out.println(method);
	}
}
