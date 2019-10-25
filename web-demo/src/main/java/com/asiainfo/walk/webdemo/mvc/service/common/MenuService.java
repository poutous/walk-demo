package com.asiainfo.walk.webdemo.mvc.service.common;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.walkframework.base.mvc.dao.BaseSqlSessionDao;
import org.walkframework.data.util.InParam;

import com.asiainfo.walk.webdemo.mvc.entity.TdSModfile;
import com.asiainfo.walk.webdemo.mvc.entity.TlMAccesslog;
import com.asiainfo.walk.webdemo.mvc.service.app.AppService;
import com.asiainfo.walk.webdemo.system.constant.SequenceConstants;

/**
 * 菜单服务
 * 
 */
@Service("menuService")
public class MenuService extends AppService{
	
	@Resource(name = "sqlSessionDao")
	private BaseSqlSessionDao dao;
    
    /**
     * 根据菜单ID获取url
     * 
     * @param menuId
     * @return
     */
    public String queryUrlByMenuId(final String menuId) {
    	@SuppressWarnings("serial")
		TdSModfile info = dao.selectOne(new TdSModfile(){{
    		setModCode(menuId).asCondition();
    	}});
    	if(info != null){
    		return info.getModName();
    	}
    	return null;
	}
    
    /**
     * 记录菜单访问日志
     * 
     * @param inParam
     */
    @SuppressWarnings("serial")
	public void doRecordMenuAccessLog(final InParam<String, Object> inParam){
    	dao.insert(new TlMAccesslog(){{
    		setLogId(dao.getSequenceL20(SequenceConstants.SEQ_LOG_ID));
    		setMenuId(inParam.getString("menuId"));
    		setAccessUrl(inParam.getString("accessUrl"));
    		setAccessTime(common.getCurrentTime());
    		setAccessMonth(Short.parseShort(common.decodeTimestamp("MM", common.getCurrentTime())));
    		setCreateStaffId(subject.getPrincipal().getStaffId());
    		setCreateDepartId(subject.getPrincipal().getDepartId());
    	}});
    }
}
