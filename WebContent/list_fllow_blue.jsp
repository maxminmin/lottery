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

<title>100期蓝球跟随查看</title>
</head>
<body>
	<br/>
	<form action="${pageContext.request.contextPath }/fllowBlueServlet" method="post">
		<label>蓝球：</label><input name="blue" type="text" value="${blue }"/><br/>
		<button type="submit">提交</button>
	</form>
	<br/>
	<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td>出现的蓝球</td>
			<c:forEach items="${ map}" var="temp"  varStatus="idx">
			<td style="color: red">${temp.key }</td>
			</c:forEach>
		</tr>
		<tr>
			<td>次数</td>
			<c:forEach items="${ map}" var="temp"  varStatus="idx">
			<td style="color: blue">${temp.value }</td>
			</c:forEach>
		</tr>
			
		
		
		
		
		
		</table>
		<br/><br/>
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
</body>
</html>