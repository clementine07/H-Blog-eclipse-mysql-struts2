<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 博客</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="wrapper wrapper-content animated fadeInUp">
        <div class="row">
            <div class="col-sm-12">

                <div class="ibox">
                    <div class="ibox-title">
                        <h5>所有博客</h5>
                        <div class="ibox-tools">
                            <a href="form_markdown.jsp" class="btn btn-primary btn-xs">创建新博客</a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="row m-b-sm m-t-sm">
                            <div class="col-md-1">
                                <button type="button" id="loading-example-btn" class="btn btn-white btn-sm"><i class="fa fa-refresh"></i> 刷新</button>
                            </div>
                            <s:form action="./Search" method="post">
                            <div class="col-md-11">
                                <div class="input-group">
                                    <input type="text" placeholder="请输入博客名称" class="input-sm form-control" name="searchtitle"> <span class="input-group-btn">
                                        <input type="hidden" name="username" value="${sessionScope.searchUserName}">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                </div>
                            </div>
                            </s:form>
                        </div>

                        <div class="project-list">
                            <table class="table table-hover">                         
                                <tbody>                
                                <s:iterator value="blogs">
                                    <tr>
                                        <td class="project-status">
                                            <span class="label label-primary"><s:property value="label" /> 
                                        </td>
                                        <td class="project-title">
                                           <a  href='<s:url  action="View"><s:param  name="id"
											value="id" /></s:url>'>
											<s:property value="title" />
											</a>
                                            <br/>
                                            <small>创建于 <s:property value="time" /></small>
                                        </td>
                                        <td class="project-completion">
                                                <Strong>作者： <s:property value="username" /></Strong>                                            
                                        </td>
                                        <td class="project-completion">
                                                <small>阅读： <s:property value="read_times" /></small>
                                                <div class="progress progress-mini">                                                   
                                                <div style='width: <s:property value="read_times" />%;' class="progress-bar"></div>
                                            </div>
                                        </td>
                                        <td class="project-completion">
                                                <small>评论： <s:property value="comment" /></small>
                                                <div class="progress progress-mini">                                                   
                                                <div style='width: <s:property value="comment" />%;' class="progress-bar"></div>
                                            </div>
                                        </td>
                                        <!--判定  本人博客才有修改权限  -->
                                        <s:if test="username == #session.loginUserName" >
                                        <td class="project-actions">                                           
                                           <a  href='<s:url  action="Edit"><s:param  name="id"	value="id" /></s:url>' class="btn btn-white btn-sm">
                                           <i class="fa fa-pencil"></i> 编辑 </a>   
                                            <a  href='<s:url  action="soft_delete"><s:param  name="id" value="id" /></s:url>'  class="btn btn-white btn-sm">
                                            <i class="fa fa-folder"></i> 删除 </a>                                         
                                        </td>
                                        </s:if> 
                                    </tr>     
                                                                                                     
                                    </s:iterator>                                  
                                    </tbody>
                                    
                                </table>
                            </div>
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


    <script>
        $(document).ready(function(){

            $('#loading-example-btn').click(function () {
                btn = $(this);
                simpleLoad(btn, true)

                // Ajax example
//                $.ajax().always(function () {
//                    simpleLoad($(this), false)
//                });

                simpleLoad(btn, false)
            });
        });

        function simpleLoad(btn, state) {
            if (state) {
                btn.children().addClass('fa-spin');
                btn.contents().last().replaceWith(" Loading");
            } else {
                setTimeout(function () {
                    btn.children().removeClass('fa-spin');
                    btn.contents().last().replaceWith(" Refresh");
                }, 2000);
            }
        }
    </script>

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script><!--统计代码，可删除-->

    </body>
</html>
