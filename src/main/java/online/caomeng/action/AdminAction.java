/*
*2017年10月24日
*yuan
*{lxbh@vip.qq.com}
*/
package online.caomeng.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import online.caomeng.server.impl.UserServiceImpl;

@Component("adminAction")
public class AdminAction {
	
	@Autowired
	private UserServiceImpl userServiceImpl;

	public UserServiceImpl getUserServiceImpl() {
		return userServiceImpl;
	}
	
	
	
}
