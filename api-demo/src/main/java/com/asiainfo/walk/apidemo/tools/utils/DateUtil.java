package com.asiainfo.walk.apidemo.tools.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.walkframework.base.system.common.Common;
import org.walkframework.base.system.factory.SingletonFactory;

/**
 * 日期工具类
 * 
 */
public abstract class DateUtil {
	
	private final static Common common = SingletonFactory.getInstance(Common.class);
	
	/**
	 * 默认日期格式化格式
	 */
	public static final String DEFAULT_FORMAT = "yyyyMMddHHmmss";
	
	/**
	 * 默认失效时间
	 * 
	 */
	public static final Date DEFAULT_END_DATE = common.encodeTimestamp(DEFAULT_FORMAT, "20991231125959");
	
	/**
	 * 字符串转日期
	 * 
	 * @param timeStr
	 * @return
	 */
	public static Date encodeTimestamp(String timeStr) {
		return common.encodeTimestamp(DEFAULT_FORMAT, timeStr);
	}
	
	/**
	 * 字符串转日期
	 * 
	 * @param timeStr
	 * @param defaultDate
	 * @return
	 */
	public static Date encodeTimestamp(String timeStr, Date defaultDate) {
		Date date = encodeTimestamp(timeStr);
		return date == null ? defaultDate:date;
	}
	
	/**
	 * 日期转字符串
	 * 
	 * @param date
	 * @return
	 */
	public static String decodeTimestamp(Date date) {
		return date == null ? null : common.decodeTimestamp(DEFAULT_FORMAT, date);
	}
	
	/**
	 * 获取上月第一天
	 * 
	 * @return
	 */
	public static String getPrevMonthFirstDay(String format) {
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, -1);
		cal.set(Calendar.DAY_OF_MONTH, 1);

		SimpleDateFormat dateformat = new SimpleDateFormat(format);
		return dateformat.format(cal.getTime());
	}
	
	/**
	 * 获取本月第一天
	 * 
	 * @return
	 */
	public static String getCurrMonthFirstDay(String format) {
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.DAY_OF_MONTH, 1);
		SimpleDateFormat dateformat = new SimpleDateFormat(format);
		return dateformat.format(cal.getTime());
	}
	
	/**
	 * 获取下月第一天
	 * 
	 * @return
	 */
	public static String getNextMonthFirstDay(String format) {
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, 1);
		cal.set(Calendar.DAY_OF_MONTH, 1);
		SimpleDateFormat dateformat = new SimpleDateFormat(format);
		return dateformat.format(cal.getTime());
	}
}
