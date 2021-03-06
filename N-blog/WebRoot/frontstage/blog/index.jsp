<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>博客</title>
<meta name="keywords" content="Wedding,婚礼主题模板,爱情模板,爱情网站模板,情人节,情人节个人网站模板" />
<meta name="description" content="这是一个有关Wedding的html5 css3 网站模板适用于各种婚礼主题" />
<link href="css/styles.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<header>
 <nav id="nav">
   <ul>
    <li><a href="/">博客首页</a></li>
            <li><a href="/archive" target="_blank">存档</a></li>
            <li><a href="/tags"  target="_blank">标签</a></li>
            <li><a href="/jstt/" target="_blank">我们的故事</a></li>
            <li><a href="/upload" target="_blank">文件上传</a></li>
            <li><a href="/news/case/" target="_blank">个人资料</a></li>
           
            <li><a href="/post" target="_blank">发表博客</a></li>
            <li><a href="/logout" target="_blank">退出</a></li>
     
            <li><a href="frontstage/login/login.jsp" target="_blank">登录</a></li>
            <li><a href="/reg" target="_blank">注册账号</a></li>
           
   </ul>
  <script src="js/silder.js"></script><!--获取当前页导航 高亮显示标题-->
 </nav>
 </header>
 <div class="mainContent">
    <aside>
      <div class="avatar">
        <a href="#"><span>青轻飞扬</span></a>
      </div>
      <section class="topspaceinfo">
        <h1>执子之手，与子偕老</h1>
        <p>于千万人之中，我遇见了我所遇见的人....</p>
      </section>
      <div class="userinfo"> 
        <p class="q-fans"> 粉丝：<a href="/" target="_blank">167</a></p> 
        <p class="btns"><a href="/" target="_blank" >私信</a><a href="/" target="_blank">相册</a><a href="/" target="_blank">存档</a></p>   
      </div>
      <section class="newpic">
         <h2>最新照片</h2>
         <ul>
           <li><a href="/"><img src="images/01.jpg"></a></li>
           <li><a href="/"><img src="images/02.jpg"></a></li>
           <li><a href="/"><img src="images/03.jpg"></a></li>
           <li><a href="/"><img src="images/04.jpg"></a></li>
           <li><a href="/"><img src="images/05.jpg"></a></li>
           <li><a href="/"><img src="images/06.jpg"></a></li>
           <li><a href="/"><img src="images/07.jpg"></a></li>
           <li><a href="/"><img src="images/08.jpg"></a></li>
         </ul>
      </section>
      <section class="taglist">
         <h2>全部标签</h2>
         <ul>
           <li><a href="/">青空</a></li>
           <li><a href="/">情感聊吧</a></li>
           <li><a href="/">study</a></li>
           <li><a href="/">青青唠叨</a></li>
        </ul>
      </section>
    </aside>
    <s:form action="Remove" method="post">
    <div class="blogitem">
    
      <article>
        <h2 class="title"><a href="/"><s:property value="title" /></a></h2>
        <ul class="text">
          <p> <s:property value="data" /></p>
        </ul>
        <div class="textfoot">
          <a href="/">阅读全文</a><a href="/">评论</a><a href="/">转载</a>
         	<a href='<s:url action="Remove">
          	<s:param name="id" value="id" />
          	</s:url>'>
          	删除</a> 
        </div>
      </article> 
     
      <article>
        <h2 class="title"><a href="/">岁月留痕——我的2010</a></h2>
        <ul class="text">
          <p>A面——岁月留痕之时光</p>
          <p>每逢新旧年交替时候，我就被笼罩在一股茫然的思绪里，逃也逃不脱，避也避不开，唯有让心事在静静流逝的时光里苍茫成河。</p>
          <p>是从什么时候开始的呢，我又变得如此感时伤怀？我很羡慕那些在年终盘点总结的人们，过去的一年于他们来说，是大刀阔斧的一年，是硕果累累的一年。再不济的话，也是豪情万丈的一年。而在我那逝去的时光里，平静如水，不起一丝波澜，一年又一年。我没有盘点，因为我没有波澜壮阔；我不会去总结，因为我的总结从来就没有逼近我的心灵。我知道这于我来说，显得多么无厘头。</p>
          <p class="textimg"><img src="images/text01.jpg"></p>
          <p>我喜欢这样安静地坐下来，想一些似有若无的心事。尽量不去想那些飞逝的时光，尽量不去想那些形色匆忙的脚步，似乎是在害怕，在这高速运转的时空里，自己有一天会化作一堆虚无。还记得那一部《岁月神偷》的电影吗？真是要感谢来自香港的导演罗启锐，影片给我们芸芸众生留下太多的唏嘘。在如水一般逝去的时光里，皱纹爬上你的眼角，白发蔓延我的双鬓。岁月才是最好的神偷，偷走了我的青春和你的美好。</p>
          <p>就任这时光慢慢流淌吧，对于大多数人来说，我们无非就是浩瀚时空的一些微尘。虎年走了又怎样</p>
        </ul>
        <div class="textfoot">
          <a href="/">阅读全文</a><a href="/">评论</a><a href="/">转载</a>
        </div>
      </article>
      <div class="pages"><span>1</span><a href="/" hidefocus="">2</a><a href="/" hidefocus="">3</a><a href="/" class="next">下一页&gt;&gt;</a></div>
    </div>
 	 </s:form>
 </div>
<footer>
   <div class="footavatar">
     <img src="images/photo.jpg" class="footphoto">
     <ul class="footinfo">
       <p class="fname"><a href="/dancesmile" >青轻飞扬</a>  </p>
       <p class="finfo">性别：女 年龄：25岁</p>
       <p>现居：四川成都</p></ul>
   </div>
   <section class="visitor">
     <h2>最近访客</h2>
      <ul>
        <li><a href="/"><img src="images/s0.jpg"></a></li>
        <li><a href="/"><img src="images/s1.jpg"></a></li>
        <li><a href="/"><img src="images/s2.jpg"></a></li>
        <li><a href="/"><img src="images/s3.jpg"></a></li>
        <li><a href="/"><img src="images/s5.jpg"></a></li>
        <li><a href="/"><img src="images/s6.jpg"></a></li>
        <li><a href="/"><img src="images/s7.jpg"></a></li>
        <li><a href="/"><img src="images/s8.jpg"></a></li>
      </ul>
   </section>
   <div class="Copyright">
     <ul>
       <a href="/">帮助中心</a><a href="/">空间客服</a><a href="/">投诉中心</a><a href="/">空间协议</a>
     </ul>
     <p>Design by DanceSmile</p>
   </div>
 </footer>
</body>
</html>