<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Blog 测试</title>
<style type="text/css">
table {
border: 1px solid black;
border-collapse: collapse;
}
table thead tr th {
border: 1px solid black;
padding: 3px;
background-color: #cccccc;
}
table tbody tr td {
border: 1px solid black;
padding: 3px;
}
</style>
</head>
<body>
<h2>Blog Search</h2>

<table cellspacing="0">
<thead>
<tr>
<th>Select</th>
<th>ID</th>
<th>Title</th>
<th>DATA</th>
<th>Operation</th>
</tr>
</thead>
<tbody>
<tr>
<td><s:property value="blog.id" /></td>
<td><s:property value="blog.title" /></td>
<td><s:property value="blog.data" /></td>
</tr>
</tbody>
</table>

</body>
</html>