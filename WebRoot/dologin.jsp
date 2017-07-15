<%@page import="com.prj.bean.Admin"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品管理系统-登录处理页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
  	//指定字符编码格式
    request.setCharacterEncoding("utf-8");
    //获取login.jsp页面的表单元素值
    String username=request.getParameter("username");
    //创建Admin对象
    Admin admin = new Admin(username);
    //把user对象放到session属性中，并传递到add.jsp页面
    session.setAttribute("user", admin);
    //重定向到add.jsp页面
    response.sendRedirect("add.jsp");
  %>
  <body>
    
  </body>
</html>
