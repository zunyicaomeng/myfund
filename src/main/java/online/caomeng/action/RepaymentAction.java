package online.caomeng.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;

import online.caomeng.model.User;
import online.caomeng.server.impl.UserServiceImpl;

@Component("repaymentAction")
public class RepaymentAction {

	@Autowired
	private UserServiceImpl userServiceImpl;
	
	private User user;
	private List<User> list;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserServiceImpl getUserServiceImpl() {
		return userServiceImpl;
	}
	
	public String RepaymentAmount(){
		//初始化session
		Map<String, Object> session = ActionContext.getContext().getSession();
	    //通过session获取用户id  余额
		Long LoginId = (Long)session.get("userId");
		double balance = (Double) session.get("balances");
		String repayName = user.getUsername();
		Double repayMoney = user.getBalance();
		Integer repayTpwd = user.getTransactionpassword();
		Integer tpwd = null;
		Long ID = null;
		double repayBalance = 0.0;
	    System.out.println(repayName+repayMoney+repayTpwd);
	    List<User> userId = userServiceImpl.getUserId();
		for (User user : userId) {
			if (user.getLoginName().equals(repayName)) {
				System.out.println("查询userid：" + user.getId());
				ID=user.getId();
			}
		}
		Long id = (Long) session.get("userId");
		List<Double> cbalance = userServiceImpl.getBalance(id);
		for (Double temp : cbalance) {
			System.out.println("登录查询余额："+temp);
			repayBalance = temp;
		}
		
	    List<Integer> transactionpassword = userServiceImpl.getUserTransactionpassword(LoginId);
	    for (Integer integer : transactionpassword) {
	    	tpwd=integer;
		}
	    Boolean result = user.getTransactionpassword().equals(tpwd);
		System.out.println("充值-页面输入交易密码：" + repayTpwd + "数据库查询交易密码：" + tpwd + "返回值：" + result);
		if (repayTpwd.equals(tpwd)) {
			double loginBalance = balance - repayMoney;
			System.out.println(loginBalance);
			double ss = repayBalance + repayMoney;
			System.out.println(ss);
			session.put("repayBalance", ss);
			session.put("loginBalance",loginBalance);
			userServiceImpl.updateBalance(LoginId, loginBalance);
			userServiceImpl.updateBalance(ID, ss);
			return "success";
		}
		return "false";
	}
}
