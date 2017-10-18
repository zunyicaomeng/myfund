package online.caomeng.dao.Impl;

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
}
