<%@page import="com.cineplex.tools.NumberFormatter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cineplex.model.impl.WaiterModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="mheader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>计划成功率一览</title>
<style>
td, tr, th {
	border-bottom: 1px solid #AEDEF2;
	border-left: 1px solid #AEDEF2;
	border-right: 1px solid #AEDEF2;
	border-top: 1px solid #AEDEF2;
}

th {
	width: 17%;
}
</style>
</head>
<body>
	<table class="mytable"  >
		<tr>
			<th>服务员编号</th>
			<th>计划通过率</th>
		</tr>
		<%
			ArrayList<String> waiters = WaiterModel.getAllWaiters();
		%>
		<%
			for(String waiterId : waiters){
		%>
			<tr>
				<td><%=waiterId %>  </td>
				<td><%=NumberFormatter.percentage(WaiterModel.getWaiterPlanSuccessRate(waiterId)) %></td>
			</tr>
		<%
			}
		%>
	
	
	
	</table>
</body>
</html>