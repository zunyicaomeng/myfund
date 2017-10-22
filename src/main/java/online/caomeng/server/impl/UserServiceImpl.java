package online.caomeng.server.impl;

import java.util.List;import javax.jws.soap.SOAPBinding.Use;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.opensymphony.xwork2.ActionSupport;

import online.caomeng.dao.Impl.UserDaoImpl;
import online.caomeng.model.User;

@Service
public class UserServiceImpl{
	
	@Autowired
	private UserDaoImpl userDaoImpl;
	
	public List<User> getUsers(){
		return userDaoImpl.getUser();
	}

	public void saveUser(String loginName,String password,String email) {
		userDaoImpl.saveUser(loginName,password,email);
	}

	//登录用户名密码
		public List<User> getLoginUser(){
			return userDaoImpl.getLoginUser();
		}
//查询用户余额
		public List<User> getBalance(){
			return userDaoImpl.getBalance();
		}

		public List<User> getUserId(){
			return userDaoImpl.getUserId();
		}
		
}
