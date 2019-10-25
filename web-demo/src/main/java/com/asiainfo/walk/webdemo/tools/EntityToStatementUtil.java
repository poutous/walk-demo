package com.asiainfo.walk.webdemo.tools;

import java.lang.reflect.Field;

import org.walkframework.data.annotation.Column;
import org.walkframework.data.annotation.Table;
import org.walkframework.data.entity.BaseEntity;

import com.asiainfo.walk.webdemo.mvc.entity.TdMUser;

/**
 * 根据实体类生成mybatis语句
 * 
 */
public abstract class EntityToStatementUtil {

	public static void main(String[] args) throws Exception {
		entityToStatement(TdMUser.class, "A");
	}

	public static void entityToStatement(Class<? extends BaseEntity> clazz, String alias) throws Exception {
		Field[] fields = clazz.getDeclaredFields();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT " + alias + ".*").append("\n");
		sql.append("  FROM ").append(clazz.getAnnotation(Table.class).name()).append(" " + alias).append("\n");
		sql.append(" WHERE 1 = 1").append("\n");
		for (Field field : fields) {
			Column column = field.getAnnotation(Column.class);
			if (column != null) {
				sql.append("<if test=\"" + field.getName() + " != null and " + field.getName() + " != ''\">").append("\n");
				sql.append("	AND " + alias + "." + column.name()).append(" = #{" + field.getName() + "}").append("\n");
				sql.append("</if>").append("\n");
			}
		}
		System.out.println(sql);
	}
}
