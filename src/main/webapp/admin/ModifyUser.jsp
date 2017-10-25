<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="css/lend.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/StyleDemo.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/Mondify.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/FreezeUser.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/Delete.css" rel="stylesheet">
    <script src="/My-Fund/plugins/jquery-3.2.1.min.js"></script>
    <script src="/My-Fund/js/all.js" type="text/javascript"></script>
    <script src="/My-Fund/js/InterfaceJump.js" type="text/javascript"></script>
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
            <a href="javascript" class="fonts">首页</a>
            <a href="javascript" class="fonts">我要出借</a>
            <a href="javascript" class="fonts">我要借款</a>
            <a href="javascript" class="fonts">网贷知识</a>
            <a href="javascript" class="fonts">信息披露</a>
            <a href="javascript" class="fonts">关于我们</a>
        </div>
    </div>
    <div id="account-middle">
        <div id="account-middle-left">
            <div id="account-middle-left-div"></div>
            <button onclick="anim();">用户管理
            </button>
            <button onclick="MondifyUser();">管理员
            </button>
            <button onclick="FreezeUser();">用户权限
            </button>
            <button onclick="UserDelete();">用户删除
            </button>

        </div>
        <div id="account-middle-right">
        
                <div id="ps"></div>
                <div id="loginDemo6"></div>
              <B> 一、修改用户权限</B>
                <hr>
                <form action="updateUserstate" method="post">
                <div id="loginDemo4"></div>
                    <p>用户账号：<input name="user.loginName" type="text" id="border3" ></p>
                    <p>用户状态代码：<input type="text" name="user.userState" id= "border6" /></p>
                    <p>用户管理密码： <input type="password" value="" class="text2" name ="adminUser.mPassword" id = "border5"/></p>
                    <div ><button type="submit" id="freeze-div5">确认修改</button></div>
                    </form>
                <div>1 失信用户：用户借钱之后没有在规定日期内还钱，或者没有还完。 </div>
                    <div>2 普通用户：用户只是把钱储存在这里，借钱在规定日期内还完，没有投资基金。 </div>
                <div >3 优质用户：用户在这储存资金和投资基金。 </div>
                </div>

</body>
</html>