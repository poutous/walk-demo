package test.base;

import org.junit.After;
import org.junit.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * 测试基类
 * 
 */
public class TestBase {
	protected static final Logger log = LoggerFactory.getLogger(TestBase.class);
	
	private static Object LOCK = new Object();
	
	protected static ApplicationContext ctx = null;
	
	public static ApplicationContext getCtx() {
		return ctx;
	}

	@Before
	public void before() {
		log.debug("before start junit test.");
		synchronized (LOCK) {
			if (null == ctx) {
				ctx = new ClassPathXmlApplicationContext("test/spring/spring-config.xml");
				log.debug("init spring context finished.");
			}
		}
	}
	
	@After
	public void after() {
		log.debug("after junit test.");
	}
	
	/**
	 * 打印日志
	 * 
	 * @param title
	 * @param req
	 * @param rsp
	 */
	protected void printLog(String title, Object req, Object rsp){
		log.info("=========={}测试开始...", title);
		log.info("请求报文：{}", req);
		log.info("返回报文：{}", rsp);
		log.info("=========={}测试结束...", title);
	}
}
