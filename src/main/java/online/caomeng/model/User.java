package online.caomeng.model;


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;



import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "db_user")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="user_id")
	private Long id;


	// 登录名
	private String loginName;

	// 用户名
	private String username;

	// 用户密码
	private String password;

	// 年龄
	private Integer age;

	// 性别 1.男  2.女
	private Integer gender;

	// 出生年月
	private Date birthday;

	// 邮箱
	private String email;

	// 创建时间
	private Date createDate;

	// 账户状态 1.冻结 2.非冻结账户
	private String status;

	// 余额
	private Double balance;

	// 交易密码
	private Integer transactionpassword;

	// 银行卡号
	private Integer bankId;

	// 解冻时间
	private Date thawingTime;

	// 用户状态  //1、优质用户 2、普通用户 3、失信用户
	private Integer userState;
	
	//特殊属性   一个用户对多个出借用户
	@OneToMany(cascade={CascadeType.ALL},fetch=FetchType.EAGER)
	@JoinColumn(name="user_id")
    private Set<Lend> lends=new HashSet<Lend>();
	
	//特殊属性    一个用户对多个借款用户
	@OneToMany(cascade={CascadeType.ALL},fetch=FetchType.EAGER)
	@JoinColumn(name="user_id")
	private Set<Loan> loans=new HashSet<Loan>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Double getBalance() {
		return balance;
	}

	public void setBalance(Double balance) {
		this.balance = balance;
	}

	public Integer getTransactionpassword() {
		return transactionpassword;
	}

	public void setTransactionpassword(Integer transactionpassword) {
		this.transactionpassword = transactionpassword;
	}

	public Integer getBankId() {
		return bankId;
	}

	public void setBankId(Integer bankId) {
		this.bankId = bankId;
	}
	
	public Date getThawingTime() {
		return thawingTime;
	}

	public void setThawingTime(Date thawingTime) {
		this.thawingTime = thawingTime;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	

	public Integer getUserState() {
		return userState;
	}

	public void setUserState(Integer userState) {
		this.userState = userState;
	}

	// 注册
	public User(String loginName, String password, String email) {
		super();
		this.loginName = loginName;
		this.password = password;
		this.email = email;
	}

	public User(Long id) {
		super();
		this.id = id;
	}

	// 设置账户信息
	public User(String username, Integer age, Integer gender, Date birthday, Integer transactionpassword,
			Integer bankId) {
		super();
		this.username = username;
		this.age = age;
		this.gender = gender;
		this.birthday = birthday;
		this.transactionpassword = transactionpassword;
		this.bankId = bankId;
	}

	// 修改账户信息
	public User(String username, String password, Integer age, Integer transactionpassword, Integer bankId) {
		super();
		this.username = username;
		this.password = password;
		this.age = age;
		this.transactionpassword = transactionpassword;
		this.bankId = bankId;
	}

	public User() {
		super();
	}

	public User(String loginName, String username, String password, Integer age, Integer gender, Date birthday,
			String email, Date createDate, String status, Double balance, Integer transactionpassword, Integer bankId,
			Date thawingTime, Integer userState) {
		super();
		this.loginName = loginName;
		this.username = username;
		this.password = password;
		this.age = age;
		this.gender = gender;
		this.birthday = birthday;
		this.email = email;
		this.createDate = createDate;
		this.status = status;
		this.balance = balance;
		this.transactionpassword = transactionpassword;
		this.bankId = bankId;
		this.thawingTime = thawingTime;
		this.userState = userState;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", loginName=" + loginName + ", username=" + username + ", password=" + password
				+ ", age=" + age + ", gender=" + gender + ", birthday=" + birthday + ", email=" + email
				+ ", createDate=" + createDate + ", status=" + status + ", balance=" + balance
				+ ", transactionpassword=" + transactionpassword + ", bankId=" + bankId + ", thawingTime=" + thawingTime + ", userState=" + userState + "]";
	}


}
