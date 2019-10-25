package com.asiainfo.walk.webdemo.tools.utils;

import java.io.IOException;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.walkframework.base.tools.spring.SpringPropertyHolder;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

/**
 *	API调用工具类
 * 
 *
 */
public class ApiUtil {

	private static transient Logger log = Logger.getLogger(ApiUtil.class);

	private static final String API_NAME = "出账流程";

	/**
	 * 	通过接口获取详情
	 * 
	 * @param tradeId
	 * @throws Exception 
	 */
	public static JSONObject call(String reqPath, String reqBodyJsonString) {
		try {
			String baseUrl = SpringPropertyHolder.getContextProperty("apidemo.url");
			String appId = SpringPropertyHolder.getContextProperty("apidemo.appId");
			String appKey = SpringPropertyHolder.getContextProperty("apidemo.appKey");

			long timestamp = System.currentTimeMillis();
			String sign = DigestUtils.sha256Hex(appId + timestamp + appKey);

			//拼装请求报文
			StringBuilder reqJsonString = new StringBuilder();
			reqJsonString.append("{");
			reqJsonString.append("\"reqHead\":{");
			reqJsonString.append("\"appId\":\"" + appId + "\",");
			reqJsonString.append("\"timestamp\":\"" + timestamp + "\",");
			reqJsonString.append("\"sign\":\"" + sign + "\"");
			reqJsonString.append("},");
			reqJsonString.append("\"reqBody\":").append(reqBodyJsonString);
			reqJsonString.append("}");

			// 拼装请求地址
			String apiUrl = baseUrl + reqPath;
			return doPostByJson(apiUrl, reqJsonString.toString());
		} catch (Exception e) {
			log.error(e.getMessage(), e);
			return null;
		}
	}

	/**
	 * @param apiUrl
	 * @param json
	 * @return
	 */
	private static JSONObject doPostByJson(String apiUrl, String reqJsonString) {

		long beginTime = System.currentTimeMillis();
		if (log.isInfoEnabled()) {
			log.info("============请求" + API_NAME + "API开始...");
			log.info("请求地址: " + apiUrl);
			log.info("请求报文: " + reqJsonString.toString());
		}

		JSONObject rspInfo = new JSONObject();
		CloseableHttpClient httpClient = HttpClients.createDefault();
		String responseText = null;
		HttpPost httpPost = new HttpPost(apiUrl);
		CloseableHttpResponse response = null;

		try {
			StringEntity stringEntity = new StringEntity(reqJsonString, "UTF-8");// 解决中文乱码问题
			stringEntity.setContentEncoding("UTF-8");
			stringEntity.setContentType("application/json");
			httpPost.setEntity(stringEntity);
			response = httpClient.execute(httpPost);
			HttpEntity entity = response.getEntity();
			responseText = EntityUtils.toString(entity, "UTF-8");

			if (log.isInfoEnabled()) {
				log.info("返回报文: " + responseText);
				log.info("============请求" + API_NAME + "API结束，耗时" + ((double) (System.currentTimeMillis() - beginTime) / (double) 1000) + "s");
			}

			if (StringUtils.isEmpty(responseText)) {
				rspInfo.put("rspCode", "-1");
				rspInfo.put("rspDesc", String.format("调用API[%s]错误：返回信息为空", apiUrl));
			} else {
				rspInfo = JSON.parseObject(responseText);
			}
		} catch (IOException e) {
			rspInfo.put("rspCode", "-1");
			rspInfo.put("rspDesc", String.format("调用API[%s]错误：%s", apiUrl, e.getMessage()));
			log.error(e.getMessage(), e);
		} finally {
			if (response != null) {
				try {
					EntityUtils.consume(response.getEntity());
				} catch (IOException e) {
					log.error(e.getMessage(), e);
				}
			}
		}
		return rspInfo;
	}
}