/*
*2017年10月24日
*yuan
*{lxbh@vip.qq.com}
*/
package online.caomeng.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online.caomeng.dao.Impl.UserDaoImpl;
import online.caomeng.model.Admin;

@Service
public class AdminServiceImpl {

	@Autowired
	private UserDaoImpl userDaoImpl;

	public UserDaoImpl getUserDaoImpl() {
		return userDaoImpl;
	}

	public void updateLendAccount(Long loginId,Double lendAcount) {
		userDaoImpl.updateLendAccount(loginId,lendAcount);
		
	}

	public void updateLoanAccount(Long loginId, Double loanAcount) {
		userDaoImpl.updateLoanAccount(loginId,loanAcount);
		
	}

	//获取admin内的sumloan
	public List<Double> getSumLoan(Long loginId) {
		return userDaoImpl.getSumLoan(loginId);
		
	}

	//获取admin的sumlend
	public List<Double> getSumLend(Long loginId) {
		return userDaoImpl.getSumLend(loginId);
	}

	public List<Admin> getUsersInfo() {
		return userDaoImpl.getUsersInfo();	
	}
	
	
}
