package online.caomeng.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="db_user")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	//登录名
	private String loginName;
	
	//用户名
	private String username;
	
	//用户密码
	private String password;

	//出生年月
	private Date birthday;
	
	//创建时间
	private Date createDate;
	
	//账户状态
	private String status;
	
	//余额
	private Double balance;
	
	//交易密码
	private Integer transactionpassword;
	
	//银行卡号
	private Integer bankId;
	
	
	
}
