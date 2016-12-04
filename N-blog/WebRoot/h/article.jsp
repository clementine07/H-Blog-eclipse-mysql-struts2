<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 文章页面</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="h/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="h/css/animate.css" rel="stylesheet">
    <link href="h/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content  animated fadeInRight article">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="ibox">
                    <div class="ibox-content">
                        <div class="pull-right">
                            <%-- <button class="btn btn-white btn-xs" type="button"> <s:property value="blog.label" /></button>    --%>  
                            <td class="project-completion">
                                                <small>阅读： <s:property value="blog.read_times" /></small>
                                                <div class="progress progress-mini">                                                   
                                                <div style='width: <s:property value="blog.read_times" />%;' class="progress-bar"></div>
                                            </div>
                                        </td>
                                        <td class="project-completion">
                                                <small>评论： <s:property value="blog.comment" /></small>
                                                <div class="progress progress-mini">                                                   
                                                <div style='width: <s:property value="blog.comment" />%;' class="progress-bar"></div>
                                            </div>
                                        </td>                      
                            <a  href='<s:url  action="Load"><s:param  name="id"	value="id" /></s:url>' class="btn btn-white btn-sm">
                            <i class="fa fa-pencil"></i> 编辑 </a>   
                            <a  href='<s:url  action="Remove"><s:param  name="id" value="id" /></s:url>'  class="btn btn-white btn-sm">
                           <i class="fa fa-folder"></i> 删除 </a> 
                        </div>
                        <div class="text-center article-title">
                            <h1>
                                    <s:property value="blog.title" />
                                </h1>
                        </div>
                        <p>
                        <s:property value="blog.data" />
                        </p>
                        <p>
                            在不少旁观者的眼里，智能化几乎成了一种避之唯恐不及的“瘟疫”，开始攀附上大大小小、各式各样的工具和设备，从水杯、灯泡、体重秤这样的小物件，再到冰箱、洗衣机这些生活中的庞然大物。
                        </p>
                        <p>
                            兜兜转转之后，这场“瘟疫”又找上了在生活中不那么起眼的自行车。然而，在搭上智能化的顺风车之前，你可知道自行车的历史？虽然，在乐视超级自行车的发布会上，它已经用了自行车史上有着重要地位的三个名字——斯塔利、西夫拉克、阿尔普迪埃——来命名自家的自行车，但那远远不够。Gizmodo 为我们梳理了自行车发展的关键节点。
                        </p>
                        <p>
                            在开始之前，我们先来看看丹麦的设计师制作的动画，一分钟看完自行车近 200 年的演变。
                        </p>
                        <p>
                            比较公认的说法是，第一辆自行车由法国手工艺人西夫拉克（Médé de Sivrac）设计，在两个轮子上安装了支架并配上马鞍，前进的话需要用脚蹬地提供动力。这还只是一个很简单的雏形，没有方向舵，转弯的时候需要骑行者下车抬起前轮，稳定性也不好。
                        </p>
                        <p>
                            德国人杜莱斯（Karl Drais von Sauerbronn）制作了一辆和西夫拉克的设计相近的两轮车子，增加了车把，可以改变行进中的方向，速度可以达到 15km/h。不过，还是需要靠双脚蹬地提供动力。
                        </p>
                        <p>
                            这时候第一辆真正意义上的自行车诞生了，是由苏格兰铁匠麦克米伦（Kirkpatrik Macmillan）设计的，它还有一个专门的名字——Velocipede。
                        </p>
                        <p>
                            在不少旁观者的眼里，智能化几乎成了一种避之唯恐不及的“瘟疫”，开始攀附上大大小小、各式各样的工具和设备，从水杯、灯泡、体重秤这样的小物件，再到冰箱、洗衣机这些生活中的庞然大物。
                        </p>
                        <p>
                            兜兜转转之后，这场“瘟疫”又找上了在生活中不那么起眼的自行车。然而，在搭上智能化的顺风车之前，你可知道自行车的历史？虽然，在乐视超级自行车的发布会上，它已经用了自行车史上有着重要地位的三个名字——斯塔利、西夫拉克、阿尔普迪埃——来命名自家的自行车，但那远远不够。Gizmodo 为我们梳理了自行车发展的关键节点。
                        </p>
                        <p>
                            在开始之前，我们先来看看丹麦的设计师制作的动画，一分钟看完自行车近 200 年的演变。
                        </p>
                        <p>
                            比较公认的说法是，第一辆自行车由法国手工艺人西夫拉克（Médé de Sivrac）设计，在两个轮子上安装了支架并配上马鞍，前进的话需要用脚蹬地提供动力。这还只是一个很简单的雏形，没有方向舵，转弯的时候需要骑行者下车抬起前轮，稳定性也不好。
                        </p>
                        <p>
                            德国人杜莱斯（Karl Drais von Sauerbronn）制作了一辆和西夫拉克的设计相近的两轮车子，增加了车把，可以改变行进中的方向，速度可以达到 15km/h。不过，还是需要靠双脚蹬地提供动力。
                        </p>
                        <p>
                            这时候第一辆真正意义上的自行车诞生了，是由苏格兰铁匠麦克米伦（Kirkpatrik Macmillan）设计的，它还有一个专门的名字——Velocipede。
                        </p>
                        <p>
                            在不少旁观者的眼里，智能化几乎成了一种避之唯恐不及的“瘟疫”，开始攀附上大大小小、各式各样的工具和设备，从水杯、灯泡、体重秤这样的小物件，再到冰箱、洗衣机这些生活中的庞然大物。
                        </p>
                        <p>
                            兜兜转转之后，这场“瘟疫”又找上了在生活中不那么起眼的自行车。然而，在搭上智能化的顺风车之前，你可知道自行车的历史？虽然，在乐视超级自行车的发布会上，它已经用了自行车史上有着重要地位的三个名字——斯塔利、西夫拉克、阿尔普迪埃——来命名自家的自行车，但那远远不够。Gizmodo 为我们梳理了自行车发展的关键节点。
                        </p>
                        <p>
                            在开始之前，我们先来看看丹麦的设计师制作的动画，一分钟看完自行车近 200 年的演变。
                        </p>
                        <p>
                            比较公认的说法是，第一辆自行车由法国手工艺人西夫拉克（Médé de Sivrac）设计，在两个轮子上安装了支架并配上马鞍，前进的话需要用脚蹬地提供动力。这还只是一个很简单的雏形，没有方向舵，转弯的时候需要骑行者下车抬起前轮，稳定性也不好。
                        </p>
                        <p>
                            德国人杜莱斯（Karl Drais von Sauerbronn）制作了一辆和西夫拉克的设计相近的两轮车子，增加了车把，可以改变行进中的方向，速度可以达到 15km/h。不过，还是需要靠双脚蹬地提供动力。
                        </p>
                        <p>
                            这时候第一辆真正意义上的自行车诞生了，是由苏格兰铁匠麦克米伦（Kirkpatrik Macmillan）设计的，它还有一个专门的名字——Velocipede。
                        </p>
                        <p>
                            在不少旁观者的眼里，智能化几乎成了一种避之唯恐不及的“瘟疫”，开始攀附上大大小小、各式各样的工具和设备，从水杯、灯泡、体重秤这样的小物件，再到冰箱、洗衣机这些生活中的庞然大物。
                        </p>
                        <p>
                            兜兜转转之后，这场“瘟疫”又找上了在生活中不那么起眼的自行车。然而，在搭上智能化的顺风车之前，你可知道自行车的历史？虽然，在乐视超级自行车的发布会上，它已经用了自行车史上有着重要地位的三个名字——斯塔利、西夫拉克、阿尔普迪埃——来命名自家的自行车，但那远远不够。Gizmodo 为我们梳理了自行车发展的关键节点。
                        </p>
                        <p>
                            在开始之前，我们先来看看丹麦的设计师制作的动画，一分钟看完自行车近 200 年的演变。
                        </p>
                        <p>
                            比较公认的说法是，第一辆自行车由法国手工艺人西夫拉克（Médé de Sivrac）设计，在两个轮子上安装了支架并配上马鞍，前进的话需要用脚蹬地提供动力。这还只是一个很简单的雏形，没有方向舵，转弯的时候需要骑行者下车抬起前轮，稳定性也不好。
                        </p>
                        <p>
                            德国人杜莱斯（Karl Drais von Sauerbronn）制作了一辆和西夫拉克的设计相近的两轮车子，增加了车把，可以改变行进中的方向，速度可以达到 15km/h。不过，还是需要靠双脚蹬地提供动力。
                        </p>
                        <p>
                            这时候第一辆真正意义上的自行车诞生了，是由苏格兰铁匠麦克米伦（Kirkpatrik Macmillan）设计的，它还有一个专门的名字——Velocipede。
                        </p>
                        <hr>

                        <div class="row">
                            <div class="col-lg-12">

                                <h2>评论：</h2>
                                <s:if test="comments==null">
                                <s:fielderror/><!-- 显示表单验证的出错信息 -->
                                </s:if>
                                <s:else>
                                <s:iterator value="comments">
                                <div class="social-feed-box">
                                    <div class="social-avatar">
                                        <a href="" class="pull-left">
                                            <img alt="image" src="h/img/a1.jpg">
                                        </a>
                                        <div class="media-body">
                                            <a href="#">
                                                   <s:property value="from" />
                                                </a>
                                            <small class="text-muted"><s:property value="time" /></small>
                                        </div>
                                    </div>
                                    <div class="social-body">
                                        <p>
                                           <s:property value="data" />
                                        </p>
                                    </div>
                                </div>
                                </s:iterator>  
                                </s:else>
                                <%-- <div class="social-feed-box">
                                    <div class="social-avatar">
                                        <a href="" class="pull-left">
                                            <img alt="image" src="h/img/a2.jpg">
                                        </a>
                                        <div class="media-body">
                                            <a href="#">
                                                    避雷范儿
                                                </a>
                                            <small class="text-muted"> 16 小时前</small>
                                        </div>
                                    </div>
                                    <div class="social-body">
                                        <p>
                                            第一个真的好美 就是噪音太大了 挺唯美的意境瞬间变成工厂了
                                        </p>
                                    </div>
                                </div>
                                <div class="social-feed-box">
                                    <div class="social-avatar">
                                        <a href="" class="pull-left">
                                            <img alt="image" src="h/img/a3.jpg">
                                        </a>
                                        <div class="media-body">
                                            <a href="#">
                                                    kamppi
                                                </a>
                                            <small class="text-muted"> 6 小时前</small>
                                        </div>
                                    </div>
                                    <div class="social-body">
                                        <p>
                                            好美的装置艺术，第二个让我想起了海中缓缓游动的鲸鱼。
                                        </p>
                                    </div>
                                </div>
                                </s:iterator>  
                                <div class="social-feed-box">
                                    <div class="social-avatar">
                                        <a href="" class="pull-left">
                                            <img alt="image" src="h/img/a5.jpg">
                                        </a>
                                        <div class="media-body">
                                            <a href="#">
                                                    kamppi
                                                </a>
                                            <small class="text-muted">6 小时前</small>
                                        </div>
                                    </div>
                                    <div class="social-body">
                                        <p>
                                            “Flylight 的灯管并不固定，由一套软件控制：每一个灯管都根据与其它灯管的互动进行移动，就像一群真正的鸟群一样。” 好像介绍的描述不对，灯管是固定的，控制的只是点亮和熄灭的时间，模拟成一团亮点移动
                                        </p>
                                    </div>
                                </div>


                            </div> --%>
                        </div>
						<div class="hr-line-dashed"></div>	
						<div class="row">
                            <div class="col-lg-12">

                                <h2>发表评论：</h2>
                                
                                <form method="get" class="form-horizontal" action="#" method="post">
                     
                      <s:hidden name="blog.id"></s:hidden>                                                       
                            <div class="form-group">
                                <label class="col-sm-2 control-label">用户名：</label>
                                <div class="col-sm-10">     
                                 <textarea id="ccomment" name="comment" class="form-control" required="" aria-required="true"></textarea>                           
                             
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>                                              
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit">发表</button>
                                    <button class="btn btn-white" type="submit">取消</button>
                                </div>
                            </div>
                        </form>
                                  
                                
                                </div>


                            </div>
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


    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <!--统计代码，可删除-->

</body>

</html>
