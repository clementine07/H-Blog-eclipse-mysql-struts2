<%@ page language="java" contentType="text/html; charset=utf-8"  %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE  html  PUBLIC  "-//W3C//DTD  XHTML  1.0  Transitional//EN">
<html>

<head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>H+博客 - Bootstrap3 Markdown编辑器</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="h/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="h/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="h/css/animate.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="h/css/plugins/markdown/bootstrap-markdown.min.css" />
    <link href="h/css/style.css?v=4.1.0" rel="stylesheet">

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
							     <input  type="text" placeholder="Title" class="form-control" name="blog.title" value="<s:property value="blog.title"/>"/>
							     </div>
							    <br/>
                                <textarea  data-provide="markdown" rows="10" name="blog.data" ><s:property value="blog.data"/></textarea>  <!-- value放到2个textarea之间  -->                          
                                <br/> 
                                <div class="form-group">
                                <label class="col-sm-2 control-label">标签</label>
                                <div class="ibox-content">
                                    <input type="text" placeholder="" class="form-control" name="blog.label" value="<s:property value="blog.label"/>"/>                               
                                </div>
                            </div>
                            <hr/>
                            <!-- 一些默认不能修改的参数 -->
                            <input type="hidden" placeholder="" class="form-control"  id ="time" name="blog.time" >
                            <input type="hidden" placeholder="" class="form-control" name="blog.status" value="0">
                             <input type="hidden" placeholder="" class="form-control" name="blog.read_times" value="0">
                              <input type="hidden" placeholder="" class="form-control" name="blog.comment" value="0">
                              <input type="hidden" placeholder="" class="form-control" name="blog.id" value="<s:property value="blog.id"/>" >
                        	<script>
							 var now = new Date(); 
							 time.value=now.getFullYear() + "/"+ (now.getMonth()+1)+"/"+now.getDate()+" "+now.getHours()+":"+now.getMinutes(); 
							</script>                             
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
    <script src="h/js/jquery.min.js?v=2.1.4"></script>
    <script src="h/js/bootstrap.min.js?v=3.3.6"></script>

    <!-- 自定义js -->
    <script src="h/js/content.js?v=1.0.0"></script>

    <!-- simditor -->
    <script type="text/javascript" src="h/js/plugins/markdown/markdown.js"></script>
    <script type="text/javascript" src="h/js/plugins/markdown/to-markdown.js"></script>
    <script type="text/javascript" src="h/js/plugins/markdown/bootstrap-markdown.js"></script>
    <script type="text/javascript" src="h/js/plugins/markdown/bootstrap-markdown.zh.js"></script>


    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <!--统计代码，可删除-->
</body>

</html>
