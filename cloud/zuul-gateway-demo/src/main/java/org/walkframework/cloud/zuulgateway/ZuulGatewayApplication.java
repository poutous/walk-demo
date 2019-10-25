package org.walkframework.cloud.zuulgateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;

/**
 * zuul路由网关
 * 
 * @author shf675
 *
 */
@SpringBootApplication
@EnableZuulProxy
@EnableDiscoveryClient
public class ZuulGatewayApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(ZuulGatewayApplication.class, args);
	}
}
