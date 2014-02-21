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

<title>红球统计</title>
</head>
<body>
	<br/>
	<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td colspan="40" align="center"><b style="color: red;">红球历史统计</b></td>
		</tr>
		<tr>
			<td>期数</td>
			<c:forEach items="${ map.allMap}" var="temp">
					<td>${temp.key }</td>
			</c:forEach>
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
		<c:set var="map17" value="0"></c:set>
		<c:set var="map18" value="0"></c:set>
		<c:set var="map19" value="0"></c:set>
		<c:set var="map20" value="0"></c:set>
		<c:set var="map21" value="0"></c:set>
		<c:set var="map22" value="0"></c:set>
		<c:set var="map23" value="0"></c:set>
		<c:set var="map24" value="0"></c:set>
		<c:set var="map25" value="0"></c:set>
		<c:set var="map26" value="0"></c:set>
		<c:set var="map27" value="0"></c:set>
		<c:set var="map28" value="0"></c:set>
		<c:set var="map29" value="0"></c:set>
		<c:set var="map30" value="0"></c:set>
		<c:set var="map31" value="0"></c:set>
		<c:set var="map32" value="0"></c:set>
		<c:set var="map33" value="0"></c:set>
		
	<c:forEach items="${ map}" var="temp"  varStatus="idx">
		
		<tr>
		<td style="color: red">${idx.index==0?'所有期数':temp.key }</td>
		
		
		
		<c:forEach items="${temp.value}" var="temps" >
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
				<c:if test="${temps.key=='17' }"><c:set var="map17" value="${map17+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='18' }"><c:set var="map18" value="${map18+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='19' }"><c:set var="map19" value="${map19+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='20' }"><c:set var="map20" value="${map20+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='21' }"><c:set var="map21" value="${map21+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='22' }"><c:set var="map22" value="${map22+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='23' }"><c:set var="map23" value="${map23+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='24' }"><c:set var="map24" value="${map24+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='25' }"><c:set var="map25" value="${map25+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='26' }"><c:set var="map26" value="${map26+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='27' }"><c:set var="map27" value="${map27+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='28' }"><c:set var="map28" value="${map28+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='29' }"><c:set var="map29" value="${map29+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='30' }"><c:set var="map30" value="${map30+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='31' }"><c:set var="map31" value="${map31+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='32' }"><c:set var="map32" value="${map32+temps.value }"></c:set></c:if>
				<c:if test="${temps.key=='33' }"><c:set var="map33" value="${map33+temps.value }"></c:set></c:if>
			
			</c:if>
		
		
		
		
			<td style="color: blue">${temps.value }</td>
		</c:forEach>
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
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map17/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map18/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map19/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map20/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map21/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map22/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map23/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map24/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map25/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map26/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map27/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map28/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map29/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map30/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map31/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map32/(fn:length(map)-5.0)}"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${map33/(fn:length(map)-5.0)}"/></td>
		</tr>
		
		
		
		
		</table>
		<br/><br/>
		<a href="javascript:history.go(-1);" style="margin-left: 200px;"><b><button>返回</button></b></a>
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
</body>
</html>