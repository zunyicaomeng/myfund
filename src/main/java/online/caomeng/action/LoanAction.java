package online.caomeng.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;

import online.caomeng.model.Loan;
import online.caomeng.model.User;
import online.caomeng.server.impl.LoanServiceImpl;
import online.caomeng.server.impl.UserServiceImpl;

@Component("loanAction")
public class LoanAction {
	@Autowired
	private UserServiceImpl userServiceImpl;
	@Autowired
	private LoanServiceImpl loanServiceImpl;
	
	private Loan loan;
	private List<Loan> loanlist;
	
	
	public UserServiceImpl getUserServiceImpl() {
		return userServiceImpl;
	}
	public LoanServiceImpl getLoanServiceImpl() {
		return loanServiceImpl;
	}
	public Loan getLoan() {
		return loan;
	}
	public void setLoan(Loan loan) {
		this.loan = loan;
	}
	// 借款功能
		public String loanAmount() {
			//初始化session
			Map<String, Object> session = ActionContext.getContext().getSession();
			
			//通过session获取 登录用户id、余额
			Long LoginId = (Long)session.get("userId");
			double balance = (Double) session.get("balances");
			
			//获取页面传值
			String loanName = loan.getLoanname();
			Double loanamount = loan.getLoanamount();
			Double loanAcount = 0.0;
			Date returntime = loan.getLoantime();
			System.out.println(loanName+loanamount+returntime);
			
			//计算当前用户余额
			double loginBalance = balance - loanamount;
			
			//查取当前登录用户所有借款金额，并计算总和
			loanlist = loanServiceImpl.getLoanamount();
			for (Loan loan : loanlist) {
				loanAcount = loanAcount + loan.getLoanamount();
			}
			
			//插入lend表新的借款记录，并将新的余额传到session
			List<User> users = userServiceImpl.getUsers();
			for (User user : users) {
				if (user.getLoginName().equals(loanName)) {
					Double lBalance = user.getBalance()+loanamount;
					Long loanId = user.getId();
					session.put("balances", loginBalance);
					session.put("loanamount",loanAcount);
					loanServiceImpl.loanAmount(loanName, loanamount, returntime,LoginId,loginBalance,lBalance,loanId);
					return "success";
				}
			}
			
			return "false";
		}
}