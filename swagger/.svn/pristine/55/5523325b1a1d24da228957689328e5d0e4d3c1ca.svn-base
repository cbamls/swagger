package org.leafframework.test;

import java.util.HashMap;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.leafframework.data.mao.RedisDao;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class RedisDaoTest {
	protected Logger logger = Logger.getLogger(this.getClass());
	private RedisDao redisDao;

	@Before
	public void setUp() throws Exception {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				new String[]{
						"classpath:org/leafframework/conf/spring-test.xml"});
		redisDao = (RedisDao) context.getBean("redisDao");
	}

	@Test
	public void testSave() {
		HashMap<String, Object> hm = new HashMap<String, Object>();
		hm.put("name", "liww");
		hm.put("age", 28);
		hm.put("sex", "男");
		String prefix = "leaf_test";
		redisDao.save(prefix, "230125198003153531", hm, 300);
		redisDao.save(prefix, "230125198003153532", hm, 300);
	}

	@Test
	public void testRead() {
		String prefix = "leaf_test";
		HashMap<String, Object> hm = redisDao
				.read(prefix, "230125198003153531");
		logger.debug(hm);
		hm = redisDao.read(prefix, "230125198003153532");
		logger.debug(hm);
	}

	@Test
	public void testDelete() {
		String prefix = "leaf_test";
		redisDao.delete(prefix, "230125198003153531");
		redisDao.delete(prefix, "230125198003153532");
	}

}
