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
	<form action="${pageContext.request.contextPath }/elevenMethod" method="post">
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
		<a href="${pageContext.request.contextPath }/fixValueServlet?count=16" style="margin-left: 40px;" target="_blank">恒值表</a>
		<a href="${pageContext.request.contextPath }/skewnessServlet" style="margin-left: 40px;" target="_blank">偏态统计</a>
		<a href="${pageContext.request.contextPath }/list_fllow_blue.jsp" style="margin-left: 40px;" target="_blank">100期内蓝球跟随</a>
		<a href="${pageContext.request.contextPath }/BlueSpanServlet?counter=30" style="margin-left: 40px;" target="_blank">蓝球跨度</a>
		<br/>
		<a href="${pageContext.request.contextPath }/FourBlueYearServlet" target="_blank">蓝球4余表按年统计</a>
		<a href="${pageContext.request.contextPath }/tailServlet" style="margin-left: 40px;" target="_blank">11等分法同尾按年统计</a>
		<a href="${pageContext.request.contextPath }/allZoneServlet" style="margin-left: 40px;" target="_blank">走势图</a>
		<a href="${pageContext.request.contextPath }/list_next_amplitude.jsp" style="margin-left: 40px;" target="_blank">下期蓝球振幅</a>
		<a href="${pageContext.request.contextPath }/fiveAnalyzeServlet" style="margin-left: 40px;" target="_blank">五期分析法</a>
		<br/>
		<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
			<tr style="width: 10px;">
				<td colspan="78" align="center" style="color: red"><b>双色球表</b></td>
			</tr>
			<tr style="width: 10px;">
				<td rowspan="2" align="center"><b>期号</b></td>
				<td colspan="9" align="center"><b>红球</b></td>
				<td rowspan="2" align="center"><b>蓝<br/>球</b></td>
				<td colspan="10" align="center"><b>红10尾明细表</b></td>
				<td colspan="3" align="center"><b>红3余表</b></td>
				<td colspan="11" align="center"><b>红球11等分法</b></td>
				<td colspan="11" align="center"><b>红球11等分法三期计</b></td>
				<td colspan="4" align="center"><b>蓝4余表</b></td>
				<td colspan="7" align="center"><b>红球6等分法</b></td>
				<td colspan="6" align="center"><b>红球6等分法三期计</b></td>
				<td colspan="8" align="center"><b>红球遗漏明细</b></td>
				<td colspan="7" align="center"><b>出现次数</b></td>
				
			</tr>
			<tr>
				<td style="color: blue">01</td>
				<td style="color: blue">02</td>
				<td style="color: blue">03</td>
				<td style="color: blue">04</td>
				<td style="color: blue">05</td>
				<td style="color: blue">06</td>
				<td style="color: #8A4DB3">和值</td>
				<td style="color: #8A4DB3">升降</td>
				<td style="color: #8A4DB3">奇偶</td>
				<td style="color: green">01</td>
				<td style="color: green">02</td>
				<td style="color: green">03</td>
				<td style="color: green">04</td>
				<td style="color: green">05</td>
				<td style="color: green">06</td>
				<td style="color: green">07</td>
				<td style="color: green">08</td>
				<td style="color: green">09</td>
				<td style="color: green">00</td>
				<td style="color: #8A4DB3">01</td>
				<td style="color: #8A4DB3">02</td>
				<td style="color: #8A4DB3">00</td>
				
				<td style="color: green">01</td>
				<td style="color: green">02</td>
				<td style="color: green">03</td>
				<td style="color: green">04</td>
				<td style="color: green">05</td>
				<td style="color: green">06</td>
				<td style="color: green">07</td>
				<td style="color: green">08</td>
				<td style="color: green">09</td>
				<td style="color: green">00</td>
				<td style="color: green">11</td>
				
				<td style="color: green">01</td>
				<td style="color: green">02</td>
				<td style="color: green">03</td>
				<td style="color: green">04</td>
				<td style="color: green">05</td>
				<td style="color: green">06</td>
				<td style="color: green">07</td>
				<td style="color: green">08</td>
				<td style="color: green">09</td>
				<td style="color: green">00</td>
				<td style="color: green">11</td>
				
				<td style="color: #D0B8E1">01</td>
				<td style="color: #D0B8E1">02</td>
				<td style="color: #D0B8E1">03</td>
				<td style="color: #D0B8E1">00</td>
				
				<td style="color: green">一区</td>
				<td style="color: green">二区</td>
				<td style="color: green">三区</td>
				<td style="color: green">四区</td>
				<td style="color: green">五区</td>
				<td style="color: green">六区</td>
				<td style="color: green">三区区间比</td>
				<td style="color: green">一区</td>
				<td style="color: green">二区</td>
				<td style="color: green">三区</td>
				<td style="color: green">四区</td>
				<td style="color: green">五区</td>
				<td style="color: green">六区</td>
				<td style="color: green">01</td>
				<td style="color: green">02</td>
				<td style="color: green">03</td>
				<td style="color: green">04</td>
				<td style="color: green">05</td>
				<td style="color: green">06</td>
				<td style="color: green">和值</td>
				<td style="color: #8A4DB3">升降</td>
				<td style="color: green">红一</td>
				<td style="color: green">红二</td>
				<td style="color: green">红三</td>
				<td style="color: green">红四</td>
				<td style="color: green">红五</td>
				<td style="color: green">红六</td>
				<td style="color: green">蓝球</td>
			</tr>
			<c:set var="sumUpDownBefore" value="0"></c:set>
			<c:set var="sumLostBefore" value="0"></c:set>
			<!-- 6等分法三期计  -->
			<c:set var="sixThree1" value="0"></c:set>
			<c:set var="sixThree2" value="0"></c:set>
			<c:set var="sixThree3" value="0"></c:set>
			<c:set var="sixThree4" value="0"></c:set>
			<c:set var="sixThree5" value="0"></c:set>
			<c:set var="sixThree6" value="0"></c:set>
			<c:set var="sixThree11" value="0"></c:set>
			<c:set var="sixThree22" value="0"></c:set>
			<c:set var="sixThree33" value="0"></c:set>
			<c:set var="sixThree44" value="0"></c:set>
			<c:set var="sixThree55" value="0"></c:set>
			<c:set var="sixThree66" value="0"></c:set>
			<c:set var="sixThree111" value="0"></c:set>
			<c:set var="sixThree222" value="0"></c:set>
			<c:set var="sixThree333" value="0"></c:set>
			<c:set var="sixThree444" value="0"></c:set>
			<c:set var="sixThree555" value="0"></c:set>
			<c:set var="sixThree666" value="0"></c:set>
			<!-- 11等分法三期计  -->
			<c:set var="indexThree1" value="0"></c:set>
			<c:set var="indexThree2" value="0"></c:set>
			<c:set var="indexThree3" value="0"></c:set>
			<c:set var="indexThree4" value="0"></c:set>
			<c:set var="indexThree5" value="0"></c:set>
			<c:set var="indexThree6" value="0"></c:set>
			<c:set var="indexThree7" value="0"></c:set>
			<c:set var="indexThree8" value="0"></c:set>
			<c:set var="indexThree9" value="0"></c:set>
			<c:set var="indexThree0" value="0"></c:set>
			<c:set var="indexThree11" value="0"></c:set>
			
			<c:set var="indexThree1x" value="0"></c:set>
			<c:set var="indexThree2x" value="0"></c:set>
			<c:set var="indexThree3x" value="0"></c:set>
			<c:set var="indexThree4x" value="0"></c:set>
			<c:set var="indexThree5x" value="0"></c:set>
			<c:set var="indexThree6x" value="0"></c:set>
			<c:set var="indexThree7x" value="0"></c:set>
			<c:set var="indexThree8x" value="0"></c:set>
			<c:set var="indexThree9x" value="0"></c:set>
			<c:set var="indexThree0x" value="0"></c:set>
			<c:set var="indexThree11x" value="0"></c:set>
			
			<c:set var="indexThree1xx" value="0"></c:set>
			<c:set var="indexThree2xx" value="0"></c:set>
			<c:set var="indexThree3xx" value="0"></c:set>
			<c:set var="indexThree4xx" value="0"></c:set>
			<c:set var="indexThree5xx" value="0"></c:set>
			<c:set var="indexThree6xx" value="0"></c:set>
			<c:set var="indexThree7xx" value="0"></c:set>
			<c:set var="indexThree8xx" value="0"></c:set>
			<c:set var="indexThree9xx" value="0"></c:set>
			<c:set var="indexThree0xx" value="0"></c:set>
			<c:set var="indexThree11xx" value="0"></c:set>
			
			
			<c:forEach items="${data }" var="temp" varStatus="idx">
				<c:set var="sumUpDown" value="${temp.first+temp.second+temp.three+temp.four+temp.five+temp.six }"></c:set>
				<c:set var="idx1" value="0"></c:set>
					<c:set var="idx2" value="0"></c:set>
					<c:set var="idx3" value="0"></c:set>
					<c:set var="idx4" value="0"></c:set>
					<c:set var="idx5" value="0"></c:set>
					<c:set var="idx6" value="0"></c:set>
					<c:set var="idx7" value="0"></c:set>
					<c:set var="idx8" value="0"></c:set>
					<c:set var="idx9" value="0"></c:set>
					<c:set var="idx0" value="0"></c:set>
					<!-- 11等分法  -->
					<c:set var="index1" value="0"></c:set>
					<c:set var="index2" value="0"></c:set>
					<c:set var="index3" value="0"></c:set>
					<c:set var="index4" value="0"></c:set>
					<c:set var="index5" value="0"></c:set>
					<c:set var="index6" value="0"></c:set>
					<c:set var="index7" value="0"></c:set>
					<c:set var="index8" value="0"></c:set>
					<c:set var="index9" value="0"></c:set>
					<c:set var="index0" value="0"></c:set>
					<c:set var="index11" value="0"></c:set>
					
					<!-- 6等分法  -->
					<c:set var="six1" value="0"></c:set>
					<c:set var="six2" value="0"></c:set>
					<c:set var="six3" value="0"></c:set>
					<c:set var="six4" value="0"></c:set>
					<c:set var="six5" value="0"></c:set>
					<c:set var="six6" value="0"></c:set>
					
					
					 		
						
							
					<c:set var="three1" value="0"></c:set>
					<c:set var="three2" value="0"></c:set>
					<c:set var="three0" value="0"></c:set>
					<!-- 奇偶 -->
					<c:set var="two1" value="0"></c:set>
					<c:set var="two2" value="0"></c:set>
					<c:forTokens items="${temp.num }" delims="|" var="va">
						<c:if test="${fn:substring(fn:trim(va), 1, 2)==1 }">
					 		<c:set var="idx1" value="${idx1+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==2 }">
					 		<c:set var="idx2" value="${idx2+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==3 }">
					 		<c:set var="idx3" value="${idx3+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==4 }">
					 		<c:set var="idx4" value="${idx4+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==5 }">
					 		<c:set var="idx5" value="${idx5+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==6 }">
					 		<c:set var="idx6" value="${idx6+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==7 }">
					 		<c:set var="idx7" value="${idx7+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==8 }">
					 		<c:set var="idx8" value="${idx8+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==9 }">
					 		<c:set var="idx9" value="${idx9+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==0 }">
					 		<c:set var="idx0" value="${idx0+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${va%3==1}">
					 		<c:set var="three1" value="${three1+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${va%3==2}">
					 		<c:set var="three2" value="${three2+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${va%3==0}">
					 		<c:set var="three0" value="${three0+1 }"></c:set>
					 	</c:if>
					 	<!-- 奇偶 -->
					 	<c:if test="${va%2==1}">
					 		<c:set var="two1" value="${two1+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${va%2==0}">
					 		<c:set var="two2" value="${two2+1 }"></c:set>
					 	</c:if>
					 	<!-- 11等分法 -->
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==1 && va!='01'}">
					 		<c:set var="index1" value="${index1+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==2  && va!='02'}">
					 		<c:set var="index2" value="${index2+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==3  && va!='03'}">
					 		<c:set var="index3" value="${index3+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==4 }">
					 		<c:set var="index4" value="${index4+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==5 }">
					 		<c:set var="index5" value="${index5+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==6 }">
					 		<c:set var="index6" value="${index6+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==7 }">
					 		<c:set var="index7" value="${index7+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==8 }">
					 		<c:set var="index8" value="${index8+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==9 }">
					 		<c:set var="index9" value="${index9+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${fn:substring(fn:trim(va), 1, 2)==0 }">
					 		<c:set var="index0" value="${index0+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${va=='01'||va=='02'||va=='03'}">
					 		<c:set var="index11" value="${index11+1 }"></c:set>
					 	</c:if>
					 	
					 	
					 	
					 	<!-- 6等分法  -->
					 	<c:if test="${(temp.idNo%2==1&&(va<=6&&va>=1))||(temp.idNo%2==0&&(va<=5&&va>=1)) }">
					 		<c:set var="six1" value="${six1+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${(temp.idNo%2==1&&(va<=11&&va>=7))||(temp.idNo%2==0&&(va<=11&&va>=6)) }">
					 		<c:set var="six2" value="${six2+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${(temp.idNo%2==1&&(va<=17&&va>=12))||(temp.idNo%2==0&&(va>=12&&va<=16)) }">
					 		<c:set var="six3" value="${six3+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${(temp.idNo%2==1&&(va<=22&&va>=18))||(temp.idNo%2==0&&(va<=22&&va>=17)) }">
					 		<c:set var="six4" value="${six4+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${(temp.idNo%2==1&&(va<=28&&va>=23))||(temp.idNo%2==0&&(va<=27&&va>=23)) }">
					 		<c:set var="six5" value="${six5+1 }"></c:set>
					 	</c:if>
					 	<c:if test="${(temp.idNo%2==1&&(va<=33&&va>=29))||(temp.idNo%2==0&&(va<=33&&va>=28)) }">
					 		<c:set var="six6" value="${six6+1 }"></c:set>
					 	</c:if>
					 	
					</c:forTokens>
					<!-- 六等分法三期计计算 -->
					<c:set var="sixThree111" value="${sixThree11 }"></c:set>
					<c:set var="sixThree11" value="${sixThree1 }"></c:set>
					<c:set var="sixThree1" value="${six1}"></c:set>
					<c:set var="sixThree222" value="${sixThree22 }"></c:set>
					<c:set var="sixThree22" value="${sixThree2 }"></c:set>
					<c:set var="sixThree2" value="${six2}"></c:set>
					<c:set var="sixThree333" value="${sixThree33 }"></c:set>
					<c:set var="sixThree33" value="${sixThree3 }"></c:set>
					<c:set var="sixThree3" value="${six3}"></c:set>
					<c:set var="sixThree444" value="${sixThree44 }"></c:set>
					<c:set var="sixThree44" value="${sixThree4 }"></c:set>
					<c:set var="sixThree4" value="${six4}"></c:set>
					<c:set var="sixThree555" value="${sixThree55 }"></c:set>
					<c:set var="sixThree55" value="${sixThree5 }"></c:set>
					<c:set var="sixThree5" value="${six5}"></c:set>
					<c:set var="sixThree666" value="${sixThree66 }"></c:set>
					<c:set var="sixThree66" value="${sixThree6 }"></c:set>
					<c:set var="sixThree6" value="${six6}"></c:set>
					
					<!-- 十一等分法三期计计算 -->
					<c:set var="indexThree1xx" value="${indexThree1x }"></c:set>
					<c:set var="indexThree2xx" value="${indexThree2x }"></c:set>
					<c:set var="indexThree3xx" value="${indexThree3x }"></c:set>
					<c:set var="indexThree4xx" value="${indexThree4x }"></c:set>
					<c:set var="indexThree5xx" value="${indexThree5x }"></c:set>
					<c:set var="indexThree6xx" value="${indexThree6x }"></c:set>
					<c:set var="indexThree7xx" value="${indexThree7x }"></c:set>
					<c:set var="indexThree8xx" value="${indexThree8x }"></c:set>
					<c:set var="indexThree9xx" value="${indexThree9x }"></c:set>
					<c:set var="indexThree0xx" value="${indexThree0x }"></c:set>
					<c:set var="indexThree11xx" value="${indexThree11x }"></c:set>
					
					<c:set var="indexThree1x" value="${indexThree1 }"></c:set>
					<c:set var="indexThree2x" value="${indexThree2 }"></c:set>
					<c:set var="indexThree3x" value="${indexThree3 }"></c:set>
					<c:set var="indexThree4x" value="${indexThree4 }"></c:set>
					<c:set var="indexThree5x" value="${indexThree5 }"></c:set>
					<c:set var="indexThree6x" value="${indexThree6 }"></c:set>
					<c:set var="indexThree7x" value="${indexThree7 }"></c:set>
					<c:set var="indexThree8x" value="${indexThree8 }"></c:set>
					<c:set var="indexThree9x" value="${indexThree9 }"></c:set>
					<c:set var="indexThree0x" value="${indexThree0 }"></c:set>
					<c:set var="indexThree11x" value="${indexThree11 }"></c:set>
					
					
					
					<c:set var="indexThree1" value="${index1 }"></c:set>
					<c:set var="indexThree2" value="${index2 }"></c:set>
					<c:set var="indexThree3" value="${index3 }"></c:set>
					<c:set var="indexThree4" value="${index4 }"></c:set>
					<c:set var="indexThree5" value="${index5 }"></c:set>
					<c:set var="indexThree6" value="${index6 }"></c:set>
					<c:set var="indexThree7" value="${index7 }"></c:set>
					<c:set var="indexThree8" value="${index8 }"></c:set>
					<c:set var="indexThree9" value="${index9 }"></c:set>
					<c:set var="indexThree0" value="${index0 }"></c:set>
					<c:set var="indexThree11" value="${index11 }"></c:set>
				<c:if test="${idx.index==0 }"><c:set var="sumUpDownBefore" value="${sumUpDown }"></c:set></c:if>
				<tr>
					<td>${temp.idNo }</td>
					<td style="color: red">${temp.first }</td>
					<td style="color: red">${temp.second }</td>
					<td style="color: red">${temp.three }</td>
					<td style="color: red">${temp.four }</td>
					<td style="color: red">${temp.five }</td>
					<td style="color: red">${temp.six }</td>
					<td style="color: #8A4DB3">${sumUpDown}</td>
					<td style="color: red;">
						<b>${sumUpDownBefore==sumUpDown?"-":(sumUpDownBefore<sumUpDown?"<font color='red'>&uarr;</font>":"<font color='green'>&darr;</font>") }</b>
						<c:set var="sumUpDownBefore" value="${sumUpDown }"></c:set>
					</td>
					<td style="color: #8A4DB3">${two1}:${two2}</td>
					<td style="color: blue">${temp.blue }</td>
					
					
					
					<td style="background-color: <c:if test="${idx1==3 }">red</c:if><c:if test="${idx1==2 }">yellow</c:if><c:if test="${idx1==0}">#0066FF</c:if>">${idx1}</td>
					<td style="background-color: <c:if test="${idx2==3 }">red</c:if><c:if test="${idx2==2 }">yellow</c:if><c:if test="${idx2==0}">#0066FF</c:if>">${idx2}</td>
					<td style="background-color: <c:if test="${idx3==3 }">red</c:if><c:if test="${idx3==2 }">yellow</c:if><c:if test="${idx3==0}">#0066FF</c:if>">${idx3}</td>
					<td style="background-color: <c:if test="${idx4==3 }">red</c:if><c:if test="${idx4==2 }">yellow</c:if><c:if test="${idx4==0}">#0066FF</c:if>">${idx4}</td>
					<td style="background-color: <c:if test="${idx5==3 }">red</c:if><c:if test="${idx5==2 }">yellow</c:if><c:if test="${idx5==0}">#0066FF</c:if>">${idx5}</td>
					<td style="background-color: <c:if test="${idx6==3 }">red</c:if><c:if test="${idx6==2 }">yellow</c:if><c:if test="${idx6==0}">#0066FF</c:if>">${idx6}</td>
					<td style="background-color: <c:if test="${idx7==3 }">red</c:if><c:if test="${idx7==2 }">yellow</c:if><c:if test="${idx7==0}">#0066FF</c:if>">${idx7}</td>
					<td style="background-color: <c:if test="${idx8==3 }">red</c:if><c:if test="${idx8==2 }">yellow</c:if><c:if test="${idx8==0}">#0066FF</c:if>">${idx8}</td>
					<td style="background-color: <c:if test="${idx9==3 }">red</c:if><c:if test="${idx9==2 }">yellow</c:if><c:if test="${idx9==0}">#0066FF</c:if>">${idx9}</td>
					<td style="background-color: <c:if test="${idx0==3 }">red</c:if><c:if test="${idx0==2 }">yellow</c:if><c:if test="${idx0==0}">#0066FF</c:if>">${idx0}</td>
					
					<td>${three1}</td>
					<td>${three2}</td>
					<td>${three0}</td>
					
					<td style="background-color: <c:if test="${index1==2 }">yellow</c:if><c:if test="${index1==0}">#0066FF</c:if>">${index1}</td>
					<td style="background-color: <c:if test="${index2==2 }">yellow</c:if><c:if test="${index2==0}">#0066FF</c:if>">${index2}</td>
					<td style="background-color: <c:if test="${index3==2 }">yellow</c:if><c:if test="${index3==0}">#0066FF</c:if>">${index3}</td>
					<td style="background-color: <c:if test="${index4==2 }">yellow</c:if><c:if test="${index4==0}">#0066FF</c:if>">${index4}</td>
					<td style="background-color: <c:if test="${index5==2 }">yellow</c:if><c:if test="${index5==0}">#0066FF</c:if>">${index5}</td>
					<td style="background-color: <c:if test="${index6==2 }">yellow</c:if><c:if test="${index6==0}">#0066FF</c:if>">${index6}</td>
					<td style="background-color: <c:if test="${index7==2 }">yellow</c:if><c:if test="${index7==0}">#0066FF</c:if>">${index7}</td>
					<td style="background-color: <c:if test="${index8==2 }">yellow</c:if><c:if test="${index8==0}">#0066FF</c:if>">${index8}</td>
					<td style="background-color: <c:if test="${index9==2 }">yellow</c:if><c:if test="${index9==0}">#0066FF</c:if>">${index9}</td>
					<td style="background-color: <c:if test="${index0==2 }">yellow</c:if><c:if test="${index0==0}">#0066FF</c:if>">${index0}</td>
					<td style="background-color: <c:if test="${index11==2 }">yellow</c:if><c:if test="${index11==0}">#0066FF</c:if>">${index11}</td>
					<td>${indexThree1+indexThree1x+indexThree1xx}</td>
					<td>${indexThree2+indexThree2x+indexThree2xx}</td>
					<td>${indexThree3+indexThree3x+indexThree3xx}</td>
					<td>${indexThree4+indexThree4x+indexThree4xx}</td>
					<td>${indexThree5+indexThree5x+indexThree5xx}</td>
					<td>${indexThree6+indexThree6x+indexThree6xx}</td>
					<td>${indexThree7+indexThree7x+indexThree7xx}</td>
					<td>${indexThree8+indexThree8x+indexThree8xx}</td>
					<td>${indexThree9+indexThree9x+indexThree9xx}</td>
					<td>${indexThree0+indexThree0x+indexThree0xx}</td>
					<td>${indexThree11+indexThree11x+indexThree11xx}</td>
					
					<c:set var="blueIdx" value="${temp.blue%4}"></c:set>
					<td style="background-color:${blueIdx==1?'#B4DAE4': '#BCB1E7'}">${blueIdx==1?1:0}</td>
					<td style="background-color:${blueIdx==2?'#B4DAE4': '#BCB1E7'}">${blueIdx==2?1:0}</td>
					<td style="background-color:${blueIdx==3?'#B4DAE4': '#BCB1E7'}">${blueIdx==3?1:0}</td>
					<td style="background-color:${blueIdx==0?'#B4DAE4': '#BCB1E7'}">${blueIdx==0?1:0}</td>
					
					<td style="background-color: <c:if test="${six1==3 }">red</c:if><c:if test="${six1==2 }">yellow</c:if><c:if test="${six1==0}">#0066FF</c:if>">${six1}</td>
					<td style="background-color: <c:if test="${six2==3 }">red</c:if><c:if test="${six2==2 }">yellow</c:if><c:if test="${six2==0}">#0066FF</c:if>">${six2}</td>
					<td style="background-color: <c:if test="${six3==3 }">red</c:if><c:if test="${six3==2 }">yellow</c:if><c:if test="${six3==0}">#0066FF</c:if>">${six3}</td>
					<td style="background-color: <c:if test="${six4==3 }">red</c:if><c:if test="${six4==2 }">yellow</c:if><c:if test="${six4==0}">#0066FF</c:if>">${six4}</td>
					<td style="background-color: <c:if test="${six5==3 }">red</c:if><c:if test="${six5==2 }">yellow</c:if><c:if test="${six5==0}">#0066FF</c:if>">${six5}</td>
					<td style="background-color: <c:if test="${six6==3 }">red</c:if><c:if test="${six6==2 }">yellow</c:if><c:if test="${six6==0}">#0066FF</c:if>">${six6}</td>
					<td style="color: ${(six1+six2==5||six3+six4==5||six5+six6==5)?'#8A4DB3':'blue'}" align="center" >${six1+six2 }:${six3+six4 }:${six5+six6 }</td>
					<td>${sixThree1+sixThree11+sixThree111}</td>
					<td>${sixThree2+sixThree22+sixThree222}</td>
					<td>${sixThree3+sixThree33+sixThree333}</td>
					<td>${sixThree4+sixThree44+sixThree444}</td>
					<td>${sixThree5+sixThree55+sixThree555}</td>
					<td>${sixThree6+sixThree66+sixThree666}</td>
					
					<c:set var="sumLost" value="${temp.firstMiss+temp.secondMiss+temp.threeMiss+temp.fourMiss+temp.fiveMiss+temp.sixMiss   }"></c:set>
					<c:if test="${idx.index==0 }"><c:set var="sumLostBefore" value="${sumLost }"></c:set></c:if>
					
					
					<td style="color: red">${temp.firstMiss }</td>
					<td style="color: red">${temp.secondMiss }</td>
					<td style="color: red">${temp.threeMiss }</td>
					<td style="color: red">${temp.fourMiss }</td>
					<td style="color: red">${temp.fiveMiss }</td>
					<td style="color: red">${temp.sixMiss }</td>
					<td style="color: blue">${sumLost }</td>
					<td style="color: red;">
						<b>${sumLostBefore==sumLost?"-":(sumLostBefore<sumLost?"<font color='red'>&uarr;</font>":"<font color='green'>&darr;</font>") }</b>
						<c:set var="sumLostBefore" value="${sumLost }"></c:set>
					</td>
					<!-- 出现次数 -->
					<td style="color: red">${temp.firstTimes }</td>
					<td style="color: red">${temp.secondTimes }</td>
					<td style="color: red">${temp.threeTimes }</td>
					<td style="color: red">${temp.fourTimes }</td>
					<td style="color: red">${temp.fiveTimes }</td>
					<td style="color: red">${temp.sixTimes }</td>
					<td style="color: blue">${temp.blueTimes }</td>
					
					
				</tr>
				
				
				
			</c:forEach>
		</table>
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
		
		
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
		
		<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td colspan="6" align="center"><b style="color: red;">和值分类统计</b></td>
		</tr>
		<tr>
			<td  align="center"><b style="color: blue;">统计</b></td>
			<td  align="center"><b style="color: blue;">16期</b></td>
			<td  align="center"><b style="color: blue;">30期</b></td>
			<td  align="center"><b style="color: blue;">50期</b></td>
			<td  align="center"><b style="color: blue;">100期</b></td>
			<td  align="center"><b style="color: blue;">全部</b></td>
		</tr>
		<tr>
			<td>红球平均和值</td>
			<td>${sumMap.red.red16 }</td>
			<td>${sumMap.red.red30 }</td>
			<td>${sumMap.red.red50 }</td>
			<td>${sumMap.red.red100 }</td>
			<td>${sumMap.red.redAll }</td>
		</tr>
		<tr>
			<td>红球遗漏平均和值</td>
			<td>${sumMap.miss.miss16 }</td>
			<td>${sumMap.miss.miss30 }</td>
			<td>${sumMap.miss.miss50 }</td>
			<td>${sumMap.miss.miss100 }</td>
			<td>${sumMap.miss.missAll }</td>
			
		</tr>
		</table>
		<br/>
	</form>
</body>
</html>