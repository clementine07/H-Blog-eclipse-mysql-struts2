<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- <script type="text/javascript">
function {
// if (confirm("您确定要退出系统吗？"))
top.location = "Login.php";
return false;
}
</script> -->
<body>
     <%
       /* session.invalidate(); *///清除所有的session
       session.removeAttribute("loginUserName");//清除指定的session
     /*   response.sendRedirect('index?searchname=${sessionScope.searcnUserName}"'); */
       
      %>
      <script>window.location.href='index?searchname=${sessionScope.searchUserName}';</script>
</body>
</html>