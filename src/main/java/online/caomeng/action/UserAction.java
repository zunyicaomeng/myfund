package online.caomeng.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import online.caomeng.model.Lend;
import online.caomeng.model.Loan;
import online.caomeng.model.User;
import online.caomeng.server.impl.LendServiceImpl;
import online.caomeng.server.impl.LoanServiceImpl;
import online.caomeng.server.impl.UserServiceImpl;

@SuppressWarnings({ "unused", "serial" })
@Component("userAction")
public class UserAction extends ActionSupport {

	@Autowired
	private UserServiceImpl userServiceImpl;
	@Autowired
	private LendServiceImpl lendServiceImpl;
	@Autowired
	private LoanServiceImpl loanServiceImpl;

	private User user;
	private List<User> list;
	private String msg = "";
	private List<Lend> lendlist;
	private double lendMoney=0;
	private double loanMoney=0;
	private List<Loan> loanlist;

	public String getUsers() {
		list = userServiceImpl.getUsers();
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

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String register() {
		String loginName = user.getLoginName(), password = user.getPassword(), email = user.getEmail();
		list = userServiceImpl.getUsers();
		for (User users : list) {
			String loginname = users.getLoginName();
			if (loginName.equals(loginname)) {
				msg = "用户名以存在";
				return "fail";
			}
		}
		userServiceImpl.saveUser(loginName, password, email);
		return "success";
	}

	// 登录查询
	public String getLoginUser() {
		list = userServiceImpl.getLoginUser();
		String Name = user.getLoginName();
		Map<String, Object> session = ActionContext.getContext().getSession();
		if (Name != null) {
			session.put("loginName", user.getLoginName());
		}
		//查询用户余额
		List<User> balance = userServiceImpl.getBalance();
		for (User user1 : balance) {
			Double balances = user1.getBalance();
			System.out.println(balances);
			session.put("balances", balances);
		}
		//查询用户id
		List<User> userId = userServiceImpl.getUserId();
	    for (User user : userId) {
		System.out.println(user.getId());
		session.put("userId", user.getId());
	}
		//查询用户的借出金额
		lendlist = lendServiceImpl.getLendMoney();
		for (Lend lend : lendlist) {
			System.out.println(lend.getLendMoney());
			lendMoney = lendMoney + lend.getLendMoney();
			System.out.println(lendMoney);
			session.put("LendMoney", lendMoney);
		}
	    //查询loan信息
	    loanlist=loanServiceImpl.getLoan();
	   for (Loan loan : loanlist) {
		System.out.println(loan);
		session.put("loan", loan);
		loanMoney=loanMoney+loan.getLoanamount();
		System.out.println(loanMoney);
		session.put("loanMoney", loanMoney);
		/*session.put("loanname", loan.getLoanname());
		session.put("loantime", loan.getLoantime());
		session.put("returntime", loan.getReturntime());
		session.put("loanstatus", loan.getLoanstatus());
		session.put("loanamount", loan.getLoanamount());*/
	}
		//登录查询
		for (User users : list) {
			String LoginName = users.getLoginName();
			String password = users.getPassword();
			System.out.println(LoginName + password);
			System.out.println(Name + user.getPassword());
			if (LoginName.equals(Name) && password.equals(user.getPassword())) {
				return "LoginSuccess";
			}
		}
		return "LoigFail";
	}

}
