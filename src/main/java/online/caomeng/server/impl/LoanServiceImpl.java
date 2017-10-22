package online.caomeng.server.impl;

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
}
