<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE  html  PUBLIC  "-//W3C//DTD  XHTML  1.0  Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 基本表单</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
	
    <div class="wrapper wrapper-content animated fadeInRight">   
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                    <s:if test="null == blog">
                         <h5>Add Blog </h5>
                         </s:if>
    <s:else>
    <h5>Edit Blog </h5>
    </s:else>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">                               
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                     <form method="get" class="form-horizontal" action="Add" method="post">
                     <%--    <s:form  class="form-horizontal" method="post" >  --%>                                                    
                      <!--  <input type="text" hidden="hidden" class="form-control" name="blog.comment" > -->
                      <s:hidden name="blog.id"></s:hidden>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">标题</label>
                                <div class="col-sm-10">
                                <s:textfield name="blog.title"  class="form-control" />
                           <!--          <input type="text" placeholder="" class="form-control" name="blog.title" > -->
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">时间</label>
                                <div class="col-sm-10">
                                <s:textfield name="blog.time" />
                                  <!--   <input type="text" placeholder="" class="form-control" name="blog.<s:textfield name="blog.title" />" > -->
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <textarea  data-provide="markdown" rows="10" value="<s:property value="blog.data"/>"></textarea>
                          <%--  <s:textarea  data-provide="markdown" rows=lue"10" name="blog.data"></s:textarea> --%>
                            <!-- <div class="form-group">
                                <label class="col-sm-2 control-label">内容</label>
                                <div class="col-sm-10">
                                    <input type="text" placeholder="" class="form-control" name="blog.data" >
                                </div>
                            </div> -->
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">标签</label>
                                <div class="col-sm-10">
                                   <s:textfield name="blog.label" />
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>                     
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit">保存内容</button>
                                    <button class="btn btn-white" type="submit">取消</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

    <!-- 全局js -->
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>

    <!-- 自定义js -->
    <script src="js/content.js?v=1.0.0"></script>

    <!-- iCheck -->
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <!--统计代码，可删除-->

</body>

</html>
