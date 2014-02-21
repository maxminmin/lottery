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
		<table class="list" cellspacing="0" cellpadding="0" border="0" align="center">
			<tr>
				<td align="center"><b>双色球</b></td>
				<td colspan="33" align="center"><b>红球区</b></td>
				<td colspan="16" align="center"><b>蓝球区</b></td>
			</tr>
			<tr>
				<td align="center"><b>期号</b></td>
				<!-- 红球区 -->
				<c:forEach items="${listRed }" var="temp">
					<td bgcolor="#8A4DB3"><b>${temp }</b></td>
				</c:forEach>
				
				
				<!-- 蓝球区 -->
				<c:forEach items="${listBlue }" var="temp">
					<td><b style="color: blue">${temp }</b></td>
				</c:forEach>
			</tr>
			<c:forEach items="${map }" var="temp">
				<tr>
					<td align="center">${temp.idNo }</td>
					<c:forEach items="${listRed }" var="tempInner">
						<td <c:forEach items="${fn:split(temp.num,'|') }" var="redOut"><c:if test="${redOut==tempInner }">bgcolor="red"</c:if></c:forEach>>
							<c:forEach items="${fn:split(temp.num,'|') }" var="red">
								<!-- 红球区 -->
								<c:if test="${red==tempInner }">
									<span style="color: white;">
										${red }
									</span>
								</c:if>
							</c:forEach>	
						</td>
					</c:forEach>
					<!-- 蓝球区 -->
					<c:forEach items="${listBlue }" var="tempInner">
						<td <c:if test="${temp.blue==tempInner }">bgcolor="blue"</c:if>>
							<c:if test="${temp.blue==tempInner }">
								<span style="color: white;">
									${temp.blue }
								</span>
							</c:if>
						</td>
					</c:forEach>
				</tr>
			
			</c:forEach>
		</table>
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
		
		
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
		
		
		<br/>
	</form>
</body>
</html>