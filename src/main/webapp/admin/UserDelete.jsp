<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd 

">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 600px;
	text-align: center;
}
</style>
<link type="text/css" href="/My-Fund/css/Delete.css" rel="stylesheet">
<link type="text/css" href="/My-Fund/css/StyleDemo.css" rel="stylesheet">
<link type="text/css" href="/My-Fund/css/FreezeUser.css"
	rel="stylesheet">
<link type="text/css" href="/My-Fund/css/Mondify.css" rel="stylesheet">
<script src="/My-Fund/js/InterfaceJump.js" type="text/javascript"></script>
<script type="text/javascript" src="/My-Fund/jquery-3.2.1.min.js"></script>
<script src="https://libs.baidu.com/jquery.min.js 

"
	type="text/javascript"></script>
<script type="text/javascript">
	function fun() {

		$("input:checkbox:checked").each(function() {
			n = $(this).parents("tr").index();
			$("table#table").find("tr:eq(" + n + ")").remove();
		})
	}
	$(
			function() {
				$("#all").click(function() {
					$('input[name="demo"]').prop("checked", this.checked);
				});
				var $subBox = $("input[name='demo']");
				$subBox
						.click(function() {
							$("#all")
									.prop(
											"checked",
											$subBox.length == $("input[name='demo']:checked").length ? true
													: false);
						})
			})
</script>

</head>
<body>
	<div id="account-backdrop">
		<div id="top">
			<a href="javascript" id="login" class="top_style">&nbsp;登录&nbsp;</a>
			<a href="javascript" id="register" class="top_style">&nbsp;快速注册&nbsp;</a>
		</div>
		<div id="head">
			<div id="images"></div>
			<span id="subheading">玖富集团旗下网贷</span>
			<div id="menus">
				<a href="javascript" class="fonts">首页</a> <a href="javascript"
					class="fonts">我要出借</a> <a href="javascript" class="fonts">我要借款</a>
				<a href="javascript" class="fonts">网贷知识</a> <a href="javascript"
					class="fonts">信息披露</a> <a href="javascript" class="fonts">关于我们</a>
			</div>
		</div>
		<div id="account-middle">
			<div id="account-middle-left">
				<div id="account-middle-left-div"></div>
				<button onclick="anim();">用户管理</button>
				<button onclick="MondifyUser();">管理员</button>
				<button onclick="FreezeUser();">用户权限</button>
					<form action="getNumberUser" method="post">
					<input type="submit" onclick=" UserDelete();" value="用户删除" class="anim-input">
					</form>

			</div>
			<div id="account-middle-right">
				<div>
					<hr>
					<div id="delete2"></div>
					<div id="delete8">
						<B>用户删除</B>
					</div>
					<hr>
					<div id="delete7"></div>
					<div id="loginDemo9"></div>
					<hr>
					<div>管理员可以在后台对用户的信息进行删除</div>
					<table border="1" width="300px" align="center" cellspacing="0"
						id="table">
						<tr>
							<th>用户ID</th>
							<th>用户账号</th>
							<th>用户密码</th>
							<th>删除按钮</th>
						</tr>
						<c:forEach var="item" items="${session.pageUserDemo}">
							<tr>
								<td>${item.id }</td>
								<td>${item.loginName }</td>
								<td>${item.password }</td>
								<td>
								<form action="delete" method="post">
								<input type="submit" value="${item.id}">
								</form>
								</td> 
							</tr>
						</c:forEach>
					</table>
                <form action="getpageLoanAndLend" method="post">
                <c:forEach begin="1" end="${listPageUser}" var="y">
                <input type="submit" value="${y}" class="lend-btn">
                
                </c:forEach>
                </form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
