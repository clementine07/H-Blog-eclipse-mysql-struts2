<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%-- <%
				if(request.getSession().getAttribute("loginUserName")==null && request.getSession().getAttribute("SearchUserName")!=null)
				{
					%>				
					<script>window.location.href='List2?searchname=${sessionScope.SearchUserName }';</script> 
					<% 
						
				}
				if(request.getSession().getAttribute("loginUserName")!=null && request.getSession().getAttribute("SearchUserName")!=null)
				{
					%>
					<script>window.location.href='List2?searchname=${sessionScope.SearchUserName}';</script>
					<% 
				}
				else
				{
				%>	
				<script>window.location.href='List2';</script>
				<% 
				}				
				%> --%>
<!--直接跳转  -->
<script>window.location.href='List2?searchname=${sessionScope.SearchUserName }';</script> 
</body>
</html>