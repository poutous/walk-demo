package com.asiainfo.walk.webdemo;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.data.redis.RedisAutoConfiguration;
import org.springframework.boot.autoconfigure.data.redis.RedisRepositoriesAutoConfiguration;
import org.springframework.boot.autoconfigure.freemarker.FreeMarkerAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.boot.autoconfigure.web.WebMvcAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.walkframework.boot.WalkApplicationConfiguration;
import org.walkframework.boot.context.WalkConfigEmbeddedWebApplicationContext;
import org.walkframework.boot.startup.WalkSpringBootServletInitializer;

/**
 * spring boot方式启动工程
 * 
 * @author shf675
 * 
 */
@SpringBootApplication(exclude = {
		DataSourceAutoConfiguration.class,
		DataSourceTransactionManagerAutoConfiguration.class,
		HibernateJpaAutoConfiguration.class,
		RedisAutoConfiguration.class,
		RedisRepositoriesAutoConfiguration.class,
		WebMvcAutoConfiguration.class,
		FreeMarkerAutoConfiguration.class})
//@EnableDiscoveryClient//springcloud相关
public class BootRun extends WalkSpringBootServletInitializer {
	
	/**
	 * jar或直接运行BootRun方式启动入口
	 * 
	 * @param args
	 * @throws Exception
	 */
	public static void main(String[] args) throws Exception {
		WalkApplicationConfiguration.run(args, WalkApplicationConfiguration.class, BootRun.class);
	}
	
	/**
	 * war包方式启动入口
	 * 
	 * @param application
	 */
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder applicationBuilder) {
		applicationBuilder.application().setApplicationContextClass(WalkConfigEmbeddedWebApplicationContext.class);
        return applicationBuilder.sources(WalkApplicationConfiguration.class, BootRun.class);
    }
}
