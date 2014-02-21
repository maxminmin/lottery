<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Date nowDate=new Date();
	SimpleDateFormat df=new SimpleDateFormat("yyyy");
	String now=df.format(nowDate);
	request.setAttribute("now", now);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<LINK href="${pageContext.request.contextPath }/css/main1.css"
	type=text/css rel=stylesheet>

<title>根据蓝球上期的振幅，查看下期的振幅</title>
</head>
<body>
	<br/>
	<form action="${pageContext.request.contextPath }/nextAmplitudeServlet" method="post">
		<label>振幅：</label><input name="amplitude" type="text" value="${amplitude }"/><br/>
		<button type="submit">提交</button>
	</form>
	<br/>
	<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td colspan="2" style="color: blue"><b>上期振幅数${amplitude }后，下期的振幅次数统计</b></td>
		</tr>
		<tr>
			<td>振幅</td>
			<td>次数</td>
		</tr>
		<c:forEach items="${ mapCounter}" var="temp"  varStatus="idx">
			<tr>
				<td>${temp.key }</td>
				<td style="color: blue">${temp.value }</td>
			</tr>
		</c:forEach>
	</table>
	
	<table class="list" cellspacing="0" cellpadding="0" border="0" align="center">
		<tr>
			<td colspan="18" align="center" style="color: blue"><b>按年统计蓝球跨度</b></td>
		</tr>
		<tr>
			<td>年份/次数</td>
			<c:forEach items="${ listDiff}" var="temp"  varStatus="idx">
				<td>${temp }</td>
			</c:forEach>
			<td>总计</td>
		</tr>
		<c:set var="count0" value="0"></c:set>
		<c:set var="count1" value="0"></c:set>
		<c:set var="count2" value="0"></c:set>
		<c:set var="count3" value="0"></c:set>
		<c:set var="count4" value="0"></c:set>
		<c:set var="count5" value="0"></c:set>
		<c:set var="count6" value="0"></c:set>
		<c:set var="count7" value="0"></c:set>
		<c:set var="count8" value="0"></c:set>
		<c:set var="count9" value="0"></c:set>
		<c:set var="count10" value="0"></c:set>
		<c:set var="count11" value="0"></c:set>
		<c:set var="count12" value="0"></c:set>
		<c:set var="count13" value="0"></c:set>
		<c:set var="count14" value="0"></c:set>
		<c:set var="count15" value="0"></c:set>
		
		<c:forEach items="${ yearCounter}" var="temp"  varStatus="idx">
			<c:set var="year" value="${fn:replace(temp.key,'年','') }"></c:set>
			<tr>
				<td>${temp.key }</td>
				<c:set var="innerCountYear" value="0"></c:set>
				<c:forEach items="${ listDiff}" var="temps"  varStatus="idx">
					<td>${temp.value[temps] }</td>
					<c:set var="innerCountYear" value="${innerCountYear+temp.value[temps] }"></c:set>
					<c:if test="${year>2005 &&year!=now}">
						<c:if test="${idx.index==0 }">
							<c:set var="count0" value="${count0+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==1 }">
							<c:set var="count1" value="${count1+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==2 }">
							<c:set var="count2" value="${count2+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==3 }">
							<c:set var="count3" value="${count3+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==4 }">
							<c:set var="count4" value="${count4+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==5 }">
							<c:set var="count5" value="${count5+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==6 }">
							<c:set var="count6" value="${count6+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==7 }">
							<c:set var="count7" value="${count7+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==8 }">
							<c:set var="count8" value="${count8+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==9 }">
							<c:set var="count9" value="${count9+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==10 }">
							<c:set var="count10" value="${count10+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==11 }">
							<c:set var="count11" value="${count11+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==12 }">
							<c:set var="count12" value="${count12+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==13 }">
							<c:set var="count13" value="${count13+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==14 }">
							<c:set var="count14" value="${count14+temp.value[temps] }"></c:set>
						</c:if>
						<c:if test="${idx.index==15 }">
							<c:set var="count15" value="${count15+temp.value[temps] }"></c:set>
						</c:if>
					</c:if>
				</c:forEach>
				<td style="color: green">${innerCountYear }</td>
			</tr>
		</c:forEach>
		
		<tr>
			<td>2005年后统计(不包含当年)</td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count0/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count1/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count2/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count3/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count4/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count5/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count6/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count7/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count8/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count9/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count10/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count11/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count12/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count13/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="#0.00" value="${count14/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="0.00" value="${count15/(fn:length(yearCounter)-4.0)}"/></td>
			<td style="color: green">--</td>
		</tr>
		
		<tr>
			<td>2005年后统计(不包含当年)</td>
			<td>${count0}</td>
			<td>${count1}</td>
			<td>${count2}</td>
			<td>${count3}</td>
			<td>${count4}</td>
			<td>${count5}</td>
			<td>${count6}</td>
			<td>${count7}</td>
			<td>${count8}</td>
			<td>${count9}</td>
			<td>${count10}</td>
			<td>${count11}</td>
			<td>${count12}</td>
			<td>${count13}</td>
			<td>${count14}</td>
			<td>${count15}</td>
			<td>${count0+count1+count2+count3+count4+count5+count6+count7+count8+count9+count10+count11+count12+count13+count14+count15}</td>
		</tr>
	</table>
	
	
	<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td colspan="2" style="color: blue"><b>上期振幅数${amplitude }后，下期的振幅</b></td>
		</tr>
		<tr>
			<td>期次</td>
			<td>振幅数</td>
		</tr>
		<c:forEach items="${ map}" var="temp"  varStatus="idx">
			<tr>
				<td>${temp.key }</td>
				<td style="color: blue">${temp.value }</td>
			</tr>
		</c:forEach>
	</table>
		<br/><br/>
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
</body>
</html>