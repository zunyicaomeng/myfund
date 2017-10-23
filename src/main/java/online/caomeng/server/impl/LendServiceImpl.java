package online.caomeng.server.impl;

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
	 public List<Lend> getLendDemo(){
		 return lendDaoImpl.getLendDemo();
	 }
	 public List<Long> getNumberLend(){
		 return lendDaoImpl.getNumberLend();
	 }
}
