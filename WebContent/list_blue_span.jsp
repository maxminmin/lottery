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
<title>蓝球跨度图表</title>
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
                title: { text: '蓝球跨度图表' },//图表标题
                border: { strokeStyle: '#6ba851' },//边线颜色
                background: background,/*背景渐变色的调整*/
                animation: { duration: 1 },//动画效果
                axes: [/*此处是对轴线的一些优化*/
                        {
                            location: 'left',
                            minimum: 0,
                            maximum: 16,
                            interval: 1
                        }
                      ],
                series: [
                            {
                                title:"蓝球跨度图表",
                                type: 'column',
                                data: [
                                      <c:forEach items="${ map}" var="temp" varStatus="idx">
                                      		<c:if test="${idx.index==(fn:length(map)-1)}">
                                      			['${temp.key}',  ${temp.value}]
                                      		</c:if>
                                      		<c:if test="${idx.index!=(fn:length(map)-1)}">
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
<form action="${pageContext.request.contextPath }/BlueSpanServlet" method="post">
蓝球跨度图表查询期数：
<select name="counter">
	<option value="16">16</option>
	<option value="30">30</option>
	<option value="50">50</option>
	<option value="100">100</option>
	<option value="2000000">全部</option>
</select>
<input type="submit" value="提交">
</form>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
	<div style="margin-left: 8px;float: left;">
        <div id="jqChart" style="width: 1600px; height: 500px;margin-left: 8px;">
        </div>
    </div>
    
   

<br/>
<br/>

		
</body>
</html>