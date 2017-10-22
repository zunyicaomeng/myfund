package online.caomeng.dao.Impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.opensymphony.xwork2.ActionContext;
import online.caomeng.common.UserDao;
import online.caomeng.model.User;

@Repository
public class UserDaoImpl {
	@Autowired
	private UserDao userDao;

	@SuppressWarnings("unchecked")
	public List<User> getUser() {
		return (List<User>) userDao.getHibernateTemplate().find("from User");
	}

	// 注册
	public void saveUser(String loginName, String password, String email) {
		System.out.println("name:" + loginName + "password:" + password + "email:" + email);
		userDao.getHibernateTemplate().save(new User(loginName, null, password, null, null, null, email, new Date(),
				"2", null, null, null, null, 2));

	}

	@SuppressWarnings("unchecked")
	public List<User> getLoginUser() {
		return (List<User>) userDao.getHibernateTemplate().find("from User");
	}

	// 查询用户余额
	@SuppressWarnings("unchecked")
	public List<User> getBalance() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		String loginName = (String) session.get("loginName");
		List<User> list = (List<User>) userDao.getHibernateTemplate()
				.find("from User where loginName =" + "loginName" + "");
		System.out.println(list);
		return list;
	}
	@SuppressWarnings("unchecked")
	public List<User> getUserId() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		String loginName = (String) session.get("loginName");
		System.out.println(loginName);
		List<User> list = (List<User>) userDao.getHibernateTemplate()
				.find("from User where loginName =" + "loginName" + "");
		System.out.println(list);
		return list;
	}

		@SuppressWarnings("unchecked")
		public List<User> getRegisterUser(){
			return (List<User>) userDao.getHibernateTemplate().find("select u.user_loginName,u.password,u.email,"
					+ "from User u");
			
		}
		
		public void updateUser(Long id,String username,Integer age,String gender,Date birthday,Integer transactionpassword,String bankId) {
			User user = userDao.getHibernateTemplate().get(User.class, id);
			user.setUsername(username);
			user.setAge(age);
			user.setGender(gender);
			user.setBirthday(birthday);
			user.setTransactionpassword(transactionpassword);
			user.setBankId(bankId);
			userDao.getHibernateTemplate().update(user);
		}

}
