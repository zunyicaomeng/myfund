package online.caomeng.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="db_locan")
public class Loan {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="locan_id")
	private Long id;
	
	//出借人姓名
	private String loanname;
	
	//出借时间
	private Date loantime;
	
	//归还时间
	private Date returntime;
	
	//出借状态   固定为loan（出借）
	private Integer loanstatus;
	
	//出借金额
	private Double loanamount;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLoanname() {
		return loanname;
	}

	public void setLoanname(String loanname) {
		this.loanname = loanname;
	}

	public Date getLoantime() {
		return loantime;
	}

	public void setLoantime(Date loantime) {
		this.loantime = loantime;
	}

	public Date getReturntime() {
		return returntime;
	}

	public void setReturntime(Date returntime) {
		this.returntime = returntime;
	}

	public Integer getLoanstatus() {
		return loanstatus;
	}

	public void setLoanstatus(Integer loanstatus) {
		this.loanstatus = loanstatus;
	}

	public Double getLoanamount() {
		return loanamount;
	}

	public void setLoanamount(Double loanamount) {
		this.loanamount = loanamount;
	}
	
	

	
}
