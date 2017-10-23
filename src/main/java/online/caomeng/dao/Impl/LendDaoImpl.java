package online.caomeng.dao.Impl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.opensymphony.xwork2.ActionContext;

import online.caomeng.common.UserDao;
import online.caomeng.model.Lend;
import online.caomeng.model.Loan;

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
	//查询Lend表的数据
		 @SuppressWarnings("unchecked")
		 public List<Lend> getLendDemo(){
			 return (List<Lend>) userDao.getHibernateTemplate().find("from Lend ");
		 }
		 //查询数量
		 @SuppressWarnings("unchecked")
		 public List<Long> getNumberLend(){
			 Map<String, Object> session=ActionContext.getContext().getSession();
			 Long userId=(Long) session.get("userId");
			List<Long>  numberlend=(List<Long>) userDao.getHibernateTemplate().find("select  count(id) from Lend where user_id="+userId+"");
			System.out.println("lend的数量"+numberlend);
			return numberlend;
		 }
	

}
