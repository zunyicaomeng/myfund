/*
*2017年10月24日
*yuan
*{lxbh@vip.qq.com}
*/
package online.caomeng.server.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online.caomeng.dao.Impl.UserDaoImpl;

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
	
	
}
