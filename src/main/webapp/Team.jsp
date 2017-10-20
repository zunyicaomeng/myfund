<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>menus</title>
	<link rel="stylesheet" type="text/css" href="/My-Fund/css/home.css">
	<link rel="stylesheet" type="text/css" href="/My-Fund/css/bg.css">
	<link rel="stylesheet" type="text/css" href="/My-Fund/css/footer.css">
	<link rel="stylesheet" type="text/css" href="/My-Fund/css/style.css">
</head>
<body>
<div id="background">
	<canvas id="Mycanvas"></canvas>
</div>
<div id="content">
	<div id="menu_top">
		<a href="javascript:void(0)" class="menu_top_s" id="login">&nbsp;登录&nbsp;</a>
		<a href="javascript:void(0)" class="menu_top_s" id="register">&nbsp;快速注册&nbsp;</a>
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
						<a href="index.html" class="dropdown-toggle" data-toggle="dropdown" role="button">首页
						</a>
					</li>
				</ul>
			</div>
			<div style="position: relative;">
				<ul class="nav">
					<li id="menuEntryHome" class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">我要出借
							<span class="caret">
								<img src="https://www.teamviewer.com/resources/images/icons/arrow-down.svg" class="imgMenuCaretDown" alt="" title="">
								<img src="https://www.teamviewer.com/resources/images/icons/arrow-up-blue.svg" class="imgMenuCaretUp" alt="" title="">
							</span>
						</a>
						<ul class="dropdown_menu" role="menu">
							<li><a href="javascript:void(0)">优选出借计划</a></li>
							<li><a href="javascript:void(0)">精选标</a></li>
							<li><a href="javascript:void(0)">债券转让</a></li>
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
							<li><a href="#">基金招财</a></li>
							<li><a href="#">蜡笔分期</a></li>
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
</div>
	<div id="footer">
        <div class="clearfix">
            <div class="fl">
                <img src="/My-Fund/images/timg.jpg">
                <div>
                    <p>123456789</p>
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
</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.js"></script>
<script type="text/javascript" src="/My-Fund/js/team.js"></script>
<script type="text/javascript" src="/My-Fund/js/bg.js"></script>
</html>