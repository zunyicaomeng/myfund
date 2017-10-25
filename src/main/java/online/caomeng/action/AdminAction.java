/*
*2017年10月24日
*yuan
*{lxbh@vip.qq.com}
*/
package online.caomeng.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;

import online.caomeng.model.Admin;
import online.caomeng.model.AdminUser;
import online.caomeng.model.User;
import online.caomeng.server.impl.AdminServiceImpl;
import online.caomeng.server.impl.UserServiceImpl;

@Component("adminAction")
public class AdminAction {
	
	@Autowired
	private UserServiceImpl userServiceImpl;
	@Autowired
	private AdminServiceImpl adminServiceImpl;
	
	private List<Admin> aList;
	private List<User> list;
	private List<AdminUser> auList;
	private int usersPage = 1;
	private User user;
	private AdminUser adminUser;
	private int pageUser = 0;
	
	public int getUsersPage() {
		return usersPage;
	}

	public void setUsersPage(int usersPage) {
		this.usersPage = usersPage;
	}

	public List<Admin> getaList() {
		return aList;
	}

	public List<User> getList() {
		return list;
	}

	public List<AdminUser> getAuList() {
		return auList;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public AdminUser getAdminUser() {
		return adminUser;
	}

	public void setAdminUser(AdminUser adminUser) {
		this.adminUser = adminUser;
	}

	public UserServiceImpl getUserServiceImpl() {
		return userServiceImpl;
	}
	
	public int getPageUser() {
		return pageUser;
	}

	//获取分页查询后信息
	public String getAdminPage(){
		aList = adminServiceImpl.getUserPageList(usersPage);
		return "success";
	}
	
	public String updateUserstate(){
		list = userServiceImpl.getUsers();
		auList = adminServiceImpl.getAdminUser();
		Long id = 0L;
		for (User users : list) {
			String loginname = users.getLoginName();
			if(user.getLoginName().equals(loginname)){
				for (AdminUser admin : auList) {
					if(adminUser.getmPassword().equals(admin.getmPassword())){
						List<User> usersid = userServiceImpl.getaUserId(user.getLoginName());
						for (User user1 : usersid) {
							if(user1.getLoginName().equals(user.getLoginName())){
								id = user1.getId();
							}
						}
						userServiceImpl.updateUserState(user.getUserState(),id);
						aList = adminServiceImpl.getUserPageList(usersPage);
						//获取admin表所有记录和
						List<Long> numberUsers = adminServiceImpl.getAmountUsers();
						Long countUser = 0L;
						for (Long numberUser : numberUsers) {
							countUser = numberUser;
						}
						//判断总共多少页
						if(countUser%5==0){
							pageUser = (int) (countUser/5);
							System.out.println("pageUser:"+pageUser);
						}else{
							pageUser = (int) (countUser/5+1);
							System.out.println("pageUser:"+pageUser);
						}
					}
				}
			}else{
				//用户名不存在
			}
		}
		return "success";
	}
	
}
