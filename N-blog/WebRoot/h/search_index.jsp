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
<%
				//未登录时，访问index.jsp自动跳转到login.jsp
				if(request.getSession().getAttribute("loginUserName")==null && request.getSession().getAttribute("searchUserName")==null)
				{
					%>				
					<script>window.location.href='404';</script> 
					<% 
						
				}
				//登录时，没有search_name返回search_data
				if(request.getSession().getAttribute("loginUserName")!=null && request.getSession().getAttribute("searchUserName")==null)
				{
					%>
					<script>window.location.href='List2?searchname=${sessionScope.loginUserName}';</script>
					<% 
				}
				//登录时，根据search_name返回search_data
				if(request.getSession().getAttribute("loginUserName")!=null && request.getSession().getAttribute("searchUserName")!=null)
				{
					%>
					<script>window.location.href='List2?searchname=${sessionScope.searchUserName}';</script>
					<% 
				}
				//查询自己的时候返回自己
				if(request.getSession().getAttribute("loginUserName")!=null && request.getSession().getAttribute("searchUserName")!=null
						&&request.getSession().getAttribute("loginUserName")==request.getSession().getAttribute("searchUserName"))
				{
					%>
					<script>window.location.href='List2?searchname=${sessionScope.loginUserName}';</script>
					<% 
				}
				else
				{
				%>	
				<script>window.location.href='List2';</script>
				<% 
				}				
				%>
<!--直接跳转  -->
<%-- <script>window.location.href='List2?searchname=${sessionScope.searchUserName }';</script>  --%>
</body>
</html>