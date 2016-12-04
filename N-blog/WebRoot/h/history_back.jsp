<!--返回上一页  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- <script>history.go(-2); 
document.URL=location.href
//location.reload(); </script> -->
<script>window.location.href='h/List2?searchname=${sessionScope.loginUserName}';</script>
</body>
</html>