<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提现</title>
    <link type="text/css" href="/My-Fund/css/account.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/style.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/bg.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/footer.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/top.css" rel="stylesheet">
    <script src="/My-Fund/js/jquery.min.js"></script>
    <script src="/My-Fund/js/all.js" type="text/javascript"></script>
    <script src="/My-Fund/js/account-team.js" type="text/javascript"></script>
    <script type="text/javascript" src="../js/bg.js"></script>
    <link type="text/css" href="/My-Fund/css/ModifyTheAccount.css" rel="stylesheet">
</head>
<body>
<div id="background">
    <canvas id="Mycanvas"></canvas>
</div>
<div id="content">
    <div id="top">
        <span id="login" class="top_style">&nbsp;欢迎&nbsp;</span>
        <a href="/My-Fund/account/account.jsp"  class="top_style">&nbsp;<s:property value="#session.loginName" />&nbsp;</a>
    </div>
    <div id="head">
        <div id="images"></div>
        <span id="subheading">Bayminimal集团旗下网贷</span>
        <div id="mainmenus">
            <ul class="nav">
                <li><a href="/My-Fund/index.jsp" class="fonts">首页</a></li>
                <ul class="menus">
                    <li></li>
                </ul>
                <li><a href="javascript:void(0)" class="fonts" id="loan">我要出借</a>
                    <div class="my">
                        <ul class="menus">
                            <li><a href="javascript:void(0)" class="fonts">优选出借计划</a></li>
                            <li><a href="javascript:void(0)" class="fonts">精选标</a></li>
                            <li><a href="javascript:void(0)" class="fonts">债券转让</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="javascript:void(0)" class="fonts">我要借款</a>
                    <div class="my">
                        <ul class="menus">
                            <li><a href="javascript:void(0)" class="fonts">玖富叮当</a></li>
                            <li><a href="javascript:void(0)" class="fonts">蜡笔分期</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="javascript:void(0)" class="fonts">信息披露</a>
                    <div class="my">
                        <ul class="menus">
                            <li><a href="javascript:void(0)" class="fonts">网贷知识</a></li>
                            <li><a href="javascript:void(0)" class="fonts">出借人提示</a></li>
                            <li><a href="javascript:void(0)" class="fonts">借款人提示</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="javascript:void(0)" class="fonts">关于我们</a>
                    <div class="my">
                        <ul class="menus">
                            <li><a href="javascript:void(0)" class="fonts" id="survey">集团介紹</a></li>
                            <li><a href="javascript:void(0)" class="fonts" id="about">核心团队</a></li>
                            <li><a href="javascript:void(0)" class="fonts" id="partner">合作伙伴</a></li>
                            <li><a href="javascript:void(0)" class="fonts" id="contactUs">联系我們</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
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
            <div id="ModifyTheAccount-div">
                <p id="ModifyTheAccount-div-onep">账户提现</p>
                <form id="ModifyTheAccount-form">
                    <p class="ModifyTheAccount-form-p">提现</p>
                    <hr>
                    <p>金&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;额：<input name="" type="text" value=""></p>
                    <p>银行卡号：<input name="" type="text" value=""></p>
                    <hr>
                    <p><input type="submit" value="提交" class="ModifyTheAccount-button" ><input type="reset" value="重置" class="ModifyTheAccount-button"></p>
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
							<dd>
								<a href="/My-Fund/Preferred lending plan.jsp">优选出借计划</a>
							</dd>
							<dd>
								<a href="/My-Fund/Selection.jsp">精选标</a>
							</dd>
							<dd>
								<a href="/My-Fund/Bonds.jsp">债权转让</a>
							</dd>
						</dl>
						<dl>
							<dt class="dt_head">我要借款</dt>
							<dd>
								<a href="/My-Fund/fenqi.jsp">蜡笔分期</a>
							</dd>
							<dd>
								<a href="/My-Fund/Mmoney.jsp">玖富叮当</a>
							</dd>
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