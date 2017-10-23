package online.caomeng.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="db_lend")
public class Lend {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="lend_id")
	private Long id;
	//借款对象
	private String lendName;
	//借款时间
	private Date lendTime;
	//归还时间
	private Date returnTime;
	//状态 1、归还 2、为归还
	private Integer lendState;
	//借款金额
	private Double lendMoney;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getLendName() {
		return lendName;
	}
	public void setLendName(String lendName) {
		this.lendName = lendName;
	}
	public Date getLendTime() {
		return lendTime;
	}
	public void setLendTime(Date lendTime) {
		this.lendTime = lendTime;
	}
	public Date getReturnTime() {
		return returnTime;
	}
	public void setReturnTime(Date returnTime) {
		this.returnTime = returnTime;
	}
	public Integer getLendState() {
		return lendState;
	}
	public void setLendState(Integer lendState) {
		this.lendState = lendState;
	}
	public Double getLendMoney() {
		return lendMoney;
	}
	public void setLendMoney(Double lendMoney) {
		this.lendMoney = lendMoney;
	}
	public Lend(Long id, String lendName, Date lendTime, Date returnTime, Integer lendState, Double lendMoney) {
		super();
		this.id = id;
		this.lendName = lendName;
		this.lendTime = lendTime;
		this.returnTime = returnTime;
		this.lendState = lendState;
		this.lendMoney = lendMoney;
	}
	
	public Lend() {
		super();
	}
	@Override
	public String toString() {
		return "Lend [id=" + id + ", lendName=" + lendName + ", lendTime=" + lendTime + ", returnTime=" + returnTime
				+ ", lendState=" + lendState + ", lendMoney=" + lendMoney + "]";
	}

	
}
