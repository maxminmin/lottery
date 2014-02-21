<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<LINK href="${pageContext.request.contextPath }/css/main1.css"
	type="text/css" rel="stylesheet" />
<LINK href="${pageContext.request.contextPath }/css/reset.css"
	type="text/css" rel="stylesheet" />
<LINK href="${pageContext.request.contextPath }/css/a.tbcdn.cn.css"
	type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/a.tbcdn.cn.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/g.tbcdn.cn.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/index.js"></script>
<title></title>
</head>
<body>
	<div align="left">
		<a href="${pageContext.request.contextPath }/list.jsp" target="_blank">统计主页</a> <br />
		<br />
		<div align="left">
			<b>查看当前组号与库存的配匹度</b>
		</div>
		<form action="${pageContext.request.contextPath }/combinationServlet"
			method="post" name="orderForm">
			<table class="list" cellspacing="0" cellpadding="0" border="0"
				align="left">
				<tr>
					<td>第一</td>
					<td><input type="text" name="num" /></td>
				</tr>
				<tr>
					<td>第二</td>
					<td><input type="text" name="num" /></td>
				</tr>
				<tr>
					<td>第三</td>
					<td><input type="text" name="num" /></td>
				</tr>
				<tr>
					<td>第四</td>
					<td><input type="text" name="num" /></td>
				</tr>
				<tr>
					<td>第五</td>
					<td><input type="text" name="num" /></td>
				</tr>
				<tr>
					<td>第六</td>
					<td><input type="text" name="num" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="提交" /></td>
				</tr>
			</table>
			<br /> <br />
		</form>
		<br /> <br /> <br />
		<table class="list" cellspacing="0" cellpadding="0" border="0"
			align="left">
			<c:forEach items="${map }" var="temp">
				<tr>
					<td colspan="2">(与往期有相同${temp.key }个共${fn:length(temp.value)
						}组)</td>
				</tr>
				<c:forEach items="${temp.value }" var="temps">
					<tr>
						<td>${temps.num}</td>
						<td>${temps.idNo}</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
