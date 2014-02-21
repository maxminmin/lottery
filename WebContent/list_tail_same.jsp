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
<title>11等分法同尾统计</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/jqChartJQueryPlugin/css/jquery.jqChart.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/jqChartJQueryPlugin/css/jquery.jqRangeSlider.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/jqChartJQueryPlugin/themes/smoothness/jquery-ui-1.8.21.css" />
</head>
<body>
<br/>
	<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td colspan="12" align="center"><b style="color: red;">相同二个尾数统计</b></td>
		</tr>
		<tr>
			<td>年份</td>
			<td>01</td>
			<td>02</td>
			<td>03</td>
			<td>04</td>
			<td>05</td>
			<td>06</td>
			<td>07</td>
			<td>08</td>
			<td>09</td>
			<td>10</td>
			<td>11</td>
		</tr>
		
	<c:forEach items="${ allYear}" var="temp">
		<tr>
		<td style="color: green">${temp }</td>
		<c:forEach items="${ tailKey}" var="keys"  varStatus="idx">
			<c:set var="flag" value="true"></c:set>
			<c:forEach items="${ twoTail[temp]}" var="tail"  varStatus="idx">
					<c:if test="${keys==tail.keyVal }">
						<td style="color: blue">${tail.valueVal }</td>
						<c:set var="flag" value="false"></c:set>
					</c:if>
			</c:forEach>
			<c:if test="${flag}">
				<td>0</td>
			</c:if>
		</c:forEach>
		</tr>
	</c:forEach>
		
 </table>
 
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td colspan="12" align="center"><b style="color: red;">相同三个尾数统计</b></td>
		</tr>
		<tr>
			<td>年份</td>
			<td>01</td>
			<td>02</td>
			<td>03</td>
			<td>04</td>
			<td>05</td>
			<td>06</td>
			<td>07</td>
			<td>08</td>
			<td>09</td>
			<td>10</td>
			<td>11</td>
		</tr>
		
	<c:forEach items="${ allYear}" var="temp">
		<tr>
		<td style="color: green">${temp }</td>
		<c:forEach items="${ tailKey}" var="keys"  varStatus="idx">
			<c:set var="flag" value="true"></c:set>
			<c:forEach items="${ threeTail[temp]}" var="tail"  varStatus="idx">
					<c:if test="${keys==tail.keyVal }">
						<td style="color: blue">${tail.valueVal }</td>
						<c:set var="flag" value="false"></c:set>
					</c:if>
			</c:forEach>
			<c:if test="${flag}">
				<td>0</td>
			</c:if>
		</c:forEach>
		</tr>
	</c:forEach>
		
 </table>
	
</body>
</html>