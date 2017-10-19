package online.caomeng.dao.Impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import online.caomeng.common.UserDao;
import online.caomeng.model.User;

@Repository
public class UserDaoImpl {
	@Autowired
	private UserDao userDao;
	
	@SuppressWarnings("unchecked")
	public List<User> getUser(){
		return (List<User>) userDao.getHibernateTemplate().find("from User");
	}

	public void saveUser(String loginName,String password,String email) {
		System.out.println("name:"+loginName+"password:"+password+"email:"+email);
		userDao.getHibernateTemplate().save(new User(loginName, null, password, 
				null, null, null, email, new Date(), "2", null, null, null, null, 2));
		
	}
}
