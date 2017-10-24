package online.caomeng.server.impl;

import java.util.List;

import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online.caomeng.dao.Impl.UserDaoImpl;
import online.caomeng.model.Admin;
import online.caomeng.model.AdminUser;
import online.caomeng.model.User;

@Service
public class UserServiceImpl {

	@Autowired
	private UserDaoImpl userDaoImpl;

	// 获取用户所有信息
	public List<User> getUsers() {
		return userDaoImpl.getUser();
	}

	// 保存用户/注册功能
	public void saveUser(String loginName, String password, String email) {
		userDaoImpl.saveUser(loginName, password, email);
	}

	// 登录用户名密码
	public List<User> getLoginUser() {
		return userDaoImpl.getLoginUser();
	}

	// 查询用户余额
	public List<Double> getBalance(Long id) {
		return userDaoImpl.getBalance(id);
	}

	// 获取注册用户
	public List<User> getRegisterUser() {
		return userDaoImpl.getRegisterUser();

	}

	// 更新用户信息
	public void updateUser(Long id, String username, Integer age, String gender, Date birthday,
			Integer transactionpassword, String bankId) {
		userDaoImpl.updateUser(id, username, age, gender, birthday, transactionpassword, bankId);
	}

	// 更新用户余额
	public void updateBalance(Long id, Double balance) {
		userDaoImpl.updateBalance(id, balance);
	}

	// 获取用户id
	public List<User> getUserId() {
		return userDaoImpl.getUserId();
	}

	// 查询用户交易密码
	public List<Integer> getUserTransactionpassword(Long id) {
		return (List<Integer>) userDaoImpl.getUserTransactionpassword(id);
	}
	
	//user与lend联查
	public List<Admin> getUserAndLend(){
		return userDaoImpl.getUserAndLend();
	}
	
	//保存用户信息到admin表
	public void saveUserToAdmin(String loginName, String password) {
		
		userDaoImpl.saveUserToAdmin(loginName,password);
	}

	//获取管理员对象
	public List<AdminUser> getAdminUsers() {
		return userDaoImpl.getAdminUsers();
	}

}
