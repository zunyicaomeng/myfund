package online.caomeng.server.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online.caomeng.dao.Impl.UserDaoImpl;
import online.caomeng.model.User;

@Service
public class UserServiceImpl {
	
	@Autowired
	private UserDaoImpl userDaoImpl;
	
	public List<User> geUsers(){
		return userDaoImpl.getUser();
	}

}
