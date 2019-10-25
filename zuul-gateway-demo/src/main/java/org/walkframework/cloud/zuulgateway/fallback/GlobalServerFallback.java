package org.walkframework.cloud.zuulgateway.fallback;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cloud.netflix.zuul.filters.route.FallbackProvider;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSONObject;


/**
 * zuul全局熔断器
 * 
 * @author shf675
 *
 */
@Component
public class GlobalServerFallback implements FallbackProvider {
	
	private final static int ERROR_CODE = -1;

	protected final Logger log = LoggerFactory.getLogger(this.getClass());

	@Override
	public String getRoute() {
		//api服务id，如果需要所有调用都支持回退，则return "*"或return null 
		return "*";
	}

	/** 
     * 如果请求用户服务失败，返回什么信息给消费者客户端 
     */
	@Override
	public ClientHttpResponse fallbackResponse() {
		return fallbackResponse(null);
	}

	/** 
     * 如果请求用户服务失败，返回什么信息给消费者客户端 
     */
	@Override
	public ClientHttpResponse fallbackResponse(Throwable cause) {
		String errorInfo = "zuul: System error, request failure!";
		if (cause != null && cause.getCause() != null) {
			errorInfo += " reason:" + cause.getCause().getMessage();
		}
		log.error(errorInfo, cause);

		final String _errorInfo = errorInfo;
		return new ClientHttpResponse() {

			@Override
			public InputStream getBody() throws IOException {
				JSONObject errorInfo = new JSONObject();
				errorInfo.put("rspCode", ERROR_CODE);
				errorInfo.put("rspDesc", _errorInfo);
				return new ByteArrayInputStream(errorInfo.toString().getBytes("UTF-8"));
			}

			@Override
			public HttpHeaders getHeaders() {
				HttpHeaders headers = new HttpHeaders();
				// 和body中的内容编码一致，否则容易乱码
				headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
				return headers;
			}

			/**
			 * 网关向api服务请求是失败了，但是消费者客户端向网关发起的请求是OK的， 不应该把api的404,500等问题抛给客户端
			 * 网关和api服务集群对于客户端来说是黑盒子
			 */
			@Override
			public HttpStatus getStatusCode() throws IOException {
				return HttpStatus.OK;
			}

			@Override
			public int getRawStatusCode() throws IOException {
				return HttpStatus.OK.value();
			}

			@Override
			public String getStatusText() throws IOException {
				return HttpStatus.OK.getReasonPhrase();
			}

			@Override
			public void close() {
			}
		};
	}
}
