/*
*2017年10月24日
*yuan
*{lxbh@vip.qq.com}
*/
package online.caomeng.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="db_admin")
public class Admin {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String loginName;
	
	private String password;
	
	private Double sumLend;
	
	private Double sumLoan;

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Double getSumLend() {
		return sumLend;
	}

	public void setSumLend(Double sumLend) {
		this.sumLend = sumLend;
	}

	public Double getSumLoan() {
		return sumLoan;
	}

	public void setSumLoan(Double sumLoan) {
		this.sumLoan = sumLoan;
	}

	public Admin(String loginName, String password, Double sumLend, Double sumLoan) {
		super();
		this.loginName = loginName;
		this.password = password;
		this.sumLend = sumLend;
		this.sumLoan = sumLoan;
	}

	public Admin() {
		super();
	}
	
	

	
}
