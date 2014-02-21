<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
	Date nowDate=new Date();
	SimpleDateFormat df=new SimpleDateFormat("yyyy");
	String now=df.format(nowDate);
	request.setAttribute("now", now);
%>
<LINK href="${pageContext.request.contextPath }/css/main1.css"
	type=text/css rel=stylesheet>

<title>蓝球4余表统计</title>
</head>
<body>
	<br/>
	<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td colspan="5" align="center"><b style="color: red;">蓝球4余表统计</b></td>
		</tr>
		<tr>
			<td>年份</td>
			<td>余0</td>
			<td>余1</td>
			<td>余2</td>
			<td>余3</td>
		</tr>
		<c:set var="map0" value="0"></c:set>
		<c:set var="map1" value="0"></c:set>
		<c:set var="map2" value="0"></c:set>
		<c:set var="map3" value="0"></c:set>
		<c:forEach items="${ map}" var="temp" varStatus="idx">
			<c:if test="${temp.key!=now &&temp.key>2005 }">
				<c:set var="map0" value="${map0+temp.value.zero }"></c:set>
				<c:set var="map1" value="${map1+temp.value.one }"></c:set>
				<c:set var="map2" value="${map2+temp.value.two }"></c:set>
				<c:set var="map3" value="${map3+temp.value.three }"></c:set>
			
			</c:if>
			<tr>
				<td>${temp.key }</td>
				<td>${temp.value.zero }</td>
				<td>${temp.value.one }</td>
				<td>${temp.value.two }</td>
				<td>${temp.value.three }</td>
			</tr>
			
		</c:forEach>
			<tr>
				<td>05年之后数据统计，不包含当年</td>
				<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map0/(fn:length(map)-4.0)}"/></td>
				<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map1/(fn:length(map)-4.0)}"/></td>
				<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map2/(fn:length(map)-4.0)}"/></td>
				<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map3/(fn:length(map)-4.0)}"/></td>
			</tr>
		
		
		
		
		
		</table>
		<br/><br/>
		<a href="javascript:history.go(-1);" style="margin-left: 200px;"><b><button>返回</button></b></a>
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
</body>
</html>