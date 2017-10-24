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
div id="account-backdrop">
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
            <div>
               <B> 一、用户修改信息</B>
                <hr>
                <div id="button3"></div>
                <form id="formid"  name= "myform" method = 'post'  action = 'user_login_submit.action' onsubmit = "return checkUser();" >
                <div id="loginDemo9"></div>
                <p>用户账号：<input name="name"type="text" id="border" ></p>
                <div id="loginDemo7"></div>
                <p>用户密码： <input type="password" value="" class="text2" name = "userpass" id = "border1"/></p>
                <div id="loginDemo8"></div>
                <p>用户邮箱：<input name="email"type="email"   value="" id="border2"></p>
                    <div id="button1"></div>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <button onclick="" id="button"><B>提交</B></button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <button onclick="" id="button2"><B>取消</B></button>
                    <hr>
                <div id="ps"></div>
                <div id="loginDemo6"></div>
              <B> 二、修改用户权限</B>
                <hr>
                <div id="loginDemo4"></div>
                    <p>用户账号：<input name="name"type="text" id="border3" ></p>
                    <div id="loginDemoK"></div>

                    <p>用户管理密码： <input type="password" value="" class="text2" name = "userpass" id = "border5"/></p>
                    <div id="loginDemoW"></div>
                    <div ><button id="freeze-div5">权限用户代表</button></div>
                    <div id="loginDemoS"></div>
                <div>1 失信用户：用户借钱之后没有在规定日期内还钱，或者没有还完。 </div>
                    <div>2 普通用户：用户只是把钱储存在这里，借钱在规定日期内还完，没有投资基金。 </div>
                <div >3 优质用户：用户在这储存资金和投资基金。 </div>

</body>
</html>