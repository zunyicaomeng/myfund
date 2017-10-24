<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>我的账户</title>
    <title>我的账户</title>
    <link type="text/css" href="/My-Fund/css/account.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/style.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/bg.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/footer.css" rel="stylesheet">
    <link type="text/css" href="/My-Fund/css/top.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/My-Fund/css/home.css">
    <script src="/My-Fund/js/jquery.min.js"></script>
    <script src="/My-Fund/js/all.js" type="text/javascript"></script>
    <script src="/My-Fund/js/account-team.js" type="text/javascript"></script>
    <script type="text/javascript" src="/My-Fund/js/bg.js"></script>
</head>
<body>
<div id="background">
    <canvas id="Mycanvas"></canvas>
</div>
<div id="content">
    <div id="menu_top">
        <a href="javascript:void(0)" class="menu_top_s">&nbsp;欢迎&nbsp;</a>
        <a href="javascript:void(0)" class="menu_top_s">&nbsp;<s:property value="#session.loginName" /></a>
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
            <button onclick="lend();">我的出借</button>
            <button onclick="AccountSetting();">账号设置</button>
            <button onclick="ModifyTheAccount();">修改账号</button>
            <button onclick="LendParticulars();">当前借出</button>
            <button onclick="borrow();">目前借款</button>
        </div>
        <div id="account-middle-right">
            <div id="account-middle-right-div">
                <div id="account-middle-right-image"></div>
                <div id="account-middle-right-text">Hello,<br><s:property value="#session.loginName" /></div>
                <a id="pay">账号充值</a>
                <a id="pay_money">去还款</a>
                <hr>
            </div>
            <div id="account-middle-right-middle">
                <p>账户总览</p>
                <div id="account-middle-right-middle-div">
                    <div class="account-div">
                        <div class="account-div-imageone"></div>
                        <div class="account-div-text"><p><s:property value="#session.balances" /></p><span>持有中出借本金</span></div>
                    </div>
                    <div class="account-div">
                        <div class="account-div-imagetwo"></div>
                        <div class="account-div-text"><p><s:property value="#session.balances" /></p><span>可提现总额</span></div>
                    </div>
                    <div class="account-div">
                        <div class="account-div-imagethree"></div>
                        <div class="account-div-text"><p><s:property value="#session.LendMoney" /></p><span>借款总额</span></div>
                    </div>
                </div>
                <div id="account-middle-right-middle-text">
                    <p>●持有中出借本金：用户持有中出借计划的本金总额。</p>
                    <p>●可提现总额：当前可进行提现操作的金额总数。</p>
                    <p>●期望回报总额：截至目前，无不确定事件发生的情况下，用户持有的所有出借计划的期望回报总额。（暂不统计精选标收益)</p>
                    <p>●已累计回报总额：用户所有已提现的出借计划的回报总额。（暂不统计精选标收益）</p>
                </div>
                <hr>
            </div>
            <div id="account-middle-right-right">
                <div id="account-middle-right-right-one"><p>持有中出借服务计划</p></div>
                <div id="account-middle-right-right-image"></div>
                <div id="account-middle-right-right-two">
                    <div><p>持有中出个数</p><span><s:property value="#session.numberAll" />个</span></div>
                    <div><p>出借总额(含续投本金)</p><span>￥<s:property value="#session.LendMoney" /></span></div>
                    <div><p>余额</p><span>￥<s:property value="#session.balances" /></span></div>
                </div>
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