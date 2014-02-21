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

<title>连号统计</title>
<script src="${pageContext.request.contextPath }/js/jqChartJQueryPlugin/js/jquery-1.5.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/jqChartJQueryPlugin/js/jquery.jqChart.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/jqChartJQueryPlugin/js/jquery.jqRangeSlider.min.js" type="text/javascript"></script>
<script lang="javascript" type="text/javascript">
       $(document).ready(function () {
            var background = {
                type: 'linearGradient',
                x0: 0,
                y0: 0,
                x1: 0,
                y1: 1,
                colorStops: [{ offset: 0, color: '#d2e6c9' },
                             { offset: 1, color: 'white'}]
            };
            $('#jqChart').jqChart({
                title: { text: '连号按年统计图表' },//图表标题
                border: { strokeStyle: '#6ba851' },//边线颜色
                background: background,/*背景渐变色的调整*/
                animation: { duration: 1 },//动画效果
                axes: [/*此处是对轴线的一些优化*/
                        {
                            location: 'left',
                            minimum: 1,
                            maximum: 20,
                            interval: 1
                        }
                      ],
                series: [
                            {
                                title:"小于70的偏态",
                                type: 'line',
                                data: [
                                      <c:forEach items="${ map['70']}" var="temp" varStatus="idx">
                                      		<c:if test="${idx.index==(fn:length(map['70'])-1)}">
                                      			['${temp.key}',  ${temp.value}]
                                      		</c:if>
                                      		<c:if test="${idx.index!=(fn:length(map['70'])-1)}">
                                      			['${temp.key}',  ${temp.value}],
                                      		</c:if>
                                      </c:forEach>
                                ]
                            }
                        ]
            });
            
            
            
           
            
            
        });
