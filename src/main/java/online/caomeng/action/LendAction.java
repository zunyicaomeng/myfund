/*
*2017年10月23日
*yuan
*{lxbh@vip.qq.com}
*/
package online.caomeng.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;

import online.caomeng.model.Lend;
import online.caomeng.model.User;
import online.caomeng.server.impl.LendServiceImpl;
import online.caomeng.server.impl.UserServiceImpl;

@Component("lendAction")
public class LendAction {

	@Autowired
	private LendServiceImpl lendServiceImpl;
	@Autowired
	private UserServiceImpl userServiceImpl;

	private Lend lend;
	private List<Lend> lendlist;

	public LendServiceImpl getLoanServiceImpl() {
		return lendServiceImpl;
	}

	public UserServiceImpl getUserServiceImpl() {
		return userServiceImpl;
	}

	public Lend getLend() {
		return lend;
	}

	public void setLend(Lend lend) {
		this.lend = lend;
	}

	// 出借功能
	public String lendAmount() {
		//初始化session
		Map<String, Object> session = ActionContext.getContext().getSession();
		
		//通过session获取 登录用户id、余额
		Long LoginId = (Long)session.get("userId");
		double balance = (double) session.get("balances");
		
		//获取页面传值
		String lendName = lend.getLendName();
		Double lendMoney = lend.getLendMoney();
		Double lendAcount = 0.0;
		Date returnTime = lend.getReturnTime();
		
		//计算当前用户余额
		double loginBalance = balance + lendMoney;
		
		//查取当前登录用户所有借款金额，并计算总和
		lendlist = lendServiceImpl.getLendMoney();
		for (Lend lend : lendlist) {
			lendAcount = lendAcount + lend.getLendMoney();
		}
		
		//插入lend表新的借款记录，并将新的余额传到session
		List<User> users = userServiceImpl.getUsers();
		for (User user : users) {
			if (user.getLoginName().equals(lendName)) {
				Double lBalance = user.getBalance()-lendMoney;
				Long lendId = user.getId();
				session.put("balances", loginBalance);
				session.put("LendMoney",lendAcount);
				lendServiceImpl.lendAmount(lendName, lendMoney, returnTime,LoginId,loginBalance,lBalance,lendId);
				return "success";
			}
		}
		
		return "false";
	}
}
