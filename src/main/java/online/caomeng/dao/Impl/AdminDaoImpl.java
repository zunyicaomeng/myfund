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

import online.caomeng.action.AdminAction;
import online.caomeng.common.UserDao;
import online.caomeng.model.Admin;
import online.caomeng.model.AdminUser;
import online.caomeng.model.User;

@Repository
public class AdminDaoImpl {
	
	@Autowired
	private UserDao userDao;
	@Autowired
	private AdminAction adminAction;

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
	//用户冻结
		public void updateUserStatus(Long AdminUserID){
			System.out.println("AdminUserID:"+AdminUserID);
			User user=userDao.getHibernateTemplate().get(User.class,AdminUserID);
			user.setStatus("2");
			userDao.getHibernateTemplate().update(user);
			
		}
		//查询用户id
		@SuppressWarnings("unchecked")
		public List<User> getAdminUserID(String loginName){
				List<User> list = (List<User>) userDao.getHibernateTemplate()
						.find("from User where loginName =" + "loginName"+ "");
				System.out.println(list);
				return list;
			}
		//禁止登陆
			public void updateUserStateLogin(Long AdminUserID){
				System.out.println("AdminUserID:"+AdminUserID);
				User user=userDao.getHibernateTemplate().get(User.class,AdminUserID);
				user.setUserState(3);
				userDao.getHibernateTemplate().update(user);
				
			}

		// 禁止转账
		public void updateUserState(Long AdminUserID) {
				System.out.println("AdminUserID:"+AdminUserID);
				User user=userDao.getHibernateTemplate().get(User.class,AdminUserID);
				user.setUserState(2);
				userDao.getHibernateTemplate().update(user);
				
			}
		//查询用户总数
		 @SuppressWarnings("unchecked")
		 public List<Long> getNumberUser(){
			List<Long>  numberUser=(List<Long>) userDao.getHibernateTemplate().find("select  count(id) from User");
			System.out.println("numberUser的数量"+numberUser);
			return numberUser;
		 }
		 //分页查询用户
		 @SuppressWarnings("unchecked")
		 public List<User> getpageUser(){
			 int y=adminAction.getY();
			 System.out.println("获取到的y:"+y);
			 List<User> list=(List<User>) userDao.getHibernateTemplate().execute(new HibernateCallback() {

				@Override
				public Object doInHibernate(Session session) throws HibernateException {
					List result=session.createQuery("from User").setFirstResult((y-1)*5).setMaxResults(5).list();

					return result;
				}
			});
			 System.out.println(list);
			 return list;
		 }//删除用户
		 @SuppressWarnings("unchecked")
			public void deleteUser(Long userId) {
				userDao.getHibernateTemplate().delete(new User(userId));
			}
}
