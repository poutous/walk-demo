package com.asiainfo.walk.webdemo.mvc.service.demo;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.walkframework.base.mvc.dao.BaseSqlSessionDao;
import org.walkframework.base.mvc.service.common.FileService;
import org.walkframework.batis.bean.BatchEachHandler;
import org.walkframework.data.bean.PageData;
import org.walkframework.data.bean.Pagination;
import org.walkframework.data.util.IData;
import org.walkframework.shiro.util.password.DefaultPasswordEncryptor;
import org.walkframework.shiro.util.password.PasswordEncryptor;

import com.asiainfo.walk.webdemo.mvc.entity.TdMUser;
import com.asiainfo.walk.webdemo.mvc.service.app.AppService;
import com.asiainfo.walk.webdemo.system.constant.SequenceConstants;

/**
 * 	用户管理Service
 * 
 */
@Service("userDemoService")
public class UserDemoService extends AppService {
	
	@Resource(name = "sqlSessionDao")
	private BaseSqlSessionDao dao;
	
	@Resource(name = "fileService")
	private FileService fileService;
	
	private static final PasswordEncryptor passwordEncryptor = new DefaultPasswordEncryptor();
	
	/**
     * 	查询用户列表（不带分页）
     * 
     * @param param
     * @param pagination
     */
	public List<TdMUser> queryUserList(IData<String, Object> inParam) {
		return dao.selectList("SaleUserSQL.queryUserList", inParam);
	}
	
	/**
	 * 	查询用户列表（带分页）
	 * 
	 * @param param
	 * @param pagination
	 */
//	@ICacheable(cacheSeconds = "3600")
	public PageData<TdMUser> queryUserList(IData<String, Object> inParam, Pagination pagination){
//		Conditions conditions = new Conditions(TdMUser.class);
//		if(!StringUtils.isEmpty(inParam.getString("sex"))){
//			conditions.andEqual(TdMUser.SEX, inParam.getString("sex"));
//		}
//		if(!StringUtils.isEmpty(inParam.getString("userName"))){
//			conditions.andLike(TdMUser.USER_NAME, "%" + inParam.getString("userName") + "%");
//		}
//		if(!StringUtils.isEmpty(inParam.getString("realName"))){
//			conditions.andLike(TdMUser.REAL_NAME, "%" + inParam.getString("realName") + "%");
//		}
//		if(!StringUtils.isEmpty(inParam.getString("userPid"))){
//			conditions.andLike(TdMUser.USER_PID, "%" + inParam.getString("userPid") + "%");
//		}
//		if(!StringUtils.isEmpty(inParam.getString("serialNumber"))){
//			conditions.andLike(TdMUser.SERIAL_NUMBER, "%" + inParam.getString("serialNumber") + "%");
//		}
//		if(!StringUtils.isEmpty(inParam.getString("email"))){
//			conditions.andLike(TdMUser.EMAIL, "%" + inParam.getString("email") + "%");
//		}
//		
//		return dao.selectList(conditions, pagination);
		return dao.selectList("UserDemoSQL.queryUserList", inParam, pagination);
	}
	
	/**
	 * 	查询单个用户
	 * 
	 * @param userId
	 * @return
	 */
	@SuppressWarnings("serial")
	public TdMUser queryUserInfo(final Long userId) {
		return dao.selectOne(new TdMUser() {{
			setUserId(userId).asCondition();
		}});
	}
	
	/**
	 * 	新增用户
	 * 
	 * @param user
	 * @return
	 */
	public void createUser(TdMUser user){
		String userId = dao.getSequenceL16(SequenceConstants.SEQ_USER_ID);
		user.setUserId(Long.valueOf(userId));
		user.setPassword(passwordEncryptor.encrypt("123456"));//演示使用，密码后台默认
		user.setUserState("1");//默认有效
		user.setCreateTime(common.getCurrentTime());
		user.setCreateStaffId(subject.getPrincipal().getStaffId());
		dao.insert(user);
	}
	
	/**
	 * 	用户批量导入
	 * 
	 * @param users
	 */
	public void doImportUsers(List<TdMUser> users) {
		dao.insertBatch(users, new BatchEachHandler<TdMUser>() {
			@Override
			public void onEach(TdMUser user) {
				String userId = dao.getSequenceL16(SequenceConstants.SEQ_USER_ID);
				user.setUserId(Long.valueOf(userId));
				user.setPassword(passwordEncryptor.encrypt("123456"));//演示使用，密码后台默认
				user.setUserState("1");//默认有效
				user.setCreateTime(common.getCurrentTime());
				user.setCreateStaffId(subject.getPrincipal().getStaffId());
			}
		});
	}

	/**
	 * 	修改用户
	 * 
	 * @param user
	 * @return
	 */
	public void modifyUser(TdMUser user) {
		user.setUserId(user.getUserId()).asCondition();
		user.setUpdateTime(common.getCurrentTime());
		user.setUpdateStaffId(subject.getPrincipal().getStaffId());
		dao.update(user);
	}

	/**
	 * 	删除用户
	 * 
	 * @param userId
	 */
	public void delUser(Long userId) {
		TdMUser user = new TdMUser();
		user.setUserId(userId).asCondition();
		dao.delete(user);
	}
    
}
