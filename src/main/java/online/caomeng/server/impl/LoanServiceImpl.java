package online.caomeng.server.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online.caomeng.dao.Impl.LoanDaoImpl;
import online.caomeng.model.Loan;

@Service
public class LoanServiceImpl {
	@Autowired
	private LoanDaoImpl loanDaoImpl;

	public List<Loan> getLoan() {
		return loanDaoImpl.getLoan();

	}
	public List<Loan> getLoanamount(){
 		return loanDaoImpl.getLoanamount();
	}
    public void loanAmount(String loanname,Double loanamount,Date returntime,Long userId,Double loginBalance,Double lBalance,Long locanId) {
		
	loanDaoImpl.loanAmount(loanname, loanamount, returntime,userId,loginBalance,lBalance,locanId);
	}
	 public List<Loan> getLoanDemo(){
		 return loanDaoImpl.getLoanDemo();
	 }
	 public Long getId(){
		 return loanDaoImpl.getId();
	 }
	 public List<Long> getNumberLoan(){
		 return loanDaoImpl.getNumberLoan();
	 }
	 public List<Loan> getpageloan(){
		 return loanDaoImpl.getpageloan();
	 }
}
