package online.caomeng.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import online.caomeng.model.User;
import online.caomeng.server.impl.UserServiceImpl;

@Component("userAction")
public class UserAction {

	@Autowired
	private UserServiceImpl userServiceImpl;
	
	private User user;
	private List<User> list;
	private String msg="";
	
	public String getUsers(){
		list = userServiceImpl.getUsers();
		for (User user : list) {
			System.out.println(user.toString());
		}
		return "success";
	}

	public List<User> getList() {
		return list;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public User getUser() {
		return user;
	}
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String register(){
		String loginName = user.getLoginName(),password = user.getPassword(),email = user.getEmail();
		list = userServiceImpl.getUsers();
		for (User users : list) {
			loginName = users.getLoginName();
			if(user.getLoginName().equals(loginName)){
				msg = "用户名以存在";
				return"fail";
			}
		}
		userServiceImpl.saveUser(loginName,password,email);
		return "success";
	}
	
}
