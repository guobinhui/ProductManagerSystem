<%@page import="java.math.BigDecimal"%>
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
    
    <title>商品库存列表</title>
    
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
  List<Product> pdlist=(List<Product>)session.getAttribute("pdlist");
  if(pdlist==null){
  out.print("亲，您的购物车里没有商品，请<a href='add.jsp'>返回重新添加!</a>");
  return;
  }
   %>
  <body bgcolor="#33ccff">
  <p align="center">商品库存信息</p>
  <table  width="600" border="1" align="center" cellpadding="1" cellspacing="0">
  <tr align="center" bgcolor="#B4B4B4">
  	   <td width="47">编号</td>
       <td width="138">品名</td>
       <td width="80">单价</td>
       <td width="85">数量</td>
       <td width="96">小计</td>
       <td width="128">操作</td>
  </tr>
  <%
  double sum=0.0;
  for(int i=0;i<pdlist.size();i++){
  Product pd = pdlist.get(i);
  sum=sum+pd.getAcount();
  
   %>
   <tr align="center">
       <td ><%=i+1 %></td>
       <td ><%=pd.getPname() %></td>
       <td ><%=pd.getPrice() %></td>
       <td><%=pd.getNum()%></td>
       <td ><%=pd.getAcount()%></td>
       <td >
       <span><a href="dodel.jsp?index=<%=i%>">删除</a> </span>
        <span><a href="update.jsp?index=<%=i%>">修改</a> </span>
       </td>
   </tr>
   <% } %>
   <tr align="center" bgcolor="#B4B4B4">
   		<td >总计</td>
   		<td colspan="4">
   		<%
   		BigDecimal bd=new BigDecimal(sum);
   		bd=bd.setScale(2,2);
   		sum=bd.doubleValue();
   		 %>
   		</td>
   		<td ><%=sum %></td>
   </tr>
  </table>
  <h1 align="center"><a href="add.jsp"style="color:red;font-size:28px;font-weight:600">返回继续录入商品信息</a>&nbsp;&nbsp;&nbsp;
				<a href=""style="color:red;font-size:28px;font-weight:600">退出系统</a></h1>
  </body>
</html>
