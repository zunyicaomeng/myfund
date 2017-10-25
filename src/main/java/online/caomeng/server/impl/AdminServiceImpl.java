/*
*2017年10月24日
*yuan
*{lxbh@vip.qq.com}
*/
package online.caomeng.server.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online.caomeng.dao.Impl.AdminDaoImpl;
import online.caomeng.dao.Impl.UserDaoImpl;
import online.caomeng.model.Admin;
import online.caomeng.model.AdminUser;

@Service
public class AdminServiceImpl {

	@Autowired
	private UserDaoImpl userDaoImpl;
	@Autowired
	private AdminDaoImpl adminDaoImpl;

	public UserDaoImpl getUserDaoImpl() {
		return userDaoImpl;
	}

	public AdminDaoImpl getAdminDaoImpl() {
		return adminDaoImpl;
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

	//获取数据表内所有数据
	public List<Admin> getUsersInfo() {
		return userDaoImpl.getUsersInfo();	
	}

	//获取数据表条数总和
	public List<Long> getAmountUsers() {
		return adminDaoImpl.getAmountUsers();
	}

	//获取分页查询结果
	public List<Admin> getUserPageList(int usersPage) {
		return adminDaoImpl.getUserPageList(usersPage);
	}
	
	//获取数据表内所有数据
		public List<AdminUser> getAdminUser() {
			return adminDaoImpl.getAdminUser();	
		}
}
