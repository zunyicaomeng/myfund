<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="/My-Fund/css/Delete.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/StyleDemo.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/Mondify.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/FreezeUser.css" rel="stylesheet">

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
        <div id="account-middle-little">
        <div id="account-middle-left">
            <div id="account-middle-left-div"></div>
            <button onclick="anim();" >用户管理
                </button>
                    <button onclick=" MondifyUser();" >管理员
                        </button>
                            <button onclick=" FreezeUser();">用户权限
                                </button>
            <button onclick=" UserDelete();">用户删除
            </button>

        </div>
        <div id="account-middle-right">
<div>
    <div id="tableDemo">
        <B>一、用户管理界面</B>
        <hr>
        <div id="loginDemo">
            <div id="account-middle-middle">
            <div id="login1" >管理员登陆系统后，对可以使用本系统的各类用户进行设置</div>
            <div id="login2">管理员可以添加一个用户可以使用管理员后台系统进行管理</div>
            <div id="login3">管理员可以修改登陆用户的用户名和密码、禁用用户登陆、删除登陆用户</div>
        </div>
        </div>

    <table  border="1" width="600px" align="center" cellspacing="0">
        <tr>
            <div id="tableDemo1"><B>二、用户登录信息</B></div>
            <hr>
            <td height="60px" width="150px" align="center" valign="middle" ><B>账户名</B></td>
            <td height="60px" width="150px" align="center" valign="middle" ><B>账户密码</B></td>
            <td height="60px" width="150px" align="center" valign="middle" ><B>借出总金额</B></td>
            <td height="60px" width="150px" align="center" valign="middle" ><B>借入总金额</B></td>

        </tr>
        <tr>
            <td  height="60px" width="100px" align="center" valign="middle"> </td>
            <td  height="60px" width="100px" align="center" valign="middle"> </td>
            <td  height="60px" width="100px" align="center" valign="middle"> </td>
            <td  height="60px" width="100px" align="center" valign="middle"> </td>

        </tr>

    </table>
        <hr>
        <hr>
        <div id="tableDemo5"><B>三、用户权限管理</B></div>
<div id="padding"></div>
            <form method="post" action="">
                <div id="account-div">
                <button type="button"  id="account-Demo2"style="border-color: black"  onclick="MondifyUser();">
                    <B>修改用户</B></button>
                <button type="button" id="account-Demo3"style="border-color: black" onclick="UserDelete();">
                    <B>删除用户</B></button>

                <button type="button" id="account-Demo1" style="border-color: black" onclick="FreezeUser();">
                    <B>冻结用户</B></button></div>
        </form>
    </div>
</div>
</div>

</table>
        </div>
    </div>
    <div id="account-underneath">
    </div>
</div>
</body>
</html>