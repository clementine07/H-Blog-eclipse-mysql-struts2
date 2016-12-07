<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE  html  PUBLIC  "-//W3C//DTD  XHTML  1.0  Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>H+ 后台主题UI框架 - 富头像上传编辑器</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

<link rel="shortcut icon" href="favicon.ico">
<link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">

<link href="css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content">

		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>富头像上传编辑器</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a> <a class="dropdown-toggle" data-toggle="dropdown"
								href="form_editors.html#"> <i class="fa fa-wrench"></i>
							</a>
							<ul class="dropdown-menu dropdown-user">
								<li><a href="form_editors.html#">选项1</a></li>
								<li><a href="form_editors.html#">选项2</a></li>
							</ul>
							<a class="close-link"> <i class="fa fa-times"></i>
							</a>
						</div>
					</div>
					<div class="ibox-content">
						<ul class="nav nav-tabs" id="avatar-tab">
							<li class="active" id="upload"><a href="javascript:;">本地上传</a>
							</li>
							<li id="webcam"><a href="javascript:;">视频拍照</a></li>
							<li id="albums"><a href="javascript:;">相册选取</a></li>
						</ul>
						<div class="m-t m-b">
							<div id="flash1">
								<p id="swf1">
									本组件需要安装Flash Player后才可使用，请从<a
										href="http://www.adobe.com/go/getflashplayer">这里</a>下载安装。
								</p>
							</div>
							<form action="FileUpload" enctype="multipart/form-data"
								method="post">
								<div id="editorPanelButtons" style="display: none">
									<p class="m-t">
										<label class="checkbox-inline"> <input type="checkbox"
											id="src_upload" name="file1">是否上传原图片？
										</label>
									</p>
									<p>
										<!-- <input type="text" name="usename" value="$sessionScope.loginUsername"> <br/>   -->
										<input type="text" name="usename" value="606060"> <br />
										<!--   <input type="file" name="file1"><br/>   -->
										<!--  <a href="uploadAction.action" class="btn btn-w-m btn-primary button_upload"><i class="fa fa-upload"></i> 上传</a> -->
										<input type="submit"
											class="btn btn-w-m btn-primary button_upload" value="提交" /> <a
											href="javascript:;"
											class="btn btn-w-m btn-white button_cancel">取消</a>
									</p>
								</div>
							</form>
							<p id="webcamPanelButton" style="display: none">
								<a href="javascript:;"
									class="btn btn-w-m btn-info button_shutter"><i
									class="fa fa-camera"></i> 拍照</a>
							</p>
							<div id="userAlbums" style="display: none">
								<a href="img/a1.jpg" class="fancybox" title="选取该照片"> <img
									src="img/a1.jpg" alt="示例图片1" />
								</a> <a href="img/a2.jpg" class="fancybox" title="选取该照片"> <img
									src="img/a2.jpg" alt="示例图片2" />
								</a> <a href="img/a3.jpg" class="fancybox" title="选取该照片"> <img
									src="img/a3.jpg" alt="示例图片2" />
								</a> <a href="img/a4.jpg" class="fancybox" title="选取该照片"> <img
									src="img/a4.jpg" alt="示例图片2" />
								</a> <a href="img/a5.jpg" class="fancybox" title="选取该照片"> <img
									src="img/a5.jpg" alt="示例图片2" />
								</a> <a href="img/a6.jpg" class="fancybox" title="选取该照片"> <img
									src="img/a6.jpg" alt="示例图片2" />
								</a> <a href="img/a7.jpg" class="fancybox" title="选取该照片"> <img
									src="img/a7.jpg" alt="示例图片2" />
								</a> <a href="img/a8.jpg" class="fancybox" title="选取该照片"> <img
									src="img/a8.jpg" alt="示例图片2" />
								</a> <a href="img/a9.jpg" class="fancybox" title="选取该照片"> <img
									src="img/a9.jpg" alt="示例图片2" />
								</a>>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins"></div>
			</div>
		</div>
	</div>

	<!-- 全局js -->
	<script src="js/jquery.min.js?v=2.1.4"></script>
	<script src="js/bootstrap.min.js?v=3.3.6"></script>



	<!-- 自定义js -->
	<script src="js/content.js?v=1.0.0"></script>


	<!-- fullavatareditor -->
	<script type="text/javascript"
		src="plugins/fullavatareditor/scripts/swfobject.js"></script>
	<script type="text/javascript"
		src="plugins/fullavatareditor/scripts/fullAvatarEditor.js"></script>
	<script type="text/javascript"
		src="plugins/fullavatareditor/scripts/jQuery.Cookie.js"></script>
	<script type="text/javascript"
		src="plugins/fullavatareditor/scripts/test.js"></script>

	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<!--统计代码，可删除-->
</body>

</html>
