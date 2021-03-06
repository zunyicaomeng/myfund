<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>登录</title>
    <link href="/My-Fund/css/top.css" rel="stylesheet">
    <link href="/My-Fund/css/bg.css" rel="stylesheet">
    <link href="/My-Fund/css/footer.css" rel="stylesheet">
    <link href="/My-Fund/css/login.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/My-Fund/css/home.css">
    <script src="/My-Fund/js/jquery.min.js"></script>
    <script src="/My-Fund/js/bg.js" type="text/javascript"></script>
    <script src="/My-Fund/js/team.js"></script>
</head>
<body>
<div id="background">
    <canvas id="Mycanvas"></canvas>
</div>
<div id="content">
    <div id="menu_top">
        <a href="/My-Fund/login.jsp" class="menu_top_s">&nbsp;登录&nbsp;</a>
        <a href="/My-Fund/register.jsp" class="menu_top_s">&nbsp;快速注册&nbsp;</a>
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
                            <li><a href="/My-Fund/Bonds.jsp">债券</a></li>
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
                            <li><a href="/My-Fund/Mmoney.jsp">傻瓜分期</a></li>
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
    <div id="logn_form">
        <div id="logn_form_fl">
            <div>
                <img src="/My-Fund/images/汽车13.png">
            </div>
        </div>
        <div>
            <h3>2010年，IPHONE4掀起了全球智能手机的潮流，开启了手机智能时代，但是因为售价昂贵，被中国消费者戏称需要“卖肾”才能买得起IPHONE。2011年8月，小米手机第一代横空出世，在当时HTC等手机都在4000元档位的时候，1999元的劲爆价格，让小米从毫不知名迅速成为当年最火爆的手机。
       
        有人说，互联网和娱乐产业天生就是一对，互联网科技越发达，娱乐产业也会越蓬勃。与此同时，随着人均消费水平的不断提高，大众对于精神层面的消费追求愈加丰富，我国的文化娱乐产业也迎来了最好的发展时期。
       
        当一个传统的行业，“国”字头的项目想要嫁接新零售，会碰撞出怎样的火花？
        2017年9月初，通路快建助力“中国家纺”以新零售的模式连开两场招商会，成绩斐然，现场超过80%的签约率，回款超过400万。</h3>
        </div>
    </div>
    <div id="footer">
        <div class="clearfix">
            <div class="fl">
                <img src="/My-Fund/images/timg.png">
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
                        <dd><a href="/My-Fund/Bonds.jsp">债权</a></dd>
                    </dl>
                    <dl>
                        <dt class="dt_head">我要借款</dt>
                        <dd><a href="/My-Fund/fenqi.jsp">傻瓜分期</a></dd>
                        <dd><a href="/My-Fund/Mmoney.jsp">基金招财</a></dd>
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