<br /> <br /> <br /><br /> <br /> <br />
		<div id="ssq_pt" class="abacus mode4" loaded="1">
			<div id="yuidiv">
				<div class="playtip">玩法提示：至少选择6个红球，1个蓝球进行投注</div>
				<div class="hd clearfix">
					<div class="main-tip">
						红球区<span>（至少选择6个红球）</span>
					</div>
					<div class="extra-tip">
						蓝球区<span>（至少选择1个蓝球）</span>
					</div>
				</div>
				<div class="bd" id="yui_3_3_0_1_1378347015641391">
					<!--
								- 由于一个row里面有两个ball-list,因此将rel属性置于ball-list内
							-->
					<div class="row" id="yui_3_3_0_1_1378347015641390">
						<div class="indicate">
							<span class="bit">选择号码</span><span
								rel="[当前遗漏] 指该号码自上次开出之后没有出现的次数" class="omit">当前遗漏</span>
						</div>
						<!--
									- rel属性是该行的序号，从0开始
								-->
						<ul rel="0" class="ball-list" id="yui_data">
							<li><span class="ball">01</span><em>&nbsp;</em></li>
							<li><span class="ball">02</span><em>&nbsp;</em></li>
							<li><span class="ball">03</span><em>&nbsp;</em></li>
							<li><span class="ball">04</span><em>&nbsp;</em></li>
							<li><span class="ball">05</span><em>&nbsp;</em></li>
							<li><span class="ball">06</span><em>&nbsp;</em></li>
							<li><span class="ball">07</span><em>&nbsp;</em></li>
							<li><span class="ball">08</span><em>&nbsp;</em></li>
							<li><span class="ball">09</span><em>&nbsp;</em></li>
							<li><span class="ball">10</span><em>&nbsp;</em></li>
							<li><span class="ball">11</span><em>&nbsp;</em></li>
							<li><span class="ball">12</span><em>&nbsp;</em></li>
							<li><span class="ball">13</span><em>&nbsp;</em></li>
							<li><span class="ball">14</span><em>&nbsp;</em></li>
							<li><span class="ball">15</span><em>&nbsp;</em></li>
							<li><span class="ball">16</span><em>&nbsp;</em></li>
							<li><span class="ball">17</span><em>&nbsp;</em></li>
							<li><span class="ball">18</span><em>&nbsp;</em></li>
							<li><span class="ball">19</span><em>&nbsp;</em></li>
							<li><span class="ball">20</span><em>&nbsp;</em></li>
							<li><span class="ball">21</span><em>&nbsp;</em></li>
							<li><span class="ball">22</span><em>&nbsp;</em></li>
							<li><span class="ball">23</span><em>&nbsp;</em></li>
							<li><span class="ball">24</span><em>&nbsp;</em></li>
							<li><span class="ball">25</span><em>&nbsp;</em></li>
							<li><span class="ball">26</span><em>&nbsp;</em></li>
							<li class="ball"><span class="ball">27</span><em>&nbsp;</em></li>
							<li><span class="ball">28</span><em>&nbsp;</em></li>
							<li><span class="ball">29</span><em>&nbsp;</em></li>
							<li><span class="ball">30</span><em>&nbsp;</em></li>
							<li><span class="ball">31</span><em>&nbsp;</em></li>
							<li><span class="ball">32</span><em>&nbsp;</em></li>
							<li><span class="ball">33</span><em>&nbsp;</em></li>
						</ul>
						<ul rel="1" class="ball-list extra"
							id="yui-blue">
							<li><span class="ball">01</span><em>&nbsp;</em></li>
							<li><span class="ball">02</span><em>&nbsp;</em></li>
							<li><span class="ball">03</span><em>&nbsp;</em></li>
							<li><span class="ball">04</span><em>&nbsp;</em></li>
							<li><span class="ball">05</span><em>&nbsp;</em></li>
							<li><span class="ball">06</span><em>&nbsp;</em></li>
							<li><span class="ball">07</span><em>&nbsp;</em></li>
							<li><span class="ball">08</span><em>&nbsp;</em></li>
							<li><span class="ball">09</span><em>&nbsp;</em></li>
							<li><span class="ball">10</span><em>&nbsp;</em></li>
							<li><span class="ball">11</span><em>&nbsp;</em></li>
							<li><span class="ball">12</span><em>&nbsp;</em></li>
							<li><span class="ball">13</span><em>&nbsp;</em></li>
							<li><span class="ball">14</span><em>&nbsp;</em></li>
							<li><span class="ball">15</span><em>&nbsp;</em></li>
							<li><span class="ball">16</span><em>&nbsp;</em></li>
						</ul>
					</div>
				</div>
				<div class="bd ball-toolbar">
					<div rel="1" class="row">
						<div class="indicate">
							<span class="bit">复式机选</span>
						</div>
						<div rel="0" class="ball-random">
							<select>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
							</select>
							<button class="red h-random" type="button">机选红球</button>
						</div>
						<div rel="1" class="ball-random extra">
							<select>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
							</select>
							<button class="blue h-random" type="button">机选蓝球</button>
						</div>
					</div>
				</div>
				<div class="ft">
					<p class="indicator">
						您当前选中了 <em class="betnum">0</em> 注 ，共 <em class="money">￥0</em> 元
					</p>
					<p class="add-abacus">
						<button onclick="getData();">添加到投注列表</button>
						<span class="clear-all">清除当前选号</span>
					</p>
				</div>

			</div>
			<xmp class="lazyload" style="display: none;" lazyloaded="1">
			&lt;div class="playtip"&gt;玩法提示：至少选择6个红球，1个蓝球进行投注&lt;/div&gt; &lt;div
			class="hd clearfix"&gt; &lt;div
			class="main-tip"&gt;红球区&lt;span&gt;（至少选择6个红球）&lt;/span&gt;&lt;/div&gt;
			&lt;div
			class="extra-tip"&gt;蓝球区&lt;span&gt;（至少选择1个蓝球）&lt;/span&gt;&lt;/div&gt;
			&lt;/div&gt; &lt;div class="bd"&gt; &lt;!-- -
			由于一个row里面有两个ball-list,因此将rel属性置于ball-list内 --&gt; &lt;div
			class="row"&gt; &lt;div class="indicate"&gt;&lt;span
			class="bit"&gt;选择号码&lt;/span&gt;&lt;span class="omit" rel="[当前遗漏]
			指该号码自上次开出之后没有出现的次数"&gt;当前遗漏&lt;/span&gt;&lt;/div&gt; &lt;!-- -
			rel属性是该行的序号，从0开始 --&gt; &lt;ul class="ball-list" rel="0"&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;01&lt;/span&gt;&lt;em&gt;7&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;02&lt;/span&gt;&lt;em&gt;0&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;03&lt;/span&gt;&lt;em&gt;25&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;04&lt;/span&gt;&lt;em&gt;0&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;05&lt;/span&gt;&lt;em&gt;1&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;06&lt;/span&gt;&lt;em&gt;1&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;07&lt;/span&gt;&lt;em&gt;2&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;08&lt;/span&gt;&lt;em&gt;1&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;09&lt;/span&gt;&lt;em&gt;0&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;10&lt;/span&gt;&lt;em&gt;22&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;11&lt;/span&gt;&lt;em&gt;3&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;12&lt;/span&gt;&lt;em&gt;14&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;13&lt;/span&gt;&lt;em&gt;0&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;14&lt;/span&gt;&lt;em&gt;3&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;15&lt;/span&gt;&lt;em&gt;5&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;16&lt;/span&gt;&lt;em&gt;1&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;17&lt;/span&gt;&lt;em&gt;6&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;18&lt;/span&gt;&lt;em&gt;0&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;19&lt;/span&gt;&lt;em&gt;5&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;20&lt;/span&gt;&lt;em&gt;0&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;21&lt;/span&gt;&lt;em&gt;4&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;22&lt;/span&gt;&lt;em&gt;6&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;23&lt;/span&gt;&lt;em&gt;2&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;24&lt;/span&gt;&lt;em&gt;12&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;25&lt;/span&gt;&lt;em&gt;6&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;26&lt;/span&gt;&lt;em&gt;4&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;27&lt;/span&gt;&lt;em&gt;2&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;28&lt;/span&gt;&lt;em&gt;7&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;29&lt;/span&gt;&lt;em&gt;7&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;30&lt;/span&gt;&lt;em&gt;7&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;31&lt;/span&gt;&lt;em&gt;4&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;32&lt;/span&gt;&lt;em&gt;2&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;33&lt;/span&gt;&lt;em&gt;28&lt;/em&gt;&lt;/li&gt;
			&lt;/ul&gt; &lt;ul class="ball-list extra" rel="1"&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;01&lt;/span&gt;&lt;em&gt;2&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;02&lt;/span&gt;&lt;em&gt;38&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;03&lt;/span&gt;&lt;em&gt;1&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;04&lt;/span&gt;&lt;em&gt;55&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;05&lt;/span&gt;&lt;em&gt;16&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;06&lt;/span&gt;&lt;em&gt;11&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;07&lt;/span&gt;&lt;em&gt;0&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;08&lt;/span&gt;&lt;em&gt;13&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;09&lt;/span&gt;&lt;em&gt;20&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;10&lt;/span&gt;&lt;em&gt;8&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;11&lt;/span&gt;&lt;em&gt;3&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;12&lt;/span&gt;&lt;em&gt;39&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;13&lt;/span&gt;&lt;em&gt;14&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;14&lt;/span&gt;&lt;em&gt;5&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;15&lt;/span&gt;&lt;em&gt;7&lt;/em&gt;&lt;/li&gt;
			&lt;li&gt;&lt;span
			class="ball"&gt;16&lt;/span&gt;&lt;em&gt;18&lt;/em&gt;&lt;/li&gt;
			&lt;/ul&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class="bd
			ball-toolbar"&gt; &lt;div class="row" rel="1"&gt; &lt;div
			class="indicate"&gt;&lt;span
			class="bit"&gt;复式机选&lt;/span&gt;&lt;/div&gt; &lt;div
			class="ball-random" rel="0"&gt; &lt;select&gt; &lt;option
			value="6"&gt;6&lt;/option&gt; &lt;option
			value="7"&gt;7&lt;/option&gt; &lt;option
			value="8"&gt;8&lt;/option&gt; &lt;option
			value="9"&gt;9&lt;/option&gt; &lt;option
			value="10"&gt;10&lt;/option&gt; &lt;option
			value="11"&gt;11&lt;/option&gt; &lt;option
			value="12"&gt;12&lt;/option&gt; &lt;option
			value="13"&gt;13&lt;/option&gt; &lt;option
			value="14"&gt;14&lt;/option&gt; &lt;option
			value="15"&gt;15&lt;/option&gt; &lt;option
			value="16"&gt;16&lt;/option&gt; &lt;/select&gt; &lt;button
			type="button" class="red h-random"&gt;机选红球&lt;/button&gt;
			&lt;/div&gt; &lt;div class="ball-random extra" rel="1"&gt;
			&lt;select&gt; &lt;option value="1"&gt;1&lt;/option&gt; &lt;option
			value="2"&gt;2&lt;/option&gt; &lt;option
			value="3"&gt;3&lt;/option&gt; &lt;option
			value="4"&gt;4&lt;/option&gt; &lt;option
			value="5"&gt;5&lt;/option&gt; &lt;option
			value="6"&gt;6&lt;/option&gt; &lt;option
			value="7"&gt;7&lt;/option&gt; &lt;option
			value="8"&gt;8&lt;/option&gt; &lt;option
			value="9"&gt;9&lt;/option&gt; &lt;option
			value="10"&gt;10&lt;/option&gt; &lt;option
			value="11"&gt;11&lt;/option&gt; &lt;option
			value="12"&gt;12&lt;/option&gt; &lt;option
			value="13"&gt;13&lt;/option&gt; &lt;option
			value="14"&gt;14&lt;/option&gt; &lt;option
			value="15"&gt;15&lt;/option&gt; &lt;option
			value="16"&gt;16&lt;/option&gt; &lt;/select&gt; &lt;button
			type="button" class="blue h-random"&gt;机选蓝球&lt;/button&gt;
			&lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div class="ft"&gt; &lt;p
			class="indicator"&gt;您当前选中了 &lt;em class="betnum"&gt;0&lt;/em&gt; 注
			，共 &lt;em class="money"&gt;￥0&lt;/em&gt; 元&lt;/p&gt; &lt;p
			class="add-abacus"&gt;&lt;button&gt;添加到投注列表&lt;/button&gt;&lt;span
			class="clear-all"&gt;清除当前选号&lt;/span&gt;&lt;/p&gt; &lt;/div&gt;
			&lt;script&gt; CP.use('ssq-pt',function(Y){
			C.Event.fire('abacus-load', { key: 'ssq_pt' }); }); &lt;/script&gt; </xmp>
		</div>
		<div id="J-mojo-basket" class="ft">
			<!--
					投注篮模板，可公用
				-->
			<!--投注篮{{-->
			<div class="bet-basket clearfix">
				<select class="select-list" id="J-select-list" multiple="multiple"></select>
				<ul class="operate-list">
					<li class="random-one"><a href="#">机选一注</a></li>
					<li class="random-five"><a href="#">机选五注</a></li>
					<li class="modify-one"><a href="#">修改单注</a></li>
					<li class="delete-one"><a href="#">删除所选</a></li>
					<li class="clear-list"><a href="#" onclick="clearSel();">清空列表</a></li>
				</ul>
			</div>
			<div class="bet-toolbar">
				<input type="button" class="add-abacus" value="比较结果" onclick="submitData();"/>
			</div>
			<div class="bet-extra"></div>
		</div>
		<div id="showData"></div>
	</div>
	<input type="hidden" id="contextPath" value="${pageContext.request.contextPath }"/>
</body>
</html>