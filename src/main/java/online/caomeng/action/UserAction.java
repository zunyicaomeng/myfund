package online.caomeng.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import online.caomeng.model.User;
import online.caomeng.server.Impl.UserServiceImpl;

@Component("userAction")
public class UserAction {

	@Autowired
	private UserServiceImpl userServiceImpl;
	
	private User user;
	private List<User> list;
	
	public String getUsers(){
		list = userServiceImpl.geUsers();
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
	
}
