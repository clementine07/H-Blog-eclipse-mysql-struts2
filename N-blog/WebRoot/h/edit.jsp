<%@ page language="java" contentType="text/html; charset=utf-8"  %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE  html  PUBLIC  "-//W3C//DTD  XHTML  1.0  Transitional//EN">
<html>

<head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>H+博客 - Bootstrap3 Markdown编辑器</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/plugins/markdown/bootstrap-markdown.min.css" />
    <link href="css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>Markdown文本编辑器</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="form_editors.html#">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-user">
                                        <li><a href="form_editors.html#">选项1</a>
                                        </li>
                                        <li><a href="form_editors.html#">选项2</a>
                                        </li>
                                    </ul>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </div>
                            </div>
                               <form action="Change">
                          
                               <div class="form-group">				   
							     <div class="ibox-content">
							     <input  type="text" placeholder="Title" class="form-control" name="blog.title" />
							    <br/>
                                <textarea  data-provide="markdown" rows="10" name="blog.data"></textarea>
                                   <%-- <s:textarea   data-provide="markdown" rows="10" name="blog.title"  />    --%>
                                   <br/> 
                                <div class="form-group">
                                <label class="col-sm-2 control-label">标签</label>
                                <div class="col-sm-10">
                                    <input type="text" placeholder="" class="form-control" name="blog.label" >
                                    <input type="hidden" class="form-control" name="blog.username" value="${sessionScope.loginUserName}" >
                                </div>
                            </div>
                            <hr/>
                            <input type="hidden" placeholder="" class="form-control"  id ="time" name="blog.time" >
                        	<script>
							 var now = new Date(); 
							 time.value=now.getFullYear() + "/"+ (now.getMonth()+1)+"/"+now.getDate()+" "+now.getHours()+":"+now.getMinutes(); 
							 </script>                
                               <!--  <div class="checkbox i-checks">
                                        <label>
                                            <input type="checkbox" value="0" name="blog.status"> <i></i> 发布</label>
                                    </div>  
							    <hr/>
							    <div class="checkbox i-checks">
                                        <label>
                                            <input type="checkbox" value="-1" name="blog.status"> <i></i> 暂存到草稿箱</label>
                                    </div>  
							    <hr/> -->
							     <!-- div class="radio">
                                        <label>
                                            <input type="radio" checked="" id="optionsRadios1" name="blog.status">发表</label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio"   value="2" id="optionsRadios2" name="blog.status">暂存</label>
                                    </div> -->
                                  <%--    <div class="col-sm-10">
                                    <select class="form-control m-b" name="blog.status"">
                                        <option value="0">选项 1</option>
                                        <option value="2">暂存</option>
                                     
                                    </select>
                                    </div> --%>
                                    <br/>
                             
							    <button type="submit" class="btn">发布</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">

                        
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

    <!-- simditor -->
    <script type="text/javascript" src="js/plugins/markdown/markdown.js"></script>
    <script type="text/javascript" src="js/plugins/markdown/to-markdown.js"></script>
    <script type="text/javascript" src="js/plugins/markdown/bootstrap-markdown.js"></script>
    <script type="text/javascript" src="js/plugins/markdown/bootstrap-markdown.zh.js"></script>


    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <!--统计代码，可删除-->
</body>

</html>
