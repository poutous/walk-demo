/**
 * 
 */
package test.base;

import org.junit.After;
import org.junit.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * <p>测试基类</p>
 * 
 * @author  mengqk
 * @version  [1.0, 2016年1月14日]
 * @since  [2016年1月14日]
 */
public class TestBase {
	protected static final Logger log = LoggerFactory.getLogger(TestBase.class);
	
	private static Object LOCK = new Object();
	
	protected static ApplicationContext ctx = null;
	
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
}
