<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<table class="list" cellspacing="0" cellpadding="0" border="0"
	align="left">
	<c:forEach items="${map }" var="temp">
		<tr>
			<td colspan="2">(与往期有相同${temp.key }个共${fn:length(temp.value) }组)</td>
		</tr>
		<c:forEach items="${temp.value }" var="temps">
			<tr>
				<td>${temps.num}</td>
				<td>${temps.idNo}</td>
			</tr>
		</c:forEach>
	</c:forEach>
</table>