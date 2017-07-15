<%@page import="com.prj.bean.Product"%>
<%@page import="java.math.BigDecimal"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品管理系统-商品信息录入处理页面</title>
    
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
  //获取add.jsp页面的表单元素值
  String name=request.getParameter("pname");
  String price=request.getParameter("price");
  String num=request.getParameter("num");
  //将字符串转换为浮点型数值
  double perprice = Double.parseDouble(price);
  int nums = Integer.parseInt(num);
  //计算小计
  double acount=perprice*nums;
  //将小数保留2位小数
  BigDecimal bd=new BigDecimal(acount);
  bd = bd.setScale(2,2);
  //对保留后的小数转换格式
  acount = bd.doubleValue();
  //创建商品对象
  Product pd=new Product(name,perprice,nums,acount);
  //从session中获取商品集合
  List<Product> list = (List<Product>)session.getAttribute("pdlist");
  if(list==null){
  list=new ArrayList<Product>();
  }
  list.add(pd);
  //将集合放到session中
  session.setAttribute("pdlist", list);
  //重定向到list.jsp页面
  response.sendRedirect("list.jsp");
   %>
  <body></body>
</html>
