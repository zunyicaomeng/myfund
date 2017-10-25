package online.caomeng.dao.Impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.stereotype.Repository;

import com.opensymphony.xwork2.ActionContext;
import online.caomeng.common.UserDao;
import online.caomeng.model.Admin;
import online.caomeng.model.AdminUser;
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
		//修改账户信息
		public void updateAccount(Long id,String username,Integer age,Integer transactionpassword,String bankId){
			User user = userDao.getHibernateTemplate().get(User.class, id);
			user.setUsername(username);
			user.setAge(age);
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
		
		//user与lend联查
		@SuppressWarnings("unchecked")
		public List<Admin> getUserAndLend(){
			return (List<Admin>) userDao.getHibernateTemplate().find("select u.loginName,le.lendMoney from User as u,"
					+ "Lend as le where u.id = le.id ");
		}

		//保存用户信息到admin表
		public void saveUserToAdmin(String loginName, String password) {
			userDao.getHibernateTemplate().save(new Admin(loginName, password, 0.0, 0.0));
		}
		
		//更新admin用户借款总额
		public void updateLendAccount(Long loginId, Double lendAcount) {
			
			System.out.println("userDao lenAcount:"+lendAcount+"loginId"+loginId);
			Admin admin = userDao.getHibernateTemplate().get(Admin.class, loginId);
			System.out.println("admin:"+admin);
			admin.setSumLend(lendAcount);
			userDao.getHibernateTemplate().update(admin);
		}

		public void updateLoanAccount(Long loginId, Double loanAcount) {
			Admin admin = userDao.getHibernateTemplate().get(Admin.class, loginId);
			System.out.println("loanAcount:"+loanAcount);
			admin.setSumLoan(loanAcount);
			userDao.getHibernateTemplate().update(admin);
			
		}

		//获取出借总额
		@SuppressWarnings("unchecked")
		public List<Double> getSumLoan(Long loginId) {
			return (List<Double>) userDao.getHibernateTemplate().find("select a.sumLoan from Admin a where a.id="+loginId+"");
		}

		//获取借款总额
		@SuppressWarnings("unchecked")
		public List<Double> getSumLend(Long loginId) {
			return (List<Double>) userDao.getHibernateTemplate().find("select a.sumLend from Admin a where a.id="+loginId+"");
		}
		
		//获取admin表所有数据
		@SuppressWarnings("unchecked")
		public List<Admin> getUsersInfo() {
			return (List<Admin>) userDao.getHibernateTemplate().find("from Admin");
		}

		//获取管理员对象
		@SuppressWarnings("unchecked")
		public List<AdminUser> getAdminUsers() {
			return (List<AdminUser>) userDao.getHibernateTemplate().find("from AdminUser");
		}
		
		//修改用户状态  //1、优质用户 2、普通用户 3、失信用户
		public void updateUserState(Integer userState, Long id) {
			
			User user = userDao.getHibernateTemplate().get(User.class, id);
			user.setUserState(userState);
			userDao.getHibernateTemplate().update(user);
		}
		
		//admin获取用户id
		@SuppressWarnings("unchecked")
		public List<User> getaUserId(String loginName) {
			return (List<User>) userDao.getHibernateTemplate().find("from User u where u.loginName = "+"loginName"+"");
		}

}
