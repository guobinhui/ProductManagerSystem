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
    
    <title>欢迎进入商品管理系统-商品添加页面</title>
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
  <script type="text/javascript">
  //表单提交事件方法(frm表示表单对象)
  function doCheck(frm){
  //获取表单元素文本框的值
  var name = frm.pname.value;
  var price =frm.price.value;
  var num = frm.num.value;
  //判断表单元素有没有输入合规的值
  if(name==""){
  document.getElementById("pnameerror").innerHTML="名称不能为空!";
 frm.pname.focus();
 return false;
  }
  if(price==""){
  alert("请输入数字型的商品单价!");
  frm.price.focus();
 return false;
  }
  if(num==""){
  alert("请输入数字型的商品数量!");
  frm.num.focus();
 return false;
  }
  return true;
  }
  </script>
  <%
  	request.setCharacterEncoding("utf-8");
    //从session中获取user对象
  	Admin user=(Admin)session.getAttribute("user");
  %>
  <body bgcolor="#33ccff">
 	<h2 style="color:red;font-size:18px;font-weight:600" align="center">用户<span style="color:gold;"><%=user.getUname()%></span>登录成功!&nbsp;&nbsp;
 	<a href=""style="color:red;font-size:18px;font-weight:600">退出系统</a>
 	 </h2>
    <form action="doadd.jsp" method="post" id="form1" name="form1"onsubmit="return doCheck(this)">
    <table width="500" border="1" cellpadding="1" cellspacing="0" align="center"style="margin-top:200px">
    	<tr>
    		<td colspan="2" bgcolor="#919191" align="center" style="color:gold;font-size:16px;font-weight:600">录入商品信息</td>
    	</tr>
    	<tr>
    		<td align="center">商品名称</td>
    		<td >
    		<input type="text"id="pname" name="pname" />
    		<span id="pnameerror" style="color:#f00">*</span>
    		</td>
    	</tr>
    	<tr>
    		<td align="center">商品单价</td>
    		<td >
    		<input type="text"id="price" name="price" />
    		<span id="priceerror" style="color:#f00">*</span>
    		</td>
    	</tr>
    	<tr>
    		<td align="center">商品数量</td>
    		<td >
    		<input type="text"id="num" name="num" />
    		<span id="numerror" style="color:#f00">*</span>
    		</td>
    	</tr>
    	<tr>
    		<td colspan="2" bgcolor="#919191" align="center" style="color:gold;font-size:16px;font-weight:600">
    		<input input type="submit"id="sub" name="sub" value="提交"/>
    		<input input type="reset"id="btn" name="btn" value="重置"/>
    		</td>
    	</tr>
    </table>
    <h2 style="color:gold;font-size:16px;font-weight:600"align="center"><a href="list.jsp">查看商品库存信息</a></h2>
    </form>
   
  </body>
</html>
