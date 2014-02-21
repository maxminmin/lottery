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

<title>双色球</title>
</head>
<body>
	<br/>
	
<c:forEach items="${ map}" var="temp" varStatus="idx">
	<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td colspan="34" align="center"><b style="color: red;">${idx.index==0?"所有期数":temp.key}</b></td>
		</tr>
		<tr>
			<td>排名(出现次数)</td>
			<c:forEach items="${ map.allMap}" var="temp4">
				<td style="color: green">${temp4.key}</td>
			</c:forEach>
		</tr>
		<c:forEach items="${ temp.value}" var="temp2">
			<tr>
				<td style="color: green">${temp2.key}</td>
				<c:forEach items="${ temp2.value}" var="temp3">
					<td style="color: green">${temp3.key}(${temp3.value})</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</c:forEach>
		
		<br/><br/>
		<a href="javascript:history.go(-1);" style="margin-left: 200px;"><b><button>返回</button></b></a>
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
</body>
</html>