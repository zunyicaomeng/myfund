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
	private int y=1;
	private Long userId=1l;
	
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
	public int getY() {
		return y;
	}

	public void setY(int y) {
		this.y = y;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
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

 // 冻结用户
	public String updateUserStatus() {
		String loginName = user.getLoginName();
		System.out.println("loginName:"+loginName);
		list = adminServiceImpl.getAdminUserID(loginName);
		for (User users : list) {
			if (users.getLoginName().equals(user.getLoginName())) {
				System.out.println("查询userid：" + users.getId());
				Long AdminUserID=users.getId();
				adminServiceImpl.updateUserStatus(AdminUserID);
				return "success";
			}
		}
		
		return "flase";
		
	}
	//禁止登陆
	public String updateUserStateLogin() {
		String loginName = user.getLoginName();
		System.out.println("loginName:"+loginName);
		list = adminServiceImpl.getAdminUserID(loginName);
		for (User users : list) {
			if (users.getLoginName().equals(user.getLoginName())) {
				System.out.println("查询userid：" + users.getId());
				Long AdminUserID=users.getId();
				adminServiceImpl.updateUserStateLogin(AdminUserID);
				return "success";
			}
		}
		
		return "flase";
	}
	//禁止转账
	public String updateUserState() {
		String loginName = user.getLoginName();
		System.out.println("loginName:"+loginName);
		list = adminServiceImpl.getAdminUserID(loginName);
		for (User users : list) {
			if (users.getLoginName().equals(user.getLoginName())) {
				System.out.println("查询userid：" + users.getId());
				Long AdminUserID=users.getId();
				adminServiceImpl.updateUserState(AdminUserID);
				return "success";
			}
		}
		
		return "flase";
	}
	//查询用户总数，并分页
	 public String getNumberUser(){
		 Map<String, Object> session = ActionContext.getContext().getSession();
		 List<Long> numberUser=adminServiceImpl.getNumberUser();
		 for (Long long1 : numberUser) {
			System.out.println(long1);
			session.put("numberUser", long1);
		}
		 Long NumberUser=(Long) session.get("numberUser");
		 if (NumberUser%5==0) {
			 int pageUser=(int) (NumberUser/5);
			 System.out.println("listPageUser"+pageUser);
			 session.put("listPageUser", pageUser);
		}else {
			int pageUser=(int) (NumberUser/5+1);
			 System.out.println("listPageUser"+pageUser);
			 session.put("listPageUser", pageUser);
		}
		 List<User> pageUserDemo=adminServiceImpl.getpageUser();
		 System.out.println("pageUserDemo:"+pageUserDemo);
		 session.put("pageUserDemo", pageUserDemo);
		 
		return "NumberUserSucces";
		 
	 }
	 //跟新表数据
	 public String getpageUserDemo(){
			Map<String, Object> session = ActionContext.getContext().getSession();
			List<User> pageUserDemo=adminServiceImpl.getpageUser();
			session.put("pageUserDemo", pageUserDemo);
			
			return "success";
		}
	 //删除用户
	 public String delete() {
			adminServiceImpl.deleteUser(userId);
			return "delete";
		}

}
