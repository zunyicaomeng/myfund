/*
*2017年10月24日
*yuan
*{lxbh@vip.qq.com}
*/
package online.caomeng.dao.Impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.stereotype.Repository;

import online.caomeng.common.UserDao;
import online.caomeng.model.Admin;
import online.caomeng.model.AdminUser;

@Repository
public class AdminDaoImpl {
	
	@Autowired
	private UserDao userDao;

	//获取Admin表条数
	@SuppressWarnings("unchecked")
	public List<Long> getAmountUsers() {
		return (List<Long>) userDao.getHibernateTemplate().find("select count(id) from Admin");
	}

	//分页查询
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Admin> getUserPageList(int usersPage) {
		List<Admin> list = (List<Admin>) userDao.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session) throws HibernateException {
						List result = session.createQuery("from Admin")
								.setFirstResult((usersPage-1)*5).setMaxResults(5).list();
						return result;
					}
					
				});
		return list;
	}
	
	//获取admin所有对象
	@SuppressWarnings("unchecked")
	public List<AdminUser> getAdminUser(){
		return (List<AdminUser>) userDao.getHibernateTemplate().find("from AdminUser");
	}
}
