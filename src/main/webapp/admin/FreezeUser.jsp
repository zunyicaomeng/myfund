<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="/My-Fund/css/Mondify.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/StyleDemo.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/FreezeUser.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/Delete.css" rel="stylesheet">
    <script src="/My-Fund/plugins/jquery-3.2.1.min.js"></script>
    <script src="/My-Fund/js/all.js" type="text/javascript"></script>
    <script src="/My-Fund/js/jump.js" type="text/javascript"></script>
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
            <body>
              <div id="freeze1"> <B>用户冻结</B></div>
                    <hr>
                <p>用户账号：<input name="name"type="text" id="border" ></p>
                <div id="loginDemo7"></div>
                <p>用户密码： <input type="password" value="" class="text2" name = "userpass" id = "border1"/></p>
                <hr>

               

                <hr>
              <div ><B>禁止转账：</B></div>

              <input type="password" placeholder="" id="freeze-div2">
             <div><button id="freeze-div1">用户管理密码</button></div>
              <div>冻结后的账户无法进行转账功能</div>
                <hr>
                <div id="freeze2"></div>
                <div></div>
              <div ><B>禁止登录：</B></div>
              <input type="password" placeholder="" id="freeze-div4">
              <div><button id="freeze-div3">用户管理密码</button></div>
              <div id="freeze3"></div>
              <div>用户在被冻结之后，无法再进行登录</div>
                <hr>
                <div id="freeze7"></div>
<div id="freeze6"></div>
                <div><B>冻结规则</B>：</div>
                <div>A、在基金里面借钱没有按时还钱</div>
                <div>B、在基金里面进行资金操作的时候有，非法违规操作</div>
                <div>C、用户在操作的时候用假的账户或者非法账户操作</div>
                <div id="freeze5"></div>
</body>
</html>