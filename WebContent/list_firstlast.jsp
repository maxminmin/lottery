<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<LINK href="${pageContext.request.contextPath }/css/main1.css"
	type=text/css rel=stylesheet>

<title>龙头凤尾统计</title>
</head>
<body>
	<br/>
	<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td colspan="24" align="center"><b style="color: red;">龙头历史统计</b></td>
		</tr>
		<tr>
			<td style="color: green">龙头</td>
			<c:forEach items="${ mapFirst.allMap}" var="temp">
					<td style="color: green">${temp.key}</td>
			</c:forEach>
		</tr>
		<c:forEach items="${ mapFirst}" var="temp" varStatus="idx">
			<tr>
					<td>${idx.index==0?"所有期数":temp.key}</td>
					<c:forEach items="${ temp.value}" var="temps">
							<td>${temps.value }</td>
					</c:forEach>
			</tr>
		</c:forEach>
		
		
		</table>
		<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td colspan="22" align="center"><b style="color: red;">凤尾历史统计</b></td>
		</tr>
		<tr>
			<td style="color: green">凤尾</td>
			<c:forEach items="${ mapLast.allMap}" var="temp">
					<td style="color: green">${temp.key}</td>
			</c:forEach>
		</tr>
		<c:forEach items="${ mapLast}" var="temp" varStatus="idx">
			<tr>
					<td>${idx.index==0?"所有期数":temp.key}</td>
					<c:forEach items="${ temp.value}" var="temps">
							<td>${temps.value }</td>
					</c:forEach>
			</tr>
		</c:forEach>
		
		
		</table>
		<br/><br/>
		<a href="javascript:history.go(-1);" style="margin-left: 200px;"><b><button>返回</button></b></a>
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
</body>
</html>