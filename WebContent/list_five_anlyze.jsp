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
<title>五期分析法</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/jqChartJQueryPlugin/css/jquery.jqChart.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/jqChartJQueryPlugin/css/jquery.jqRangeSlider.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/jqChartJQueryPlugin/themes/smoothness/jquery-ui-1.8.21.css" />
</head>
<body>
<br/>
	<c:set var="colorFlag" value="false"></c:set>
	<c:forEach items="${map }" var="tv">
		<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
			<tr>
				<td colspan="2" align="center"><b>${tv.key }</b></td>
			</tr>
			<tr>
				<td>出现一次</td>
				<td>
					<c:forEach items="${tv.value['num'] }" var="temp">
						<c:if test="${temp.value==1 }">
						<c:set var="colorFlag" value="false"></c:set>
						<c:forEach items="${fn:split(tv.value['term'],'|')}" var="tempInner">
							<c:if test="${tempInner==temp.key }">
							<c:set var="colorFlag" value="true"></c:set>
							</c:if>
						</c:forEach>
						&nbsp;<font color="${colorFlag?'blue':'' }">${temp.key }</font>
						</c:if>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td>出现二次</td>
				<td>
					<c:forEach items="${tv.value['num']}" var="temp">
							<c:if test="${temp.value==2 }">
							&nbsp;
							<c:set var="colorFlag" value="false"></c:set>
							<c:forEach items="${fn:split(tv.value['term'],'|')}" var="tempInner">
							<c:if test="${tempInner==temp.key }">
								<c:set var="colorFlag" value="true"></c:set>
							</c:if>
							</c:forEach>
							<font color="${colorFlag?'blue':'' }">${temp.key }</font>
							</c:if>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td>出现三次</td>
				<td>
					<c:forEach items="${tv.value['num'] }" var="temp">
							<c:if test="${temp.value==3 }">
							&nbsp;
							<c:set var="colorFlag" value="false"></c:set>
							<c:forEach items="${fn:split(tv.value['term'],'|')}" var="tempInner">
							<c:if test="${tempInner==temp.key }">
								<c:set var="colorFlag" value="true"></c:set>
							</c:if>
							</c:forEach>
							<font color="${colorFlag?'blue':'' }">${temp.key }</font>
							</c:if>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td>出现四次</td>
				<td>
					<c:forEach items="${tv.value['num'] }" var="temp">
							<c:if test="${temp.value==4 }">
							&nbsp;
							<c:set var="colorFlag" value="false"></c:set>
							<c:forEach items="${fn:split(tv.value['term'],'|')}" var="tempInner">
							<c:if test="${tempInner==temp.key }">
								<c:set var="colorFlag" value="true"></c:set>
							</c:if>
							</c:forEach>
							<font color="${colorFlag?'blue':'' }">${temp.key }</font>
							</c:if>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td>出现五次</td>
				<td>
					<c:forEach items="${tv.value['num'] }" var="temp">
							<c:if test="${temp.value==5 }">
							&nbsp;
							<c:set var="colorFlag" value="false"></c:set>
							<c:forEach items="${fn:split(tv.value['term'],'|')}" var="tempInner">
							<c:if test="${tempInner==temp.key }">
								<c:set var="colorFlag" value="true"></c:set>
							</c:if>
							</c:forEach>
							<font color="${colorFlag?'blue':'' }">${temp.key }</font>
							</c:if>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td>未出现球</td>
				<td>
					<c:forEach items="${listRed }" var="tempOut">
						<c:set var="flag" value="true"></c:set>
						<c:forEach items="${tv.value['num'] }" var="temp">
							<c:if test="${tempOut==temp.key }">
								<c:set var="flag" value="false"></c:set>
							</c:if>
						</c:forEach>
						<c:if test="${flag==true }">
						&nbsp;
						<c:set var="colorFlag" value="false"></c:set>
						<c:forEach items="${fn:split(tv.value['term'],'|')}" var="tempInner">
							<c:if test="${tempInner==tempOut }">
								<c:set var="colorFlag" value="true"></c:set>
							</c:if>
						</c:forEach>
						<font color="${colorFlag?'blue':'' }">${tempOut}</font>
						</c:if>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td>下期开奖号</td>
				<td style="color: red;">
					${tv.value['term'] }	
				</td>
			</tr>
		</table>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
	</c:forEach>
	
</body>
</html>