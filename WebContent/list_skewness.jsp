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
<title>偏态</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/jqChartJQueryPlugin/css/jquery.jqChart.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/jqChartJQueryPlugin/css/jquery.jqRangeSlider.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/jqChartJQueryPlugin/themes/smoothness/jquery-ui-1.8.21.css" />
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
                title: { text: '和值小于70的偏态图表' },//图表标题
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
            
            $('#jqChart120').jqChart({
                title: { text: '和值大于120的偏态图表' },//图表标题
                border: { strokeStyle: '#6ba851' },//边线颜色
                background: background,/*背景渐变色的调整*/
                animation: { duration: 1 },//动画效果
                axes: [/*此处是对轴线的一些优化*/
                        {
                            location: 'left',
                            minimum: 1,
                            maximum: 40,
                            interval: 5
                        }
                      ],
                series: [
                            {
                                title:"",
                                type: 'line',
                                data: [
                                      <c:forEach items="${ map['120']}" var="temp" varStatus="idx">
                                      		<c:if test="${idx.index==(fn:length(map['120'])-1)}">
                                      			['${temp.key}年',  ${temp.value}]
                                      		</c:if>
                                      		<c:if test="${idx.index!=(fn:length(map['120'])-1)}">
                                      			['${temp.key}年',  ${temp.value}],
                                      		</c:if>
                                      </c:forEach>
                                ]
                            }
                        ]
            });
            
            $('#jqChart140').jqChart({
                title: { text: '和值大于140的偏态图表' },//图表标题
                border: { strokeStyle: '#6ba851' },//边线颜色
                background: background,/*背景渐变色的调整*/
                animation: { duration: 1 },//动画效果
                axes: [/*此处是对轴线的一些优化*/
                        {
                            location: 'left',
                            minimum: 1,
                            maximum: 10,
                            interval: 1
                        }
                      ],
                series: [
                            {
                                title:"",
                                type: 'column',
                                data: [
                                      <c:forEach items="${ map['140']}" var="temp" varStatus="idx">
                                      		<c:if test="${idx.index==(fn:length(map['140'])-1)}">
                                      			['${temp.key}年',  ${temp.value}]
                                      		</c:if>
                                      		<c:if test="${idx.index!=(fn:length(map['140'])-1)}">
                                      			['${temp.key}年',  ${temp.value}],
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


<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td colspan="4" align="center"><b style="color: red;">偏态统计</b></td>
		</tr>
		<tr>
			<td style="color: green">年份</td>
			<td style="color: green">小于70的和值</td>
			<td style="color: green">大于等于140的和值</td>
			<td style="color: green">大于等于120的和值</td>
		</tr>
		<c:set var="map140" value="${map['140'] }"></c:set>
		<c:set var="map120" value="${map['120'] }"></c:set>
		<c:set var="count70" value="0"></c:set>
		<c:set var="count140" value="0"></c:set>
		<c:set var="count120" value="0"></c:set>
		<c:forEach items="${ map['70']}" var="temp" varStatus="idx">
		<c:set var="key" value="${temp.key }"></c:set>
			<tr>
					<td>${temp.key }</td>
					<td>${temp.value }</td>
					<td>${map140[key] }</td>
					<td>${map120[key] }</td>
			</tr>
			<c:if test="${!(idx.index==0||idx.index==1||(idx.index==fn:length(map['70'])-1)) }">
				<c:set var="count70" value="${count70+temp.value }"></c:set>
				<c:set var="count140" value="${count140+map140[key] }"></c:set>
				<c:set var="count120" value="${count120+map120[key] }"></c:set>
			</c:if>
		</c:forEach>
		<tr>
			<td style="color: green">05年后的平均数(不包含今年)</td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${(count70)/(fn:length(map140)-3.0) }"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${(count140)/(fn:length(map140)-3.0) }"/></td>
			<td style="color: green"><fmt:formatNumber pattern="##.00" value="${(count120)/(fn:length(map140)-3.0) }"/></td>
		</tr>
		
</table>	
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
	<div style="margin-left: 8px;float: left;">
        <div id="jqChart" style="width: 500px; height: 300px;margin-left: 8px;">
        </div>
    </div>
    
    <div style="margin-left: 8px;float: left; ">
        <div id="jqChart120" style="width: 500px; height: 300px;">
        </div>
    </div>
    
    <div style="margin-left: 8px;float: left;"> 
        <div id="jqChart140" style="width: 500px; height: 300px;">
        </div>
    </div>

<br/>
<br/>

		<br/>
		<div style="margin-left: 50px;margin-top: 400px;">&nbsp;</div>
		<c:forEach items="${mapDetail}" var="temp" varStatus="idx">
			<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
				<tr>
					<td colspan="2" align="center"><b style="color: red;">${temp.key=='70'?'和值小于70':(temp.key=='120'?'和值大于120':'和值大于140') }偏态详细</b></td>
				</tr>
				<tr>
					<td>期数</td>
					<td>详细</td>
				</tr>
				<c:forEach items="${temp.value}" var="temps">
					<tr>
						<td>${temps.key }</td>
						<td>${temps.value }</td>
					</tr>
				</c:forEach>
			</table>
		</c:forEach>	
</body>
</html>