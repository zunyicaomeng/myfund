package online.caomeng.server.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online.caomeng.dao.Impl.LendDaoImpl;
import online.caomeng.model.Lend;

@Service
public class LendServiceImpl {
	@Autowired
	private LendDaoImpl lendDaoImpl;
	
	public List<Lend> getLendMoney(){
		return lendDaoImpl.getLendMoney();
	}

	public void lendAmount(String lendName,Double lendMoney,Date returnTime,Long userId,Double loginBalance,Double lBalance,Long lendId) {
		
		lendDaoImpl.lendAmount(lendName, lendMoney, returnTime,userId,loginBalance,lBalance,lendId);
	}

	 public List<Lend> getLendDemo(){
		 return lendDaoImpl.getLendDemo();
	 }
	 public List<Long> getNumberLend(){
		 return lendDaoImpl.getNumberLend();
	 }
	 public List<Lend> getpagelend(){
		 return lendDaoImpl.getpagelend();
	 }
}
