<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"><meta name="renderer" content="webkit">

    <title>素材火www.sucaihuo.com - 登录</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link href="css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css?v=4.3.0" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=2.2.0" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">H+</h1>

            </div>
            <h3>欢迎使用 H+</h3>

            <form  class="m-t" role="form" name="loginForm" action="User" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="用户名"  name="username" required="">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="密码" name="password" required="">
                </div>
                <div>
                <s:fielderror/><!-- 显示表单验证的出错信息 -->
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">登 录</button>
                
                <p class="text-muted text-center"> <a href="login.html#"><small>忘记密码了？</small></a> | <a href="register.jsp">注册一个新账号</a>
                </p>
                
                
            </form>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js?v=3.4.0"></script>

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script><!--统计代码，可删除-->

</body>

</html>
