package jeecg.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.jeecg.entity.SysUser;
import com.jeecg.page.SysUserModel;
import com.jeecg.service.SysUserService;


/*
 * @TransactionConfiguration(transactionManager="transactionManager",defaultRollback=true) 
 * transactionManager的默认取值是"transactionManager"，
 * defaultRollback的默认取值是true，当然，你也可以改成false。
 * true表示测试不会对数据库造成污染,false的话当然就会改动到数据库中了。
 * 在方法名上添加@Rollback(false)表示这个测试用例不需要回滚。
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring-*.xml")
@TransactionConfiguration(defaultRollback = false)
@Transactional
public class SysUserServiceTest {
	private static Object id;
	@Autowired
	private SysUserService<SysUser> sysUserService;
	

	@Test
	public void testAdd(){
		try {
			SysUser Sysuser = new SysUser();
			Sysuser.setEmail("www.jeecg.orgscot@163.com");
			Sysuser.setState(0);
			Sysuser.setDeleted(0);
			sysUserService.add(Sysuser);
			id = Sysuser.getId();
			System.out.println("-----testAdd---------"+id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void testList(){
		try {
			SysUserModel SysuserPage = new SysUserModel();
			List<SysUser> Sysusers = sysUserService.queryByList(SysuserPage);
			for(SysUser e:Sysusers){
				System.out.println(e.getEmail());
			}
			System.out.println("-----testList---------");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void testDel(){
		try {
			//sysUserService.delete(id);
			System.out.println("-----testDel---------");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
}
