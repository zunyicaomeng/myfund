package online.caomeng.dao.Impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.opensymphony.xwork2.ActionContext;

import online.caomeng.common.UserDao;
import online.caomeng.model.Lend;
import online.caomeng.model.Loan;
import online.caomeng.model.User;

@Repository
public class LoanDaoImpl {
	@Autowired
	private UserDao userDao;
	
	//查询用户id为xx对应的loan表的数据
	 @SuppressWarnings("unchecked")
	public List<Loan> getLoan(){
		Map<String, Object> session=ActionContext.getContext().getSession();
		Long userId= (Long) session.get("userId");
		List<Loan> list=(List<Loan>) userDao.getHibernateTemplate().find("from Loan where user_id ="+userId+"");
		System.out.println(list);
		return list;
	}
//查询loan表的数据
	 @SuppressWarnings("unchecked")
	 public List<Loan> getLoanDemo(){
		 Map<String, Object> session=ActionContext.getContext().getSession();
		
		 return (List<Loan>) userDao.getHibernateTemplate().find("from Loan ");
	 }
	 //查询数量
	 @SuppressWarnings("unchecked")
	 public List<Long> getNumberLoan(){
		 Map<String, Object> session=ActionContext.getContext().getSession();
		 Long userId=(Long) session.get("userId");
		List<Long>  numberloan=(List<Long>) userDao.getHibernateTemplate().find("select  count(id) from Loan where user_id="+userId+"");
		System.out.println("loan的数量"+numberloan);
		return numberloan;
	 }
	 //总出借数
	 public Long getId(){
		 Map<String, Object> session=ActionContext.getContext().getSession();
		 Long numberlend=(Long) session.get("numberlend");
		 Long numberloan=(Long) session.get("numberloan");
		 System.out.println("numberlend"+numberlend+"loanId"+numberloan);
		 Long numberAll=numberlend+numberloan;
		 System.out.println("总出借数："+numberAll);
		 return numberAll;
	 }
	 @SuppressWarnings("unchecked")
		public List<Loan> getLoanamount(){
			Map<String, Object> session=ActionContext.getContext().getSession();
			Long userId= (Long) session.get("userId");
			List<Loan> list=(List<Loan>) userDao.getHibernateTemplate().find("from Loan where user_id ="+userId+"");
			System.out.println(list);
			return list;
		}
	 public void loanAmount(String loanname,Double loanamount,Date returntime,Long userId,Double loginBalance,Double lBalance,Long locanId) {
			User user = userDao.getHibernateTemplate().get(User.class, userId);
			user.getLoans().add(new Loan(loanname, new Date(), returntime, 2, loanamount));
			user.setBalance(loginBalance);
			userDao.getHibernateTemplate().save(user);
			
			User loanUser = userDao.getHibernateTemplate().get(User.class, locanId);
			loanUser.setBalance(lBalance);
			userDao.getHibernateTemplate().save(loanUser);
			
			
			
		}
}
