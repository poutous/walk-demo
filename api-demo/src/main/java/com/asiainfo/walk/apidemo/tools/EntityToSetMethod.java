package com.asiainfo.walk.apidemo.tools;

import java.lang.reflect.Field;

import org.walkframework.base.system.common.Common;
import org.walkframework.data.annotation.Column;

import com.asiainfo.walk.apidemo.mvc.model.demo.rsp.UserInfoRsp;

import io.swagger.annotations.ApiModelProperty;

/**
 * 根据实体类生成set方法
 * 
 */
public abstract class EntityToSetMethod {

	public static void main(String[] args) throws Exception {
		entityToSetMethod(UserInfoRsp.class, "rsp", "row");
	}

	public static void entityToSetMethod(Class<?> clazz, String target, String source) throws Exception {
		Field[] fields = clazz.getDeclaredFields();
		StringBuilder method = new StringBuilder();
		for (Field field : fields) {
			Column column = field.getAnnotation(Column.class);
			ApiModelProperty api = field.getAnnotation(ApiModelProperty.class);
			if (column != null || api != null) {
				String name = Common.getInstance().toUpperCaseFirstOne(field.getName());
				method.append(target + ".set" + name + "(" + source + ".get" + name + "());\n");
			}
		}
		System.out.println(method);
	}
}
