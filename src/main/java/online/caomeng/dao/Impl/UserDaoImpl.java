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
				"2", 0.0, null, null, null, 2));

	}

	@SuppressWarnings("unchecked")
	public List<User> getLoginUser() {
		return (List<User>) userDao.getHibernateTemplate().find("from User");
	}

	// 查询用户余额
	@SuppressWarnings("unchecked")
	public List<Double> getBalance(Long id) {
		Map<String, Object> session = ActionContext.getContext().getSession();
		String loginName = (String) session.get("loginName");
		List<Double> list = (List<Double>) userDao.getHibernateTemplate()
				.find("select u.balance from User u where u.id =" + id + "");
		System.out.println("查询用户余额："+list);
		return list;
	}
	//查询用户id
	@SuppressWarnings("unchecked")
	public List<User> getUserId() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		String loginName = (String) session.get("loginName");
		System.out.println(loginName);
		List<User> list = (List<User>) userDao.getHibernateTemplate()
				.find("from User where loginName =" + "loginName"+ "");
		System.out.println(list);
		return list;
	}
		
		//验证注册信息查询
		@SuppressWarnings("unchecked")
		public List<User> getRegisterUser(){
			return (List<User>) userDao.getHibernateTemplate().find("select u.user_loginName,u.password,u.email,"
					+ "from User u");
			
		}
		
		//更新用户信息
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
		
		//更新用户余额
		public void updateBalance(Long id,Double balance){
			User user = userDao.getHibernateTemplate().get(User.class, id);
			System.out.println(balance);
			user.setBalance(balance);
			System.out.println(user);
			userDao.getHibernateTemplate().update(user);
		}
		
		//查询用户交易密码
		@SuppressWarnings("unchecked")
		public List<Integer> getUserTransactionpassword(Long id){
			return (List<Integer>) userDao.getHibernateTemplate().find("select u.transactionpassword from User u "
					+ "where u.id="+ id+"");
		}

}
