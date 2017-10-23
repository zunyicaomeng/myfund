package online.caomeng.dao.Impl;


import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.opensymphony.xwork2.ActionContext;

import online.caomeng.common.UserDao;
import online.caomeng.model.Lend;
import online.caomeng.model.User;

@Repository
public class LendDaoImpl {
	@Autowired
	private UserDao userDao;
	
	
	
	//查询借款总额
	 @SuppressWarnings("unchecked")
	public List<Lend> getLendMoney(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		Long userId= (Long) session.get("userId");
		List<Lend> list=(List<Lend>) userDao.getHibernateTemplate().find("from Lend where user_id ="+userId+"");
		System.out.println(list);
		return list;
	}



	public void lendAmount(String lendName,Double lendMoney,Date returnTime,Long userId,Double loginBalance,Double lBalance,Long lendId) {
		User user = userDao.getHibernateTemplate().get(User.class, userId);
		user.getLends().add(new Lend(lendName, new Date(), returnTime, 2, lendMoney));
		user.setBalance(loginBalance);
		userDao.getHibernateTemplate().save(user);
		
		User lendUser = userDao.getHibernateTemplate().get(User.class, lendId);
		lendUser.setBalance(lBalance);
		userDao.getHibernateTemplate().save(lendUser);
		
		
		
	}
	

}
