<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>账户设置</title>
    <link type="text/css" href="/My-Fund/css/AccountSettings.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/style.css" rel="stylesheet">
    <script src="/My-Fund/js/jquery.min.js"></script>
    <script src="/My-Fund/js/all.js" type="text/javascript"></script>
    <script src="/My-Fund/js/AccountSetting.js" type="text/javascript"></script>
    <link type="text/css" href="/My-Fund/css/bg.css" rel="stylesheet">
    <script src="/My-Fund/js/bg.js" type="text/javascript"></script>
    <link type="text/css" href="/My-Fund/css/footer.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/top.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/My-Fund/css/home.css">
    <script src="/My-Fund/js/account-team.js" type="text/javascript"></script>
</head>
<body>
<div id="background">
    <canvas id="Mycanvas"></canvas>
</div>
<div id="content">
    <div id="menu_top">
        <a href="javascript:void(0)" class="menu_top_s">&nbsp;欢迎&nbsp;</a>
        <a href="javascript:void(0)" class="menu_top_s">&nbsp;<s:property value="#session.loginName" />&nbsp;</a>
    </div>
    <div id="menu_head">
        <div id="head_1">
            <div id="imgs"></div>
            <h2>我的基金旗下网贷</h2>
        </div>
        <div id="head_2">
            <div style="position: relative;">
                <ul class="navs">
                    <li id="menuEntryHome" class="dropdown">
                        <a href="/My-Fund/index.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button">首页
                        </a>
                    </li>
                </ul>
            </div>
            <div style="position: relative;">
                <ul class="nav" id="nav_x1">
                    <li id="menuEntryHome" class="dropdown">
                        <a href="/My-Fund/Preferred lending plan.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button">我要出借
                            <span class="caret">
                                <img src="https://www.teamviewer.com/resources/images/icons/arrow-down.svg" class="imgMenuCaretDown" alt="" title="">
                                <img src="https://www.teamviewer.com/resources/images/icons/arrow-up-blue.svg" class="imgMenuCaretUp" alt="" title="">
                            </span>
                        </a>
                        <ul class="dropdown_menu" role="menu">
                            <li><a href="/My-Fund/Preferred lending plan.jsp">优选出借计划</a></li>
                            <li><a href="/My-Fund/Selection.jsp">精选标</a></li>
                            <li><a href="/My-Fund/Bonds.jsp">债券转让</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div style="position: relative;">
                <ul class="nav" id="nav_x2">
                    <li id="menuEntryHome" class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">我要借款
                            <span class="caret">
                                <img src="https://www.teamviewer.com/resources/images/icons/arrow-down.svg" class="imgMenuCaretDown" alt="" title="">
                                <img src="https://www.teamviewer.com/resources/images/icons/arrow-up-blue.svg" class="imgMenuCaretUp" alt="" title="">
                            </span>
                        </a>
                        <ul class="dropdown_menu" role="menu">
                            <li><a href="https://f.alipay.com">西瓜分期</a></li>
                            <li><a href="/My-Fund/Mmoney.jsp">蜡笔分期</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div style="position: relative;">
                <ul class="nav" id="nav_x3">
                    <li id="menuEntryHome" class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">信息披露
                            <span class="caret">
                                <img src="https://www.teamviewer.com/resources/images/icons/arrow-down.svg" class="imgMenuCaretDown" alt="" title="">
                                <img src="https://www.teamviewer.com/resources/images/icons/arrow-up-blue.svg" class="imgMenuCaretUp" alt="" title="">
                            </span>
                        </a>
                        <ul class="dropdown_menu" role="menu">
                            <li><a href="#">网贷知识</a></li>
                            <li><a href="#">出借人提示</a></li>
                            <li><a href="#">借款人提示</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div style="position: relative;">
                <ul class="nav" id="nav_x4">
                    <li id="menuEntryHome" class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">关于我们
                            <span class="caret">
                                <img src="https://www.teamviewer.com/resources/images/icons/arrow-down.svg" class="imgMenuCaretDown" alt="" title="">
                                <img src="https://www.teamviewer.com/resources/images/icons/arrow-up-blue.svg" class="imgMenuCaretUp" alt="" title="">
                            </span>
                        </a>
                        <ul class="dropdown_menu" role="menu">
                            <li><a href="#" id="survey">集团介绍</a></li>
                            <li><a href="#" id="about">核心团队</a></li>
                            <li><a href="#" id="partner">合作伙伴</a></li>
                            <li><a href="#" id="contactUs">联系我们</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="account-middle">
        <div id="account-middle-left">
            <div id="account-middle-left-div"></div>
            <button onclick="account();">我的账号</button>
            <button onclick="lend();">我的出错</button>
            <button onclick="AccountSetting();">账号设置</button>
            <button onclick="ModifyTheAccount();">修改账号</button>
            <button onclick="LendParticulars();">当前借出</button>
            <button onclick="borrow();">目前借款</button>
        </div>
        <div id="account-middle-right">
            <div id="AccountSetting-top-div">
                <p id="AccountSetting-top-div-one">账号设置</p>
                <form id="AccountSetting-form" action="updateUser" method="post">
                    <p class="AccountSetting-top-div-account">个人信息</p>
                    <hr>
                    <p>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" name="user.username"></p>
                    <p>年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：<input type="text" name="user.age"></p>
                    <p>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别： <input type="radio" name="user.gender" checked="checked" value="male">男
                        <input type="radio" name="user.gender" value="female">女</p>
                    <p>出生年月日：<input type="date" name="user.birthday"></p>
                    <p class="AccountSetting-top-div-account">设置交易密码</p>
                    <hr>
                    <p class="AccountSetting-top-div-two">使用快捷支付进行账户资金提现时，需要验证交易密码。</p>
                    <p class="AccountSetting-top-div-two">为保障您的账户资金安全，请您设置交易密码。交易密码需与微理财登录密码不一致。</p>
                    <p>交&nbsp;易&nbsp;密&nbsp;码：<input type="password" placeholder="请输入您的密码" id="input2" name="user.transactionpassword"></p>
                    <p> 重&nbsp;复&nbsp;密&nbsp;码：<input type="password" placeholder="请输入您的确认秘密" id="input3"></p>
                   <p class="AccountSetting-top-div-account">设置银行卡号</p>
                    <hr>
                    <p class="AccountSetting-top-div-two">请谨慎输入您的银行卡号。</p>
                    <p> 银&nbsp;行&nbsp;卡&nbsp;号：<input type="tel" placeholder="请输入银行卡号" id="bankCard" name="user.bankId"></p>
                    <p><input type="submit" value="保存" class="AccountSetting-button" onclick="return setting()"><input type="reset" value="重置" class="AccountSetting-button"></p>
                </form>
            </div>
        </div>

    </div>
    <div id="footer">
        <div class="clearfix">
            <div class="fl">
                <img src="/My-Fund/images/timg.jpg">
                <div>
                    <p style="color: #666369">联系邮箱：</p>
                    <p style="color: #666369">lxbh@vip.qq.com</p>
                </div>
            </div>
            <div class="fr">
                <div class="ulbox clearfix">
                    <dl>
                        <dt class="dt_head">新手引导</dt>
                        <dd><a href="">注册登录</a></dd>
                        <dd><a href="">出借服务</a></dd>
                        <dd><a href="">安全保障</a></dd>
                    </dl>
                    <dl>
                        <dt class="dt_head">我要出借</dt>
                        <dd><a href="/My-Fund/Preferred lending plan.jsp">优选出借计划</a></dd>
                        <dd><a href="/My-Fund/Selection.jsp">精选标</a></dd>
                        <dd><a href="/My-Fund/Bonds.jsp">债权转让</a></dd>
                    </dl>
                    <dl>
                        <dt class="dt_head">我要借款</dt>
                        <dd><a href="/My-Fund/fenqi.jsp">蜡笔分期</a></dd>
                        <dd><a href="/My-Fund/Mmoney.jsp">玖富叮当</a></dd>
                    </dl>
                    <dl>
                        <dt class="dt_head">友情链接</dt>
                        <dd><a target="_blank" href="http://www.nifa.org.cn/nifa/index.html">中国互联网金融协会</a></dd>
                        <dd><a target="_blank" href="http://www.pbc.gov.cn/">中国人民银行官网</a></dd>
                        <dd><a target="_blank" href="http://www.cbrc.gov.cn/index.html">中国银监会官网</a></dd>
                    </dl>
                </div>
            </div>
        </div>

    </div>
</div>
</body>

</html>