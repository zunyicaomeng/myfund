package online.caomeng.dao.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.opensymphony.xwork2.ActionContext;

import online.caomeng.common.UserDao;
import online.caomeng.model.Loan;

@Repository
public class LoanDaoImpl {
	@Autowired
	private UserDao userDao;
	
	
	 @SuppressWarnings("unchecked")
	public List<Loan> getLoan(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		Long userId= (Long) session.get("userId");
		List<Loan> list=(List<Loan>) userDao.getHibernateTemplate().find("from Loan where user_id ="+userId+"");
		System.out.println(list);
		return list;
	}

}
