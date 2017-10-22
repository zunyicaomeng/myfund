<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的基金</title>
    <link href="/My-Fund/css/owl.carousel.css" rel="stylesheet">
    <link href="/My-Fund/css/owl.theme.css" rel="stylesheet">
    <link href="/My-Fund/css/style.css" rel="stylesheet">
    <link href="/My-Fund/css/footer.css" rel="stylesheet">
    <link href="/My-Fund/css/index-top.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/My-Fund/css/home.css">
    <script src="/My-Fund/js/jquery.min.js"></script>
    <script src="/My-Fund/js/owl.carousel.js"></script>
    <script src="/My-Fund/js/scroll.js"></script>
    <script type="text/javascript" src="/My-Fund/js/team.js"></script>
     <script src="/My-Fund/js/safeTime.js" type="text/javascript"></script>
</head>
<body onload="getTime()">
<div id="menu_top">
        <a href="/My-Fund/login.jsp" class="menu_top_s" id="login">&nbsp;登录&nbsp;</a>
        <a href="/My-Fund/register.jsp" class="menu_top_s" id="register">&nbsp;快速注册&nbsp;</a>
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
                <ul class="nav">
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
                <ul class="nav">
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
                <ul class="nav">
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
                <ul class="nav">
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
    <div id="scroll">
        <div id="owl-demo" class="owl-carousel">
            <a class="item"><img src="images/1.jpg" alt=""></a>
            <a class="item"><img src="images/2.jpg" alt=""></a>
            <a class="item"><img src="images/3.jpg" alt=""></a>
            <a class="item"><img src="images/4.jpg" alt=""></a>
            <a class="item"><img src="images/5.jpg" alt=""></a>
        </div>
        <div id="ben_login">
            <div id="ben_login_top">
                <p>My·基金</p>
            </div>
            <div id="ben_login_info">
                <span>三年不亏</span>
                <span>五年回本</span><br>
                <p>我的基金，您最无忧的选择</p>
                <p>My·Fund Your most carefree choice</p>
            </div>
            <div id="ben_login_btn">
                <a href="/My-Fund/register.jsp" id="ben_login_btn_register">立即注册</a><br>
                <a href="/My-Fund/login.jsp" id="ben_login_btn_login">已有账号，立即登陆</a>
            </div>
        </div>
    </div>
    <div id="botton">
        <ul>
            <li>
                <p>
                    <span id="botton_accounts">
                    <img src="images/accountsvg.png" class="botton_img">
                    </span>
                    <span class="botton_info">7</span>
                    <span class="botton_info">人</span>
                </p>
            </li>
            <li>
                <p>
                    <span id="botton_safetime">
                    <img src="images/safety.png" class="botton_img">
                    </span>
                    <span class="fo-mo" id="safeYear">0 </span><span class="fo-mw">年</span>
                    <span class="fo-mo" id="safeDay">0</span><span class="fo-mw">天</span>
                    <span class="fo-mo" id="safeHour">0</span><span class="fo-mw">时</span>
                    <span class="fo-mo" id="safeMin">0</span><span class="fo-mw">分</span>
                    <span class="fo-mo" id="safeSec">0</span><span class="fo-mw">秒</span>
                </p>
            </li>
            <li>
                <p>
                    <span id="botton_money">
                    <img src="images/money.png" class="botton_img">
                    </span>
                    <span class="botton_info">1000000</span>
                    <span class="botton_info">元</span>
                </p>
            </li>
        </ul>
    </div>
    <div id="footer">
        <div class="clearfix">
            <div class="fl">
                <img src="images/timg.png">
                <div>
                    <p style="color: #666369">联系邮箱：</p>
                    <p style="color: #666369">lxbh@vip.qq.com</p>
                </div>
            </div>
            <div class="fr">
                <div class="ulbox clearfix">
                    <dl>
                        <dt class="dt_head">新手引导</dt>
                        <dd><a href="/My-Fund/register.jsp">注册登录</a></dd>
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
</script>
</body>

</html>