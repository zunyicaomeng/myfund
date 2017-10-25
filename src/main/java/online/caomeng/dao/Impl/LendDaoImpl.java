package online.caomeng.dao.Impl;


import java.util.Date;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.stereotype.Repository;

import com.opensymphony.xwork2.ActionContext;

import online.caomeng.action.UserAction;
import online.caomeng.common.UserDao;
import online.caomeng.model.Lend;
import online.caomeng.model.User;

@Repository
public class LendDaoImpl {
	@Autowired
	private UserDao userDao;
	@Autowired
	private UserAction useraction;
	
	
	
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
		 //分页查询loan
		 @SuppressWarnings({ "unchecked", "rawtypes" })
		 public List<Lend> getpagelend(){
			 int x=useraction.getX();
			 System.out.println("获取到的x:"+x);
			 List<Lend> list=(List<Lend>) userDao.getHibernateTemplate().execute(new HibernateCallback() {

				@Override
				public Object doInHibernate(Session session) throws HibernateException {
					List result=session.createQuery("from Lend").setFirstResult((x-1)*2).setMaxResults(2).list();
					return result;
				}
			});
			 System.out.println(list);
			 return list;
		 }
	

}
