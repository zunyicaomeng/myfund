<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>核心团队</title>
	<link rel="stylesheet" type="text/css" href="/My-Fund/css/style.css">
	<link rel="stylesheet" type="text/css" href="/My-Fund/css/footer.css">
	<link rel="stylesheet" type="text/css" href="/My-Fund/css/bg.css">
	<link rel="stylesheet" type="text/css" href="/My-Fund/css/top.css">
	<link rel="stylesheet" type="text/css" href="/My-Fund/css/home.css">
</head>
<body>
<div id="background">
	<canvas id="Mycanvas"></canvas>
</div>
<div id="content">
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
	<div class="survey_top" style="background-color: #f7f7f7;">
		<h1>集团简介</h1>
		<p class="wire"></p>
		<p class="wire2">首页>核心团队</p>
	</div>
	<div id="add_all_1">
	<h4>基金团队高管</h4>
	<hr />
	<div>
		<div class="team_all" id="team_1">
			<div class="picture" id="a000"></div>
			<div class="bg">
				<h2>袁廷汉</h2>
				<p class="p_font">博士 厦门大学会计学博士、经济学硕士，英国剑桥大学工商管理硕士MBA</p>
			</div>
		</div>
		<div class="team_all" id="team_2">
			<div class="picture" id="a001"></div>
			<div class="bg">
				<h2>郑扬</h2>
				<p class="p_font">学士，北京大学光华管理学院EMBA，上海财经大学金融学与经济统计学双学士</p>
			</div>
		</div>
		<div class="team_all" id="team_3">
			<div class="picture" id="a010"></div>
			<div class="bg">
				<h2>熊彪</h2>
				<p class="p_font">硕士 中国社会科学院金融学硕士</p>
			</div>
		</div>
		<div class="team_all" id="team_4">
			<div class="picture" id="a011"></div>
			<div class="bg">
				<h2>张文亮</h2>
				<p class="p_font">美国德州大学-奥斯汀工商管理硕士MBA、生物学博士</p>
			</div>
		</div>
		<div class="team_all" id="team_5">
			<div class="picture" id="a100"></div>
			<div class="bg">
				<h2>林海</h2>
				<p class="p_font">美国德州大学-奥斯汀工商管理硕士MBA、生物学博士</p>
			</div>
		</div>
		<div class="team_all" id="team_6">
			<div class="picture" id="a101"></div>
			<div class="bg">
				<h2>赵宇</h2>
				<p class="p_font">美国德州大学-奥斯汀工商管理硕士MBA、生物学博士</p>
			</div>
		</div>
		<div class="team_all" id="team_7">
			<div class="picture" id="a110"></div>
			<div class="bg">
				<h2>韩嘉欣</h2>
				<p class="p_font">美国德州大学-奥斯汀工商管理硕士MBA、生物学博士</p>
			</div>
		</div>
	</div>
	</div>
		<div id="footer">
        <div class="clearfix">
            <div class="fl">
                <img src="images/timg.jpg">
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
<script type="text/javascript" src="/My-Fund/js/jquery.min.js"></script>
<script src="/My-Fund/js/team.js" type="text/javascript"></script>
<script type="text/javascript" src="/My-Fund/js/bg.js"></script>
</html>