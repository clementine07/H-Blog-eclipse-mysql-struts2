<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE  html  PUBLIC  "-//W3C//DTD  XHTML  1.0  Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Blog</title>
</head>
<body>

<s:if test="null == blog">
<h2>
Add Blog
</h2>
<s:form action="Add" >
<s:textfield name="blog.time" label="Time" />
<s:textfield name="blog.title" label="Title" />
<s:textfield name="blog.data" label="Data" />
<s:submit />
</s:form>
</s:if>
<s:else>
<h2>
Edit Blog
</h2>
<s:form action="Change" >
<s:textfield name="blog.id" label="ID" />
<s:textfield name="blog.time" label="Time" />
<s:textfield name="blog.title" label="Title" />
<s:textfield name="blog.data" label="Data" />
<s:submit />
</s:form>
</s:else>


</body>
</html>