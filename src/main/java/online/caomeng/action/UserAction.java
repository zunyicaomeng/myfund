package online.caomeng.action;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Map;


import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import online.caomeng.model.Admin;
import online.caomeng.model.AdminUser;
import online.caomeng.model.Lend;
import online.caomeng.model.Loan;
import online.caomeng.model.User;
import online.caomeng.server.impl.AdminServiceImpl;
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
	@Autowired
	private AdminServiceImpl adminServiceImpl;

	private User user;
	private List<User> list;
	private List<Admin> aList;
	private String msg = "";
	private List<Lend> lendlist;
	private double lendMoney = 0;
	private double loanMoney = 0;
	private List<Loan> loanlist;
	private String rechartamount;
	private Long numberAll;
	private int i=1;
	private int x=1;
	private int usersPage = 1;
	private int pageUser = 0;
	private Long loadUsers = 0L;

	public String getUsers() {
		list = userServiceImpl.getUsers();
		return "success";
	}

	public List<User> getList() {
		return list;
	}

	public List<Admin> getaList() {
		return aList;
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

	public String getRechartamount() {
		return rechartamount;
	}

	public void setRechartamount(String rechartamount) {
		this.rechartamount = rechartamount;
	}

	public int getI() {
		return i;
	}

	public void setI(int i) {
		this.i = i;
	}

	public int getX() {
		return x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getUsersPage() {
		return usersPage;
	}

	public void setUsersPage(int usersPage) {
		this.usersPage = usersPage;
	}

	public int getPageUser() {
		return pageUser;
	}

	public Long getLoadUsers() {
		return loadUsers;
	}

	// 注册
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
		// 保存用户
		userServiceImpl.saveUser(loginName, password, email);
		// 保存用户到admin表
		userServiceImpl.saveUserToAdmin(loginName, password);
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
		// 查询用户id
		List<User> userId = userServiceImpl.getUserId();
		for (User user : userId) {
			if (user.getLoginName().equals(Name)) {
				System.err.println("查询userid：" + user.getId());
				session.put("userId", user.getId());
			}
		}
		// 查询用户余额
		Long id = (Long) session.get("userId");
		List<Double> cbalance = userServiceImpl.getBalance(id);
		for (Double temp : cbalance) {
			System.out.println("登录查询余额：" + temp);
			session.put("balances", temp);
		}
		// 查询用户的借出金额
		lendlist = lendServiceImpl.getLendMoney();
		session.put("lendlist", lendlist);
		for (Lend lend : lendlist) {
			System.out.println("数据库查询lend.getLendMoney：" + lend.getLendMoney());
			lendMoney = lendMoney + lend.getLendMoney();
			System.out.println("查询借出金额lendMoney：" + lendMoney);
			System.out.println(lend.getId());
			session.put("LendMoney", lendMoney);

		}
		// 查询loan信息
		loanlist = loanServiceImpl.getLoan();
		session.put("loanlist", loanlist);
		for (Loan loan : loanlist) {
			System.out.println("查询loan信息:" + loan);
			loanMoney = loanMoney + loan.getLoanamount();
			System.out.println("loanMoney:" + loanMoney);
			session.put("loanMoney", loanMoney);
		}
		// 查询loan数量
		List<Long> numberloan = loanServiceImpl.getNumberLoan();
		for (Long long1 : numberloan) {
			System.out.println("loan的数量：" + long1);
			session.put("numberloan", long1);
		}
		// 查询lend数量
		List<Long> numberlend = lendServiceImpl.getNumberLend();
		for (Long long2 : numberlend) {
			System.out.println("lend的数量" + long2);
			session.put("numberlend", long2);
		}
		numberAll = loanServiceImpl.getId();
		session.put("numberAll", numberAll);

		Long numberall = (Long) session.get("numberAll");
		Long pages = numberall / 2 + 1;
		System.out.println("z总页数：" + pages);
		session.put("pages", pages);
		// 判断是否为管理员
		// 获取管理员对象
		List<AdminUser> adminUsers = userServiceImpl.getAdminUsers();
		for (AdminUser adminUser : adminUsers) {
			if (Name.equals(adminUser.getLoginName()) && user.getPassword().equals(adminUser.getPassword())) {
				aList = adminServiceImpl.getUserPageList(usersPage);
				
				//获取admin表所有记录和
				List<Long> numberUsers = adminServiceImpl.getAmountUsers();
				Long countUser = 0L;
				for (Long numberUser : numberUsers) {
					countUser = numberUser;
				}
				//判断总共多少页
				if(countUser%5==0){
					pageUser = (int) (countUser/5);
					System.out.println("pageUser:"+pageUser);
				}else{
					pageUser = (int) (countUser/5+1);
					System.out.println("pageUser:"+pageUser);
				}
				return "admin";
			}
		}
		//查询lend数量
				List<Long> numberlends=lendServiceImpl.getNumberLend();
				for (Long long2 : numberlends) {
					System.out.println("lend的数量"+long2);
					session.put("numberlend", long2);
				}
				numberAll=loanServiceImpl.getId();
				session.put("numberAll", numberAll);
				
				Long numberloan1=(Long) session.get("numberloan");
				if (numberloan1%2==0) {
					int pageloan=(int) (numberloan1/2);
					System.out.println("pageloan页数："+pageloan);
					session.put("pageloan", pageloan);
				}else{
					int pageloan=(int) (numberloan1/2+1);
					System.out.println("pageloan页数："+pageloan);
					session.put("pageloan", pageloan);
				}
				Long numberlend1=(Long) session.get("numberlend");
				if (numberlend1%2==0) {
					int pagelend=(int) (numberlend1/2);
					System.out.println("pageloan页数："+pagelend);
					session.put("pagelend", pagelend);
				}else{
					int pagelend=(int) (numberlend1/2+1);
					System.out.println("pageloan页数："+pagelend);
					session.put("pagelend", pagelend);
				}
				List<Loan> listpageloan=loanServiceImpl.getpageloan();
				session.put("listpageloan", listpageloan);
				
				List<Lend> listpagelend=lendServiceImpl.getpagelend();
				session.put("listpagelend", listpagelend);

		// 登录查询
		for (User users : list) {
			String LoginName = users.getLoginName();
			String password = users.getPassword();
			System.out.println("登录查询数据库值：" + LoginName + password);
			System.out.println("登录查询页面获取：" + Name + user.getPassword());

			if (LoginName.equals(Name) && password.equals(user.getPassword())) {
				return "LoginSuccess";
			}
		}
		return "LoigFail";
	}

	// 账户设置
	public String updateUser() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		Long id = (Long) session.get("userId");
		System.out.println("账户设置id：" + id);
		String username = user.getUsername();
		Integer age = user.getAge();
		String gender = user.getGender();
		Date birthday = user.getBirthday();
		Integer transactionpassword = user.getTransactionpassword();
		String bankId = user.getBankId();

		userServiceImpl.updateUser(id, username, age, gender, birthday, transactionpassword, bankId);

		return "success";
	}
	//修改账户信息
	public String updateAccount() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		Long id = (Long) session.get("userId");
		System.out.println("账户设置id：" + id);
		String username = user.getUsername();
		Integer age = user.getAge();
		Integer transactionpassword = user.getTransactionpassword();
		String bankId = user.getBankId();

		userServiceImpl.updateAccount(id, username, age,transactionpassword, bankId);

		return "success";
	}

	// 充值
	public String Recharge() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		Long id = (Long) session.get("userId");
		double balance = (Double) session.get("balances");

		double ramount = Double.valueOf(rechartamount);
		Integer tpwd = null;

		List<Integer> transactionpassword = userServiceImpl.getUserTransactionpassword(id);
		for (Integer temp : transactionpassword) {
			tpwd = temp;
		}
		Boolean result = user.getTransactionpassword().equals(tpwd);
		System.out.println("充值-页面输入交易密码：" + user.getTransactionpassword() + "数据库查询交易密码：" + tpwd + "返回值：" + result);
		if (user.getTransactionpassword().equals(tpwd)) {
			System.out.println("action界面余额：" + balance);
			System.out.println("action界面id：" + id);
			System.out.println("充值余额：" + ramount);

			// 讲double转换为大数值进行计算，避免精度的丢失
			BigDecimal bRAmount = new BigDecimal(ramount);
			BigDecimal bBalance = new BigDecimal(balance);
			BigDecimal bRechargeAmount = bRAmount.add(bBalance);
			Double rechargeAmount = bRechargeAmount.doubleValue();
			session.put("balances", rechargeAmount);

			userServiceImpl.updateBalance(id, rechargeAmount);
			return "success";
		} else {
			return "false";
		}
	}
	public String getpageLoanAndLend(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		List<Loan> listpageloan=loanServiceImpl.getpageloan();
		session.put("listpageloan", listpageloan);
		
		List<Lend> listpagelend=lendServiceImpl.getpagelend();
		session.put("listpagelend", listpagelend);
		
		return "success";
	}
	
	public String getLoadUser(){
		List<Long> list = userServiceImpl.getLoadUser();
		for (Long long1 : list) {
			loadUsers = long1;
		}
		return "loadUsers";
	}
	//清除session 退出
	public String secedeAmount(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		 session.remove("userId");
		return "success";
	}
}
