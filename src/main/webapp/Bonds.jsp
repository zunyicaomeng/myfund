<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>债卷</title>
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
          <p><h3>&nbsp;基金全称&nbsp;&nbsp;鑫元兴利债券型证券投资基金&nbsp;基金代码&nbsp;002265&nbsp;<br>
                 &nbsp;基金简称&nbsp;	鑫元兴利&nbsp;&nbsp;	成立日期&nbsp;	2016-01-13&nbsp;<br>
                 &nbsp;基金类型&nbsp;&nbsp;	债券型&nbsp;&nbsp;	基金经理&nbsp;	熊彪经理&nbsp;<br>
                 &nbsp;投资目标&nbsp;	本基金将宏观分析和信用分析相结合，积极配置优质债券，并合理安排组合期限，在保证资产安全性的基础上力争获取稳定的超额收益。&nbsp;<br>
                 &nbsp;投资范围&nbsp;	本基金的投资范围为具有良好流动性的固定收益类金融工具，包括国内依法发行上市的国债、金融债、央行票据、企业债、公司债、中期票据、地方政府债、次级债、中小企业私募债、证券公司短期债、可分离交易可转债的纯债部分、短期融资券、资产支持证券、债券回购、同业存款、通知存款、银行存款等固定收益类金融工具以及法律法规或中国证监会允许基金投资的其他固定收益类金融工具(但须符合中国证监会相关规定)。如法律法规或监管机构以后允许基金投资的其他品种，基金管理人在履行适当程序后，可以将其纳入投资范围。&nbsp;<br>
                 &nbsp;投资基准&nbsp;	中证全债指数收益率。&nbsp;<br>
                 &nbsp;投资策略&nbsp;	本基金为债券型基金，对债券的投资比例不低于基金资产的80%。在此约束下，本基金通过对宏观经济趋势、金融货币政策、供求因素、估值因素、市场行为因素等进行评估分析，对固定收益类资产和货币资产等的预期收益进行动态跟踪，从而决定其配置比例。&nbsp;<br>
                 &nbsp;定期定额&nbsp;	暂未开通</h3></p>
                 &nbsp;<br>
                 &nbsp;<br>

                 <h3><p>&nbsp;基金全称&nbsp;鑫元双债增强债券型证券投资基金A&nbsp;基金代码&nbsp;002632&nbsp;<br>
                 &nbsp;基金简称&nbsp;	鑫元双债A&nbsp;	成立日期&nbsp;	2016-04-21&nbsp;<br>
                 &nbsp;基金类型&nbsp;	债券型&nbsp;	基金经理&nbsp;	郑杨经理&nbsp;<br>
                 &nbsp;投资目标	&nbsp;本基金以信用债和可转债为主要投资对象，在适度承担信用风险并保证资产流动性的条件下，通过积极主动的投资管理，力争取得超越基金业绩比较基准的收益，实现基金资产长期、稳定的增长。&nbsp;<br>
                 &nbsp;投资范围	&nbsp;本基金的投资范围为具有良好流动性的金融工具，包括国内依法发行上市的固定收益类金融工具（包括国内依法发行和上市交易的国债、金融债、企业债、公司债、证券公司发行的短期公司债、地方政府债、次级债、中小企业私募债、可转换债券含分离交易可转债、央行票据、中期票据、短期融资券、资产支持证券、债券回购、协议存款、通知存款、银行存款等）和股票（包括中小板、创业板及其他经中国证监会核准上市的股票）、权证等权益类金融工具以及法律法规或中国证监会允许基金投资的其他金融工具（但须符合中国证监会相关规定）。&nbsp;<br>
                 &nbsp;投资基准&nbsp;	中债综合全价指数收益率×80%+沪深300指数收益率×20%&nbsp;<br>
                 &nbsp;投资策略&nbsp;	本基金为债券型基金，对债券的投资比例不低于基金资产的80%。在严格把控投资风险的基础上，适度参与权益类资产的投资从而提高投资收益。本基金紧密跟踪债券市场与股票市场的运行情况和风险收益特征，结合对宏观经济环境、国家政策趋向及利率变化趋势等重点分析，判断债券市场和股票市场的相对投资价值，在债券资产与股票资产之间进行动态调整。&nbsp;<br>
                 &nbsp;定期定额	&nbsp;暂未开通&nbsp;<br></p></h3>

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
</div>
</body>
<script type="text/javascript" src="/My-Fund/js/jquery.min.js"></script>
<script src="/My-Fund/js/team.js" type="text/javascript"></script>
<script type="text/javascript" src="/My-Fund/js/bg.js"></script>
</html>