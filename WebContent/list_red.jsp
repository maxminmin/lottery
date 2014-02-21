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
	<table class="list" cellspacing="0" cellpadding="0" border="0" align="left">
		<tr>
			<td>第一红</td>
			<td><input type="text" value="" name="red"/></td>
		</tr>
		<tr>
			<td>第二红</td>
			<td><input type="text" value="" name="red"/></td>
		</tr>
		<tr>
			<td>第三红</td>
			<td><input type="text" value="" name="red"/></td>
		</tr>
		<tr>
			<td>第四红</td>
			<td><input type="text" value="" name="red"/></td>
		</tr>
		<tr>
			<td>第五红</td>
			<td><input type="text" value="" name="red"/></td>
		</tr>
		<tr>
			<td>第六红</td>
			<td><input type="text" value="" name="red"/></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><input type="submit" value="提交" name="red"/></td>
		</tr>
	</table>
	
	
		<br/><br/>
		<a href="javascript:history.go(-1);" style="margin-left: 200px;"><b><button>返回</button></b></a>
		<br/><br/><span>&nbsp;</span><br/><br/><br/>
</body>
</html>