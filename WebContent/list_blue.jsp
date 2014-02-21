<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<LINK href="${pageContext.request.contextPath }/css/main1.css"
	type=text/css rel=stylesheet>

<title>蓝球统计</title>
</head>
<body>
	<br/>
	<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td colspan="43" align="center"><b style="color: red;">蓝球历史统计</b></td>
		</tr>
		<tr>
			<td>期数</td>
			<c:forEach items="${ map.allMap}" var="temp">
					<td>${temp.key }</td>
			</c:forEach>
			<td style="color: red">奇数</td>
			<td style="color: red">偶数</td>
		<td style="color: red">总和</td>
		</tr>
		<c:set var="map01" value="0"></c:set>
		<c:set var="map02" value="0"></c:set>
		<c:set var="map03" value="0"></c:set>
		<c:set var="map04" value="0"></c:set>
		<c:set var="map05" value="0"></c:set>
		<c:set var="map06" value="0"></c:set>
		<c:set var="map07" value="0"></c:set>
		<c:set var="map08" value="0"></c:set>
		<c:set var="map09" value="0"></c:set>
		<c:set var="map10" value="0"></c:set>
		<c:set var="map11" value="0"></c:set>
		<c:set var="map12" value="0"></c:set>
		<c:set var="map13" value="0"></c:set>
		<c:set var="map14" value="0"></c:set>
		<c:set var="map15" value="0"></c:set>
		<c:set var="map16" value="0"></c:set>
	<c:forEach items="${ map}" var="temp"  varStatus="idx">
		<c:set var="ji" value="0"></c:set>
		<c:set var="ou" value="0"></c:set>
		
		<tr>
		<td style="color: red">${idx.index==0?'所有期数':temp.key }</td>
		
		
		
		
		<c:forEach items="${temp.value}" var="temps"  varStatus="idxs">
			<c:if test="${(idx.index>3&&(fn:length(map)-1)>idx.index) }">
				<c:if test="${temps.key=='01' }"><c:set var="map01" value="${map01+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='02' }"><c:set var="map02" value="${map02+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='03' }"><c:set var="map03" value="${map03+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='04' }"><c:set var="map04" value="${map04+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='05' }"><c:set var="map05" value="${map05+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='06' }"><c:set var="map06" value="${map06+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='07' }"><c:set var="map07" value="${map07+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='08' }"><c:set var="map08" value="${map08+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='09' }"><c:set var="map09" value="${map09+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='10' }"><c:set var="map10" value="${map10+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='11' }"><c:set var="map11" value="${map11+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='12' }"><c:set var="map12" value="${map12+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='13' }"><c:set var="map13" value="${map13+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='14' }"><c:set var="map14" value="${map14+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='15' }"><c:set var="map15" value="${map15+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='16' }"><c:set var="map16" value="${map16+temps.value }"></c:set></c:if>
			
			
			</c:if>
			<c:if test="${(idxs.index+1)%2==1 }">
				<c:set var="ji" value="${ji+temps.value}"></c:set>
			</c:if>
			<c:if test="${(idxs.index+1)%2==0 }">
				<c:set var="ou" value="${ou+temps.value}"></c:set>
			</c:if>
		
		
			<td style="color: blue">${temps.value }</td>
		</c:forEach>
			<td style="color: blue">${ji }</td>
			<td style="color: blue">${ou }</td>
			<td style="color: blue">${ji+ou }</td>
		</tr>
	</c:forEach>
		<tr>
			<td style="color: green">05年后的平均数(不包含今年)</td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map01/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map02/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map03/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map04/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map05/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map06/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map07/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map08/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map09/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map10/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map11/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map12/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map13/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map14/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map15/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map16/(fn:length(map)-5.0)}"/></td>
			<td style="color: blue">${map01+map03+map05+map07+map09+map11+map13+map15 }</td>
			<td style="color: blue">${map02+map04+map06+map08+map10+map12+map14+map16 }</td>
			<td style="color: blue">${map01+map03+map05+map07+map09+map11+map13+map15+map02+map04+map06+map08+map10+map12+map14+map16 }</td>
		</tr>
		
		
		
		
		</table>
		<br/><br/>
		<a href="javascript:history.go(-1);" style="margin-left: 200px;"><b><button>返回</button></b></a>
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
</body>
</html>