</script>
</head>
<body>
	<br/>
	<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td colspan="40" align="center"><b style="color: red;">连号历史统计</b></td>
		</tr>
		<tr>
			<td>连号</td>
			<c:forEach items="${ map.allMap}" var="temp">
					<td>${temp.key }</td>
			</c:forEach>
			<td style="color: green">0次</td>
			<td style="color: green">1次</td>
			<td style="color: green">2次</td>
			<td style="color: green">3次</td>
			<td style="color: green">最低次</td>
			<td style="color: green">最高次</td>
			<td style="color: green">总次数</td>
		</tr>
		<tr>
			<td>全部期数</td>
			<c:set var="allMap0" value="0"></c:set>
			<c:set var="allMap1" value="0"></c:set>
			<c:set var="allMap2" value="0"></c:set>
			<c:set var="allMap3" value="0"></c:set>
			<c:set var="allMapHigh" value="0"></c:set>
			<c:set var="allMapLow" value="1000"></c:set>
			<c:set var="allMapCounter" value="0"></c:set>
			<c:forEach items="${ map.allMap}" var="temp">
				<c:if test="${temp.value==0 }"><c:set var="allMap0" value="${allMap0+1 }"></c:set></c:if>
				<c:if test="${temp.value==1 }"><c:set var="allMap1" value="${allMap1+1 }"></c:set></c:if>
				<c:if test="${temp.value==2 }"><c:set var="allMap2" value="${allMap2+1 }"></c:set></c:if>
				<c:if test="${temp.value==3 }"><c:set var="allMap3" value="${allMap3+1 }"></c:set></c:if>
				<c:if test="${temp.value<=allMapLow }"><c:set var="allMapLow" value="${temp.value }"></c:set></c:if>
				<c:if test="${temp.value>=allMapHigh }"><c:set var="allMapHigh" value="${temp.value }"></c:set></c:if>
				<c:set var="allMapCounter" value="${temp.value+allMapCounter }"></c:set>
				<td>${temp.value }</td>
			</c:forEach>
			<td style="color: red">${allMap0 }</td>
			<td style="color: red">${allMap1 }</td>
			<td style="color: red">${allMap2 }</td>
			<td style="color: red">${allMap3 }</td>
			<td style="color: red">${allMapLow }</td>
			<td style="color: red">${allMapHigh }</td>
			<td style="color: red">${allMapCounter }</td>
		</tr>
		
		<tr>
			<td>100期</td>
			<c:set var="map1000" value="0"></c:set>
			<c:set var="map1001" value="0"></c:set>
			<c:set var="map1002" value="0"></c:set>
			<c:set var="map1003" value="0"></c:set>
			<c:set var="map100Low" value="100"></c:set>
			<c:set var="map100High" value="0"></c:set>
			<c:set var="map100Counter" value="0"></c:set>
			<c:forEach items="${ map.map100}" var="temp">
				<c:if test="${temp.value==0 }"><c:set var="map1000" value="${map1000+1 }"></c:set></c:if>
				<c:if test="${temp.value==1 }"><c:set var="map1001" value="${map1001+1 }"></c:set></c:if>
				<c:if test="${temp.value==2 }"><c:set var="map1002" value="${map1002+1 }"></c:set></c:if>
				<c:if test="${temp.value==3 }"><c:set var="map1003" value="${map1003+1 }"></c:set></c:if>
				<c:if test="${temp.value<=map100Low }"><c:set var="map100Low" value="${temp.value }"></c:set></c:if>
				<c:if test="${temp.value>=map100High }"><c:set var="map100High" value="${temp.value }"></c:set></c:if>
				<c:set var="map100Counter" value="${temp.value+map100Counter }"></c:set>
					<td>${temp.value }</td>
			</c:forEach>
			<td style="color: blue">${map1000 }</td>
			<td style="color: blue">${map1001 }</td>
			<td style="color: blue">${map1002 }</td>
			<td style="color: blue">${map1003 }</td>
			<td style="color: blue">${map100Low }</td>
			<td style="color: blue">${map100High }</td>
			<td style="color: red">${map100Counter }</td>
		</tr>
		<tr>
			<td>50期</td>
			<c:set var="map500" value="0"></c:set>
			<c:set var="map501" value="0"></c:set>
			<c:set var="map502" value="0"></c:set>
			<c:set var="map503" value="0"></c:set>
			<c:set var="map50Low" value="100"></c:set>
			<c:set var="map50High" value="0"></c:set>
			<c:set var="map50Counter" value="0"></c:set>
			<c:forEach items="${ map.map50}" var="temp">
				<c:if test="${temp.value==0 }"><c:set var="map500" value="${map500+1 }"></c:set></c:if>
				<c:if test="${temp.value==1 }"><c:set var="map501" value="${map501+1 }"></c:set></c:if>
				<c:if test="${temp.value==2 }"><c:set var="map502" value="${map502+1 }"></c:set></c:if>
				<c:if test="${temp.value==3 }"><c:set var="map503" value="${map503+1 }"></c:set></c:if>
				<c:if test="${temp.value<=map50Low }"><c:set var="map50Low" value="${temp.value }"></c:set></c:if>
				<c:if test="${temp.value>=map50High }"><c:set var="map50High" value="${temp.value }"></c:set></c:if>
				<c:set var="map50Counter" value="${temp.value+map50Counter }"></c:set>
					<td>${temp.value }</td>
			</c:forEach>
			<td style="color: blue">${map500 }</td>
			<td style="color: blue">${map501 }</td>
			<td style="color: blue">${map502 }</td>
			<td style="color: blue">${map503 }</td>
			<td style="color: blue">${map50Low }</td>
			<td style="color: blue">${map50High }</td>
			<td style="color: red">${map50Counter }</td>
		</tr>
		<tr>
			<td>30期</td>
			<c:set var="map300" value="0"></c:set>
			<c:set var="map301" value="0"></c:set>
			<c:set var="map302" value="0"></c:set>
			<c:set var="map303" value="0"></c:set>
			<c:set var="map30Low" value="100"></c:set>
			<c:set var="map30High" value="0"></c:set>
			<c:set var="map30Counter" value="0"></c:set>
			<c:forEach items="${ map.map30}" var="temp">
				<c:if test="${temp.value==0 }"><c:set var="map300" value="${map300+1 }"></c:set></c:if>
				<c:if test="${temp.value==1 }"><c:set var="map301" value="${map301+1 }"></c:set></c:if>
				<c:if test="${temp.value==2 }"><c:set var="map302" value="${map302+1 }"></c:set></c:if>
				<c:if test="${temp.value==3 }"><c:set var="map303" value="${map303+1 }"></c:set></c:if>
				<c:if test="${temp.value<=map30Low }"><c:set var="map30Low" value="${temp.value }"></c:set></c:if>
				<c:if test="${temp.value>=map30High }"><c:set var="map30High" value="${temp.value }"></c:set></c:if>
				<c:set var="map30Counter" value="${temp.value+map30Counter }"></c:set>
					<td>${temp.value }</td>
			</c:forEach>
			<td style="color: blue">${map300 }</td>
			<td style="color: blue">${map301 }</td>
			<td style="color: blue">${map302 }</td>
			<td style="color: blue">${map303 }</td>
			<td style="color: blue">${map30Low }</td>
			<td style="color: blue">${map30High }</td>
			<td style="color: red">${map30Counter }</td>
		</tr>
		
		<tr>
			<td colspan="40" align="center"><b style="color: green;">按年统计</b></td>
		</tr>
		<c:forEach  items="${ map}" var="tempOut">
			<c:if test="${fn:length(tempOut.key)==7 }">
				<tr>
					<td>${fn:replace(tempOut.key,"map","")}年</td>
					<c:set var="map20030" value="0"></c:set>
					<c:set var="map20031" value="0"></c:set>
					<c:set var="map20032" value="0"></c:set>
					<c:set var="map20033" value="0"></c:set>
					<c:set var="map2003Low" value="100"></c:set>
					<c:set var="map2003High" value="0"></c:set>
					<c:set var="map2003Counter" value="0"></c:set>
					<c:forEach items="${ tempOut.value}" var="temp">
						<c:if test="${temp.value==0 }"><c:set var="map20030" value="${map20030+1 }"></c:set></c:if>
						<c:if test="${temp.value==1 }"><c:set var="map20031" value="${map20031+1 }"></c:set></c:if>
						<c:if test="${temp.value==2 }"><c:set var="map20032" value="${map20032+1 }"></c:set></c:if>
						<c:if test="${temp.value==3 }"><c:set var="map20033" value="${map20033+1 }"></c:set></c:if>
						<c:if test="${temp.value<=map2003Low }"><c:set var="map2003Low" value="${temp.value }"></c:set></c:if>
						<c:if test="${temp.value>=map2003High }"><c:set var="map2003High" value="${temp.value }"></c:set></c:if>
						<c:set var="map2003Counter" value="${temp.value+map2003Counter }"></c:set>
						<td>${temp.value }</td>
					</c:forEach>
					<td style="color: red">${map20030 }</td>
					<td style="color: red">${map20031 }</td>
					<td style="color: red">${map20032 }</td>
					<td style="color: red">${map20033 }</td>
					<td style="color: red">${map2003Low }</td>
					<td style="color: red">${map2003High }</td>
					<td style="color: red">${map2003Counter }</td>
				</tr>
			</c:if>
		</c:forEach>
		
		
		<tr>
			<td style="color: green">近三年平均值</td>
			<c:forEach items="${ map.map2012}" var="temp">
					<td  style="color: blue">
					<fmt:formatNumber value="${(map.map2013[temp.key] +map.map2012[temp.key] +map.map2011[temp.key])/3.0}" type="number" pattern="#0.0"/>
					</td>
			</c:forEach>
			<td style="color: red">&nbsp;</td>
			<td style="color: red">&nbsp;</td>
			<td style="color: red">&nbsp;</td>
			<td style="color: red">&nbsp;</td>
			<td style="color: red">&nbsp;</td>
			<td style="color: red">&nbsp;</td>
			<td style="color: red">&nbsp;</td>
		</tr>
		
		
		</table>
		<br/><br/>
		
		
		<div style="margin-left: 8px;float: left;"> 
	        <div id="jqChart140" style="width: 500px; height: 300px;">
	        </div>
	    </div>
		
		
		<a href="javascript:history.go(-1);" style="margin-left: 200px;"><b><button>返回</button></b></a>
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
</body>
</html>