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
	private String locanname;
	
	//出借时间
	private Date locantime;
	
	//归还时间
	private Date returntime;
	
	//出借状态   固定为locan（出借）
	private Integer locanstatus;
	
	//出借金额
	private Double locanamount;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLocanname() {
		return locanname;
	}

	public void setLocanname(String locanname) {
		this.locanname = locanname;
	}

	public Date getLocantime() {
		return locantime;
	}

	public void setLocantime(Date locantime) {
		this.locantime = locantime;
	}

	public Date getReturntime() {
		return returntime;
	}

	public void setReturntime(Date returntime) {
		this.returntime = returntime;
	}

	public Integer getLocanstatus() {
		return locanstatus;
	}

	public void setLocanstatus(Integer locanstatus) {
		this.locanstatus = locanstatus;
	}

	public Double getLocanamount() {
		return locanamount;
	}

	public void setLocanamount(Double locanamount) {
		this.locanamount = locanamount;
	}

	public Loan(String locanname, Date locantime, Date returntime, Integer locanstatus, Double locanamount) {
		super();
		this.locanname = locanname;
		this.locantime = locantime;
		this.returntime = returntime;
		this.locanstatus = locanstatus;
		this.locanamount = locanamount;
	}
	
	
}
