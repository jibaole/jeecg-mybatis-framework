package demo.service.test;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.service.BaseService;
import demo.dao.test.JeecgTestDao;

/**
 * 
 * <br>
 * <b>功能：</b>JeecgTestService<br>
 * <b>作者：</b>www.jeecg.org<br>
 * <b>日期：</b> Feb 2, 2013 <br>
 * <b>版权所有：<b>版权所有(C) 2013，www.jeecg.org<br>
 */
@Service("jeecgTestService")
public class JeecgTestService<T> extends BaseService<T> {
	private final static Logger log= Logger.getLogger(JeecgTestService.class);
	

	

	@Autowired
    private JeecgTestDao<T> dao;

		
	public JeecgTestDao<T> getDao() {
		return dao;
	}

}
