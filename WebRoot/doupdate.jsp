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
    
    <title>商品管理系统-商品信息修改处理页面</title>
    
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
  //设置请求的字符编码格式
  request.setCharacterEncoding("utf-8");
  //获取update.jsp页面的表单元素的值
  String name = request.getParameter("pname");
  String id = request.getParameter("pid");
  String price = request.getParameter("price");
  String num = request.getParameter("num");
  //将字符串转换为浮点型数值
  double perprice=Double.parseDouble(price);
  int nums = Integer.parseInt(num);
  //计算小计
  double acount=perprice*nums;
  //创建商品对象
  Product pd=new Product(name,perprice,nums,acount);
  //从session中获取商品集合
  List<Product> list = (List<Product>)session.getAttribute("pdlist");
  if(list==null){
  out.print("<h1>库存中没有商品，请<a href='add.jsp'>返回录入商品信息</a></h1>");
  }
  //更新表单元素的值,把商品对象重新放到集合中
  list.set(Integer.parseInt(id), pd);
  //把集合放到session中
  session.setAttribute("list", list);
  //重定向到list.jsp页面
  response.sendRedirect("list.jsp");
   %>
  <body>
  </body>
</html>
