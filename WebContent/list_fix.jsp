<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<LINK href="${pageContext.request.contextPath }/css/main1.css" type="text/css" rel="stylesheet"/>
<title>双色球</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/fixValueServlet" method="post">
		<label>查看最近记录条数：</label>
		<select id="count" name="count">
			<option value="16" <c:if test="${count==16}">selected</c:if> >16</option>
			<option value="30" <c:if test="${count==30}">selected</c:if> >30</option>
			<option value="50" <c:if test="${count==50}">selected</c:if> >50</option>
			<option value="100" <c:if test="${count==100}">selected</c:if> >100</option>
			<option value="100000">全部</option>
		</select>
		<input type="submit" value="查询">&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="${pageContext.request.contextPath }/continuousServlet" style="margin-left: 40px;" target="_blank">连号统计</a>
		<a href="${pageContext.request.contextPath }/firstLastServlet" style="margin-left: 40px;"  target="_blank">龙头凤尾统计</a>
		<a href="${pageContext.request.contextPath }/fllowRepulsion" style="margin-left: 40px;"  target="_blank">跟随相斥统计</a>
		<a href="${pageContext.request.contextPath }/blueServlet" style="margin-left: 40px;" target="_blank">蓝球统计</a>
		<a href="${pageContext.request.contextPath }/redServlet" style="margin-left: 40px;" target="_blank">红球统计</a>
		<br/>
		<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
			<tr style="width: 10px;">
				<td colspan="25" align="center" style="color: red"><b>恒值表</b></td>
			</tr>
			<tr style="width: 10px;">
				<td align="center" rowspan="2"><b>期数</b></td>
				<td colspan="6" align="center" rowspan="2"><b>中奖号码</b></td>
				<td align="center"><b>01</b></td>
				<td align="center"><b>02</b></td>
				<td align="center"><b>03</b></td>
				<td align="center"><b>04</b></td>
				<td align="center"><b>05</b></td>
				<td align="center"><b>06</b></td>
				<td align="center"><b>07</b></td>
				<td align="center"><b>08</b></td>
				<td align="center"><b>09</b></td>
				<td align="center"><b>10</b></td>
				<td align="center"><b>11</b></td>
				<td align="center"><b>12</b></td>
				<td align="center"><b>13</b></td>
				<td align="center"><b>14</b></td>
				<td align="center"><b>15</b></td>
				<td align="center"><b>16</b></td>
				<td align="center"><b>17</b></td>
				
			</tr>
			<tr>
			<td align="center"><b>18</b></td>
			<td align="center"><b>19</b></td>
			<td align="center"><b>20</b></td>
			<td align="center"><b>21</b></td>
			<td align="center"><b>22</b></td>
			<td align="center"><b>23</b></td>
			<td align="center"><b>24</b></td>
			<td align="center"><b>25</b></td>
			<td align="center"><b>26</b></td>
			<td align="center"><b>27</b></td>
			<td align="center"><b>28</b></td>
			<td align="center"><b>29</b></td>
			<td align="center"><b>30</b></td>
			<td align="center"><b>31</b></td>
			<td align="center"><b>32</b></td>
			<td align="center"><b>33</b></td>
			<td align="center"><b>&nbsp;</b></td>
			</tr>
			<c:set value="0" var="count1"></c:set>
			<c:set value="0" var="count2"></c:set>
			<c:set value="0" var="count3"></c:set>
			<c:set value="0" var="count4"></c:set>
			<c:set value="0" var="count5"></c:set>
			<c:set value="0" var="count6"></c:set>
			<c:set value="0" var="count7"></c:set>
			<c:set value="0" var="count8"></c:set>
			<c:set value="0" var="count9"></c:set>
			<c:set value="0" var="count10"></c:set>
			<c:set value="0" var="count11"></c:set>
			<c:set value="0" var="count12"></c:set>
			<c:set value="0" var="count13"></c:set>
			<c:set value="0" var="count14"></c:set>
			<c:set value="0" var="count15"></c:set>
			<c:set value="0" var="count16"></c:set>
			<c:set value="0" var="count17"></c:set>
			<c:forEach items="${data }" var="temp" varStatus="idx">
			<c:set value="0" var="fix1"></c:set>
			<c:set value="0" var="fix2"></c:set>
			<c:set value="0" var="fix3"></c:set>
			<c:set value="0" var="fix4"></c:set>
			<c:set value="0" var="fix5"></c:set>
			<c:set value="0" var="fix6"></c:set>
			<c:set value="0" var="fix7"></c:set>
			<c:set value="0" var="fix8"></c:set>
			<c:set value="0" var="fix9"></c:set>
			<c:set value="0" var="fix10"></c:set>
			<c:set value="0" var="fix11"></c:set>
			<c:set value="0" var="fix12"></c:set>
			<c:set value="0" var="fix13"></c:set>
			<c:set value="0" var="fix14"></c:set>
			<c:set value="0" var="fix15"></c:set>
			<c:set value="0" var="fix16"></c:set>
			<c:set value="0" var="fix17"></c:set>
				<tr>
					<td>${temp.idNo }</td>
					<td style="color: red">${temp.first }</td>
					<td style="color: red">${temp.second }</td>
					<td style="color: red">${temp.three }</td>
					<td style="color: red">${temp.four }</td>
					<td style="color: red">${temp.five }</td>
					<td style="color: red">${temp.six }</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '01')|| fn:contains(temp.num, '18')}">
							<c:set value="1" var="fix1"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '01')&& fn:contains(temp.num, '18')}">
							<c:set value="2" var="fix1"></c:set>
						</c:if>
						<c:if test="${fix1>0 }">
							${fix1 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '02')|| fn:contains(temp.num, '19')}">
							<c:set value="1" var="fix2"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '02')&& fn:contains(temp.num, '19')}">
							<c:set value="2" var="fix2"></c:set>
						</c:if>
						<c:if test="${ fix2>0}">
							${fix2 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '03')|| fn:contains(temp.num, '20')}">
							<c:set value="1" var="fix3"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '03')&& fn:contains(temp.num, '20')}">
							<c:set value="2" var="fix3"></c:set>
						</c:if>
						<c:if test="${ fix3>0}">
							${fix3 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '04')|| fn:contains(temp.num, '21')}">
							<c:set value="1" var="fix4"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '04')&& fn:contains(temp.num, '21')}">
							<c:set value="2" var="fix4"></c:set>
						</c:if>
						<c:if test="${ fix4>0}">
							${fix4 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '05')|| fn:contains(temp.num, '22')}">
							<c:set value="1" var="fix5"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '05')&& fn:contains(temp.num, '22')}">
							<c:set value="2" var="fix5"></c:set>
						</c:if>
						<c:if test="${ fix5>0}">
							${fix5 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '06')|| fn:contains(temp.num, '23')}">
							<c:set value="1" var="fix6"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '06')&& fn:contains(temp.num, '23')}">
							<c:set value="2" var="fix6"></c:set>
						</c:if>
						<c:if test="${fix6>0 }">
							${fix6 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '07')|| fn:contains(temp.num, '24')}">
							<c:set value="1" var="fix7"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '07')&& fn:contains(temp.num, '24')}">
							<c:set value="2" var="fix7"></c:set>
						</c:if>
						<c:if test="${fix7>0}">
							${fix7 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '08')|| fn:contains(temp.num, '25')}">
							<c:set value="1" var="fix8"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '08')&& fn:contains(temp.num, '25')}">
							<c:set value="2" var="fix8"></c:set>
						</c:if>
						<c:if test="${fix8>0}">
							${fix8 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '09')|| fn:contains(temp.num, '26')}">
							<c:set value="1" var="fix9"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '09')&& fn:contains(temp.num, '26')}">
							<c:set value="2" var="fix9"></c:set>
						</c:if>
						<c:if test="${fix9>0}">
							${fix9 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '10')|| fn:contains(temp.num, '27')}">
							<c:set value="1" var="fix10"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '10')&& fn:contains(temp.num, '27')}">
							<c:set value="2" var="fix10"></c:set>
						</c:if>
						<c:if test="${fix10>0}">
							${fix10 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '11')|| fn:contains(temp.num, '28')}">
							<c:set value="1" var="fix11"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '11')&& fn:contains(temp.num, '28')}">
							<c:set value="2" var="fix11"></c:set>
						</c:if>
						<c:if test="${fix11>0}">
							${fix11 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '12')|| fn:contains(temp.num, '29')}">
							<c:set value="1" var="fix12"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '12')&& fn:contains(temp.num, '29')}">
							<c:set value="2" var="fix12"></c:set>
						</c:if>
						<c:if test="${fix12>0}">
							${fix12 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '13')|| fn:contains(temp.num, '30')}">
							<c:set value="1" var="fix13"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '13')&& fn:contains(temp.num, '30')}">
							<c:set value="2" var="fix13"></c:set>
						</c:if>
						<c:if test="${fix13>0}">
							${fix13 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '14')|| fn:contains(temp.num, '31')}">
							<c:set value="1" var="fix14"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '14')&& fn:contains(temp.num, '31')}">
							<c:set value="2" var="fix14"></c:set>
						</c:if>
						<c:if test="${fix14>0}">
							${fix14 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '15')|| fn:contains(temp.num, '32')}">
							<c:set value="1" var="fix15"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '15')&& fn:contains(temp.num, '32')}">
							<c:set value="2" var="fix15"></c:set>
						</c:if>
						<c:if test="${fix15>0}">
							${fix15 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '16')|| fn:contains(temp.num, '33')}">
							<c:set value="1" var="fix16"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '16')&& fn:contains(temp.num, '33')}">
							<c:set value="2" var="fix16"></c:set>
						</c:if>
						<c:if test="${fix16>0}">
							${fix16 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '17')}">
							<c:set value="1" var="fix17"></c:set>
						</c:if>
						<c:if test="${fix17>0}">
							${fix17 }
						</c:if>
					</td>
				</tr>
				<c:set value="${count1+fix1 }" var="count1"></c:set>
				<c:set value="${count2+fix2 }" var="count2"></c:set>
				<c:set value="${count3+fix3 }" var="count3"></c:set>
				<c:set value="${count4+fix4 }" var="count4"></c:set>
				<c:set value="${count5+fix5 }" var="count5"></c:set>
				<c:set value="${count6+fix6 }" var="count6"></c:set>
				<c:set value="${count7+fix7 }" var="count7"></c:set>
				<c:set value="${count8+fix8 }" var="count8"></c:set>
				<c:set value="${count9+fix9 }" var="count9"></c:set>
				<c:set value="${count10+fix10 }" var="count10"></c:set>
				<c:set value="${count11+fix11 }" var="count11"></c:set>
				<c:set value="${count12+fix12 }" var="count12"></c:set>
				<c:set value="${count13+fix13 }" var="count13"></c:set>
				<c:set value="${count14+fix14 }" var="count14"></c:set>
				<c:set value="${count15+fix15 }" var="count15"></c:set>
				<c:set value="${count16+fix16 }" var="count16"></c:set>
				<c:set value="${count17+fix17 }" var="count17"></c:set>
				
			</c:forEach>
			<tr>
				<td colspan="7" style="color: green;" align="center"><b>统计</b></td>
				<td style="color: green;">${count1}</td>
				<td style="color: green;">${count2}</td>
				<td style="color: green;">${count3}</td>
				<td style="color: green;">${count4}</td>
				<td style="color: green;">${count5}</td>
				<td style="color: green;">${count6}</td>
				<td style="color: green;">${count7}</td>
				<td style="color: green;">${count8}</td>
				<td style="color: green;">${count9}</td>
				<td style="color: green;">${count10}</td>
				<td style="color: green;">${count11}</td>
				<td style="color: green;">${count12}</td>
				<td style="color: green;">${count13}</td>
				<td style="color: green;">${count14}</td>
				<td style="color: green;">${count15}</td>
				<td style="color: green;">${count16}</td>
				<td style="color: green;">${count17}</td>
			</tr>
		</table>
		&nbsp;
		
		
		
		
		
		
		<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
			<tr style="width: 10px;">
				<td colspan="25" align="center" style="color: red"><b>真恒值表</b></td>
			</tr>
			<tr style="width: 10px;">
				<td align="center" rowspan="2"><b>期数</b></td>
				<td colspan="6" align="center" rowspan="2"><b>中奖号码</b></td>
				<td align="center"><b>01</b></td>
				<td align="center"><b>02</b></td>
				<td align="center"><b>03</b></td>
				<td align="center"><b>04</b></td>
				<td align="center"><b>05</b></td>
				<td align="center"><b>06</b></td>
				<td align="center"><b>07</b></td>
				<td align="center"><b>08</b></td>
				<td align="center"><b>09</b></td>
				<td align="center"><b>10</b></td>
				<td align="center"><b>11</b></td>
				<td align="center"><b>12</b></td>
				<td align="center"><b>13</b></td>
				<td align="center"><b>14</b></td>
				<td align="center"><b>15</b></td>
				<td align="center"><b>16</b></td>
				<td align="center"><b>17</b></td>
				
			</tr>
			<tr>
			<td align="center"><b>33</b></td>
			<td align="center"><b>32</b></td>
			<td align="center"><b>31</b></td>
			<td align="center"><b>30</b></td>
			<td align="center"><b>29</b></td>
			<td align="center"><b>28</b></td>
			<td align="center"><b>27</b></td>
			<td align="center"><b>26</b></td>
			<td align="center"><b>25</b></td>
			<td align="center"><b>24</b></td>
			<td align="center"><b>23</b></td>
			<td align="center"><b>22</b></td>
			<td align="center"><b>21</b></td>
			<td align="center"><b>20</b></td>
			<td align="center"><b>19</b></td>
			<td align="center"><b>18</b></td>
			<td align="center"><b>&nbsp;</b></td>
			</tr>
			<c:set value="0" var="countTwo1"></c:set>
			<c:set value="0" var="countTwo2"></c:set>
			<c:set value="0" var="countTwo3"></c:set>
			<c:set value="0" var="countTwo4"></c:set>
			<c:set value="0" var="countTwo5"></c:set>
			<c:set value="0" var="countTwo6"></c:set>
			<c:set value="0" var="countTwo7"></c:set>
			<c:set value="0" var="countTwo8"></c:set>
			<c:set value="0" var="countTwo9"></c:set>
			<c:set value="0" var="countTwo10"></c:set>
			<c:set value="0" var="countTwo11"></c:set>
			<c:set value="0" var="countTwo12"></c:set>
			<c:set value="0" var="countTwo13"></c:set>
			<c:set value="0" var="countTwo14"></c:set>
			<c:set value="0" var="countTwo15"></c:set>
			<c:set value="0" var="countTwo16"></c:set>
			<c:set value="0" var="countTwo17"></c:set>
			<c:forEach items="${data }" var="temp" varStatus="idx">
			<c:set value="0" var="fixTwo1"></c:set>
			<c:set value="0" var="fixTwo2"></c:set>
			<c:set value="0" var="fixTwo3"></c:set>
			<c:set value="0" var="fixTwo4"></c:set>
			<c:set value="0" var="fixTwo5"></c:set>
			<c:set value="0" var="fixTwo6"></c:set>
			<c:set value="0" var="fixTwo7"></c:set>
			<c:set value="0" var="fixTwo8"></c:set>
			<c:set value="0" var="fixTwo9"></c:set>
			<c:set value="0" var="fixTwo10"></c:set>
			<c:set value="0" var="fixTwo11"></c:set>
			<c:set value="0" var="fixTwo12"></c:set>
			<c:set value="0" var="fixTwo13"></c:set>
			<c:set value="0" var="fixTwo14"></c:set>
			<c:set value="0" var="fixTwo15"></c:set>
			<c:set value="0" var="fixTwo16"></c:set>
			<c:set value="0" var="fixTwo17"></c:set>
				<tr>
					<td>${temp.idNo }</td>
					<td style="color: red">${temp.first }</td>
					<td style="color: red">${temp.second }</td>
					<td style="color: red">${temp.three }</td>
					<td style="color: red">${temp.four }</td>
					<td style="color: red">${temp.five }</td>
					<td style="color: red">${temp.six }</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '01')|| fn:contains(temp.num, '33')}">
							<c:set value="1" var="fixTwo1"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '01')&& fn:contains(temp.num, '33')}">
							<c:set value="2" var="fixTwo1"></c:set>
						</c:if>
						<c:if test="${fixTwo1>0 }">
							${fixTwo1 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '02')|| fn:contains(temp.num, '32')}">
							<c:set value="1" var="fixTwo2"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '02')&& fn:contains(temp.num, '32')}">
							<c:set value="2" var="fixTwo2"></c:set>
						</c:if>
						<c:if test="${ fixTwo2>0}">
							${fixTwo2 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '03')|| fn:contains(temp.num, '31')}">
							<c:set value="1" var="fixTwo3"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '03')&& fn:contains(temp.num, '31')}">
							<c:set value="2" var="fixTwo3"></c:set>
						</c:if>
						<c:if test="${ fixTwo3>0}">
							${fixTwo3 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '04')|| fn:contains(temp.num, '30')}">
							<c:set value="1" var="fixTwo4"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '04')&& fn:contains(temp.num, '30')}">
							<c:set value="2" var="fixTwo4"></c:set>
						</c:if>
						<c:if test="${ fixTwo4>0}">
							${fixTwo4 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '05')|| fn:contains(temp.num, '29')}">
							<c:set value="1" var="fixTwo5"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '05')&& fn:contains(temp.num, '29')}">
							<c:set value="2" var="fixTwo5"></c:set>
						</c:if>
						<c:if test="${ fixTwo5>0}">
							${fixTwo5 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '06')|| fn:contains(temp.num, '28')}">
							<c:set value="1" var="fixTwo6"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '06')&& fn:contains(temp.num, '28')}">
							<c:set value="2" var="fixTwo6"></c:set>
						</c:if>
						<c:if test="${fixTwo6>0 }">
							${fixTwo6 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '07')|| fn:contains(temp.num, '27')}">
							<c:set value="1" var="fixTwo7"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '07')&& fn:contains(temp.num, '27')}">
							<c:set value="2" var="fixTwo7"></c:set>
						</c:if>
						<c:if test="${fixTwo7>0}">
							${fixTwo7 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '08')|| fn:contains(temp.num, '26')}">
							<c:set value="1" var="fixTwo8"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '08')&& fn:contains(temp.num, '26')}">
							<c:set value="2" var="fixTwo8"></c:set>
						</c:if>
						<c:if test="${fixTwo8>0}">
							${fixTwo8 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '09')|| fn:contains(temp.num, '25')}">
							<c:set value="1" var="fixTwo9"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '09')&& fn:contains(temp.num, '25')}">
							<c:set value="2" var="fixTwo9"></c:set>
						</c:if>
						<c:if test="${fixTwo9>0}">
							${fixTwo9 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '10')|| fn:contains(temp.num, '24')}">
							<c:set value="1" var="fixTwo10"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '10')&& fn:contains(temp.num, '24')}">
							<c:set value="2" var="fixTwo10"></c:set>
						</c:if>
						<c:if test="${fixTwo10>0}">
							${fixTwo10 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '11')|| fn:contains(temp.num, '23')}">
							<c:set value="1" var="fixTwo11"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '11')&& fn:contains(temp.num, '23')}">
							<c:set value="2" var="fixTwo11"></c:set>
						</c:if>
						<c:if test="${fixTwo11>0}">
							${fixTwo11 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '12')|| fn:contains(temp.num, '22')}">
							<c:set value="1" var="fixTwo12"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '12')&& fn:contains(temp.num, '22')}">
							<c:set value="2" var="fixTwo12"></c:set>
						</c:if>
						<c:if test="${fixTwo12>0}">
							${fixTwo12 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '13')|| fn:contains(temp.num, '21')}">
							<c:set value="1" var="fixTwo13"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '13')&& fn:contains(temp.num, '21')}">
							<c:set value="2" var="fixTwo13"></c:set>
						</c:if>
						<c:if test="${fixTwo13>0}">
							${fixTwo13 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '14')|| fn:contains(temp.num, '20')}">
							<c:set value="1" var="fixTwo14"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '14')&& fn:contains(temp.num, '20')}">
							<c:set value="2" var="fixTwo14"></c:set>
						</c:if>
						<c:if test="${fixTwo14>0}">
							${fixTwo14 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '15')|| fn:contains(temp.num, '19')}">
							<c:set value="1" var="fixTwo15"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '15')&& fn:contains(temp.num, '19')}">
							<c:set value="2" var="fixTwo15"></c:set>
						</c:if>
						<c:if test="${fixTwo15>0}">
							${fixTwo15 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '16')|| fn:contains(temp.num, '18')}">
							<c:set value="1" var="fixTwo16"></c:set>
						</c:if>
						<c:if test="${fn:contains(temp.num, '16')&& fn:contains(temp.num, '18')}">
							<c:set value="2" var="fixTwo16"></c:set>
						</c:if>
						<c:if test="${fixTwo16>0}">
							${fixTwo16 }
						</c:if>
					</td>
					<td style="color: blue" align="center">
						<c:if test="${fn:contains(temp.num, '17')}">
							<c:set value="1" var="fixTwo17"></c:set>
						</c:if>
						<c:if test="${fixTwo17>0}">
							${fixTwo17 }
						</c:if>
					</td>
				</tr>
				<c:set value="${countTwo1+fixTwo1 }" var="countTwo1"></c:set>
				<c:set value="${countTwo2+fixTwo2 }" var="countTwo2"></c:set>
				<c:set value="${countTwo3+fixTwo3 }" var="countTwo3"></c:set>
				<c:set value="${countTwo4+fixTwo4 }" var="countTwo4"></c:set>
				<c:set value="${countTwo5+fixTwo5 }" var="countTwo5"></c:set>
				<c:set value="${countTwo6+fixTwo6 }" var="countTwo6"></c:set>
				<c:set value="${countTwo7+fixTwo7 }" var="countTwo7"></c:set>
				<c:set value="${countTwo8+fixTwo8 }" var="countTwo8"></c:set>
				<c:set value="${countTwo9+fixTwo9 }" var="countTwo9"></c:set>
				<c:set value="${countTwo10+fixTwo10 }" var="countTwo10"></c:set>
				<c:set value="${countTwo11+fixTwo11 }" var="countTwo11"></c:set>
				<c:set value="${countTwo12+fixTwo12 }" var="countTwo12"></c:set>
				<c:set value="${countTwo13+fixTwo13 }" var="countTwo13"></c:set>
				<c:set value="${countTwo14+fixTwo14 }" var="countTwo14"></c:set>
				<c:set value="${countTwo15+fixTwo15 }" var="countTwo15"></c:set>
				<c:set value="${countTwo16+fixTwo16 }" var="countTwo16"></c:set>
				<c:set value="${countTwo17+fixTwo17 }" var="countTwo17"></c:set>
				
			</c:forEach>
			<tr>
				<td colspan="7" style="color: green;" align="center"><b>统计</b></td>
				<td style="color: green;">${countTwo1}</td>
				<td style="color: green;">${countTwo2}</td>
				<td style="color: green;">${countTwo3}</td>
				<td style="color: green;">${countTwo4}</td>
				<td style="color: green;">${countTwo5}</td>
				<td style="color: green;">${countTwo6}</td>
				<td style="color: green;">${countTwo7}</td>
				<td style="color: green;">${countTwo8}</td>
				<td style="color: green;">${countTwo9}</td>
				<td style="color: green;">${countTwo10}</td>
				<td style="color: green;">${countTwo11}</td>
				<td style="color: green;">${countTwo12}</td>
				<td style="color: green;">${countTwo13}</td>
				<td style="color: green;">${countTwo14}</td>
				<td style="color: green;">${countTwo15}</td>
				<td style="color: green;">${countTwo16}</td>
				<td style="color: green;">${countTwo17}</td>
			</tr>
		</table>
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
		
		
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
		
		
		<br/>
	</form>
</body>
</html>