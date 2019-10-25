package com.asiainfo.walk.apidemo.tools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Types;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.walkframework.batis.tools.dbtobean.ConnectionTools;
import org.walkframework.batis.tools.dbtobean.CreateBeanConfig;
import org.walkframework.batis.tools.dbtobean.CreateBeans;

/**
 * 根据数据库表生成接口文档
 * 
 */
public abstract class DbToInterfaceDoc {
	
	private static final String SEPARATOR = "	";

	/**
	 * 数据源设置
	 * 
	 * @return
	 */
	private static CreateBeanConfig createBeanConfig() {
		CreateBeanConfig appConfig = new CreateBeanConfig();
		appConfig.setDriverClassName("com.mysql.jdbc.Driver");
		appConfig.setDburl("jdbc:mysql://127.0.0.1:3306/obilling?useUnicode=true&amp;characterEncoding=utf-8");
		appConfig.setDbusername("obilling");
		appConfig.setDbpassword("123456");
		return appConfig;
	}

	public static void main(String[] args) throws Exception {

		// 打印表信息
		printFieldInfo("TD_M_USER");
	}

	/**
	 * 打印表信息
	 * 
	 * @param tableName
	 * @throws Exception
	 */
	private static void printFieldInfo(String tableName) throws Exception {
		CreateBeanConfig appConfig = createBeanConfig();
		Connection connection = ConnectionTools.getConnection(appConfig.getDriverClassName(), appConfig.getDburl(), appConfig.getDbusername(), appConfig.getDbpassword());
		tableName = tableName.toUpperCase();
		String sql = "select * from " + tableName + " where 1 = 0";
		PreparedStatement pre = null;
		try {
			Map<String, String> columnsMap = getComments(connection, tableName);
			pre = connection.prepareStatement(sql);
			ResultSetMetaData metaData = pre.executeQuery().getMetaData();

			for (int i = 1; i <= metaData.getColumnCount(); i++) {

				String field = getJavaField(metaData.getColumnName(i).toUpperCase());
				String type = getJavaType(metaData.getColumnType(i), metaData.getColumnType(i) == 2 ? metaData.getPrecision(i) : metaData.getColumnDisplaySize(i));
				String len = getLen(metaData.getColumnType(i), metaData.getColumnType(i) == 2 ? metaData.getPrecision(i) : metaData.getColumnDisplaySize(i));
				String comment = StringUtils.trim(StringUtils.replaceAll(columnsMap.get(metaData.getColumnName(i).toUpperCase()), "(\r\n|\r|\n|\n\r|\")", ""));
				int nullable = metaData.isNullable(i);
				System.out.println(field + SEPARATOR + "reqBody" + SEPARATOR + (nullable == 0 ? "1" : "?") + SEPARATOR + type + SEPARATOR + len + SEPARATOR + (comment==null?SEPARATOR:comment));
			}
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				ConnectionTools.closeConnection(null, null, connection);
			} catch (SQLException e) {
				throw e;
			}
		}
	}

	private static Map<String, String> getComments(Connection connection, String tableName) throws Exception {
		tableName = tableName.toUpperCase();

		ResultSet rs = null;
		Map<String, String> columnsMap = new HashMap<String, String>();
		try {
			rs = connection.getMetaData().getColumns(null, CreateBeans.getSchema(connection), tableName, "%");
			while (rs.next()) {
				columnsMap.put(rs.getString("COLUMN_NAME"), rs.getString("REMARKS"));
			}
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				ConnectionTools.closeConnection(rs, null, null);
			} catch (SQLException e) {
				throw e;
			}
		}
		return columnsMap;
	}

	private static String getJavaField(String code) {
		try {
			code = code.toLowerCase();
			String[] name = code.split("_");
			String msg = name[0];
			for (int i = 1; i < name.length; i++) {
				msg = msg + name[i].substring(0, 1).toUpperCase() + name[i].substring(1, name[i].length());
			}
			return msg;
		} catch (Exception e) {
			throw new RuntimeException("Create the JavaBeans property name failed, possibly due to the incoming table name error.\r" + e.getMessage());
		}
	}

	private static String getJavaType(int columnType, int length) throws SQLException {
		String javaType = "String";
		switch (columnType) {
		case Types.ARRAY:
		case Types.DATALINK:
		case Types.DISTINCT:
		case Types.JAVA_OBJECT:
		case Types.NULL:
		case Types.OTHER:
		case Types.REF:
		case Types.STRUCT:
		case Types.CHAR:
		case Types.CLOB:
		case Types.LONGNVARCHAR:
		case Types.LONGVARCHAR:
		case Types.NCHAR:
		case Types.NCLOB:
		case Types.NVARCHAR:
		case Types.VARCHAR:
		case Types.DATE:
		case Types.TIME:
		case Types.TIMESTAMP:
		case Types.BINARY:
		case Types.BLOB:
		case Types.LONGVARBINARY:
		case Types.VARBINARY:
			javaType = "String";
			break;
		case Types.DOUBLE:
		case Types.FLOAT:
		case Types.BIT:
		case Types.BIGINT:
		case Types.INTEGER:
		case Types.REAL:
		case Types.SMALLINT:
		case Types.TINYINT:
		case Types.DECIMAL:
		case Types.NUMERIC:
			javaType = "Number";
			break;

		default:
			break;
		}
		return javaType;
	}

	private static String getLen(int columnType, int length) {
		String len = "V";
		switch (columnType) {
		case Types.CHAR:
			len = "F" + length;
			break;
		case Types.ARRAY:
		case Types.DATALINK:
		case Types.DISTINCT:
		case Types.JAVA_OBJECT:
		case Types.NULL:
		case Types.OTHER:
		case Types.REF:
		case Types.STRUCT:
		case Types.CLOB:
		case Types.LONGNVARCHAR:
		case Types.LONGVARCHAR:
		case Types.NCHAR:
		case Types.NCLOB:
		case Types.NVARCHAR:
		case Types.VARCHAR:
		case Types.BINARY:
		case Types.BLOB:
		case Types.LONGVARBINARY:
		case Types.VARBINARY:
		case Types.DOUBLE:
		case Types.FLOAT:
		case Types.BIT:
		case Types.BIGINT:
		case Types.INTEGER:
		case Types.REAL:
		case Types.SMALLINT:
		case Types.TINYINT:
		case Types.DECIMAL:
		case Types.NUMERIC:
			len = "V" + length;
			break;
		case Types.DATE:
		case Types.TIME:
		case Types.TIMESTAMP:
			len = "F14";
			break;
		default:
			break;
		}
		return len;
	}
}
