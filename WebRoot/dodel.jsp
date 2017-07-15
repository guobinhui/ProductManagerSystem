<%@page import="com.prj.bean.Product"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品管理系统-删除商品信息页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
a{
  text-decoration:none;
}
</style>
  </head>
  <%
  //从session中获取商品集合
  List<Product> list = (List<Product>)session.getAttribute("pdlist");
  if(list==null){
  out.print("购物车里没有商品，请<a href='add.jsp'>返回添加</a>");
  return;
  }
  //获取要删除的商品的索引位置
  String index=request.getParameter("index");
  list.remove(Integer.parseInt(index));
  //把集合重新放到session中
  session.setAttribute("pdlist", list);
  //重定向到list.jsp页面
  response.sendRedirect("list.jsp");
   %>
   
  <body>
    
  </body>
</html>
