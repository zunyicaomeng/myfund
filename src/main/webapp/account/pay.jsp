<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pay</title>
<script src="/My-Fund/js/jquery.min.js"></script>
<script src="/My-Fund/js/account-team.js" type="text/javascript"></script>
<script type="text/javascript" src="/My-Fund/js/bg.js"></script>
<script type="text/javascript" src="/My-Fund/js/pay.js"></script>
<link type="text/css" href="/My-Fund/css/bg.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/My-Fund/css/home.css">
<link type="text/css" href="/My-Fund/css/top.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/My-Fund/css/pay.css">
<style type="text/css">
input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none !important;
}
</style>
</head>
<body>
	<div id="background">
		<canvas id="Mycanvas"></canvas>
	</div>
	<div id="content">
		<div id="menu_top">
			<a href="javascript:void(0)" class="menu_top_s">&nbsp;欢迎&nbsp;</a> <a
				href="javascript:void(0)" class="menu_top_s">&nbsp;<s:property value="#session.loginName" />&nbsp;</a>
		</div>
		<div id="menu_head">
			<div id="head_1">
				<div id="imgs"></div>
				<h2>我的基金旗下网贷</h2>
			</div>
			<div id="head_2">
				<div style="position: relative;">
					<ul class="navs">
						<li id="menuEntryHome" class="dropdown"><a
							href="/My-Fund/index.jsp" class="dropdown-toggle"
							data-toggle="dropdown" role="button">首页 </a></li>
					</ul>
				</div>
				<div style="position: relative;">
					<ul class="nav" id="nav_x1">
						<li id="menuEntryHome" class="dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button">我要出借
								<span class="caret"> <img
									src="https://www.teamviewer.com/resources/images/icons/arrow-down.svg"
									class="imgMenuCaretDown" alt="" title=""> <img
									src="https://www.teamviewer.com/resources/images/icons/arrow-up-blue.svg"
									class="imgMenuCaretUp" alt="" title="">
							</span>
						</a>
							<ul class="dropdown_menu" role="menu">
								<li><a href="javascript:void(0)">优选出借计划</a></li>
								<li><a href="javascript:void(0)">精选标</a></li>
								<li><a href="javascript:void(0)">债券转让</a></li>
							</ul></li>
					</ul>
				</div>
				<div style="position: relative;">
					<ul class="nav" id="nav_x2">
						<li id="menuEntryHome" class="dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button">我要借款
								<span class="caret"> <img
									src="https://www.teamviewer.com/resources/images/icons/arrow-down.svg"
									class="imgMenuCaretDown" alt="" title=""> <img
									src="https://www.teamviewer.com/resources/images/icons/arrow-up-blue.svg"
									class="imgMenuCaretUp" alt="" title="">
							</span>
						</a>
							<ul class="dropdown_menu" role="menu">
								<li><a href="#">基金招财</a></li>
								<li><a href="#">蜡笔分期</a></li>
							</ul></li>
					</ul>
				</div>
				<div style="position: relative;">
					<ul class="nav" id="nav_x3">
						<li id="menuEntryHome" class="dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button">信息披露
								<span class="caret"> <img
									src="https://www.teamviewer.com/resources/images/icons/arrow-down.svg"
									class="imgMenuCaretDown" alt="" title=""> <img
									src="https://www.teamviewer.com/resources/images/icons/arrow-up-blue.svg"
									class="imgMenuCaretUp" alt="" title="">
							</span>
						</a>
							<ul class="dropdown_menu" role="menu">
								<li><a href="#">网贷知识</a></li>
								<li><a href="#">出借人提示</a></li>
								<li><a href="#">借款人提示</a></li>
							</ul></li>
					</ul>
				</div>
				<div style="position: relative;">
					<ul class="nav" id="nav_x4">
						<li id="menuEntryHome" class="dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button">关于我们
								<span class="caret"> <img
									src="https://www.teamviewer.com/resources/images/icons/arrow-down.svg"
									class="imgMenuCaretDown" alt="" title=""> <img
									src="https://www.teamviewer.com/resources/images/icons/arrow-up-blue.svg"
									class="imgMenuCaretUp" alt="" title="">
							</span>
						</a>
							<ul class="dropdown_menu" role="menu">
								<li><a href="#" id="survey">集团介绍</a></li>
								<li><a href="#" id="about">核心团队</a></li>
								<li><a href="#" id="partner">合作伙伴</a></li>
								<li><a href="#" id="contactUs">联系我们</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="pay_part">
			<div id="part_p">
				<p class="case">
					充值金额：<input type="number" name=""
						style="width: 250px; height: 35px; border-radius: 5px; padding: 0 0 0 5px;"
						placeholder="请输入充值金额：">
				</p>
				<p class="case">
					交易密码：<input type="password" name=""
						style="width: 250px; height: 35px; border-radius: 5px; padding: 0 0 0 5px;"
						placeholder="请输入交易密码：">
				</p>
				<p class="case">快捷支付</p>
				<p id="case_p"></p>
				<div id="part_t">
					<p class="case">
						<img src="/My-Fund/images/E-bank.jpg" id="E-bank">
					</p>
					<h2 id="part_h2">网银支付</h2>
				</div>
				<div id="part_a">
					<div class="part_border">
						<div id="part_a_1" class="part_all"></div>
					</div>
					<div class="part_border">
						<div id="part_a_2" class="part_all"></div>
					</div>
					<div class="part_border">
						<div id="part_a_3" class="part_all"></div>
					</div>
					<div class="part_border">
						<div id="part_a_4" class="part_all"></div>
					</div>
					<div class="part_border">
						<div id="part_a_5" class="part_all"></div>
					</div>
				</div>
				<div id="part_r">
					<button class="button">确定提交</button>
					<button class="button" id="return">返回</button>
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
							<dd>
								<a href="">注册登录</a>
							</dd>
							<dd>
								<a href="">出借服务</a>
							</dd>
							<dd>
								<a href="">安全保障</a>
							</dd>
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
							<dd>
								<a target="_blank" href="http://www.nifa.org.cn/nifa/index.html">中国互联网金融协会</a>
							</dd>
							<dd>
								<a target="_blank" href="http://www.pbc.gov.cn/">中国人民银行官网</a>
							</dd>
							<dd>
								<a target="_blank" href="http://www.cbrc.gov.cn/index.html">中国银监会官网</a>
							</dd>
						</dl>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>

</html>