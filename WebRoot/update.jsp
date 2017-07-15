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
    
    <title>商品管理系统-商品信息修改页面</title>
    
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
<script type="text/javascript">
function doCheck(frm){
if(num==""){
document.getElementById("numerror").inner.HTML="商品数量不能为空!";
frm.num.focus();
return false;
}
return true;
}
</script>
  </head>
<%
//指定字符编码格式
request.setCharacterEncoding("utf-8");
//从session中获取商品集合
List<Product> plist = (List<Product>)session.getAttribute("pdlist");
if(plist==null){
out.print("<h1>库存中没有商品，请<a href='add.jsp'>返回录入商品信息</a></h1>");
return;
}
//获取要修改的商品对象的索引
String index = request.getParameter("index");
Product  oldpd = plist.get(Integer.parseInt(index));
 %>  
  <body bgcolor="#33ccff">
    <form action="doupdate.jsp" method="post" id="form1" name="form1"onsubmit="return doCheck(this)">
    <table width="500" border="1" cellpadding="1" cellspacing="0" align="center"style="margin-top:200px">
    	<tr>
    		<td colspan="2" bgcolor="#919191" align="center" style="color:gold;font-size:16px;font-weight:600">录入商品信息</td>
    	</tr>
    	<tr>
    		<td align="center">商品名称</td>
    		<td >
    		<input type="text"id="pname" name="pname" value="<%=oldpd.getPname() %>" readonly="readonly"/>
    		<input type="hidden" id="pid" name="pid" value="<%=index%>" />
    		<span id="pnameerror" style="color:#f00">(商品名称不能修改)</span>
    		</td>
    	</tr>
    	<tr>
    		<td align="center">商品单价</td>
    		<td >
    		<input type="text"id="price" name="price"value="<%=oldpd.getPrice() %>"readonly="readonly" />
    		<span id="priceerror" style="color:#f00">(商品单价不能修改)</span>
    		</td>
    	</tr>
    	<tr>
    		<td align="center">商品数量</td>
    		<td >
    		<input type="text"id="num" name="num"value="<%=oldpd.getNum() %>"/>
    		<span id="numerror" style="color:#f00">*</span>
    		</td>
    	</tr>
    	<tr>
    		<td colspan="2" bgcolor="#919191" align="center" style="color:gold;font-size:16px;font-weight:600">
    		<input input type="submit"id="sub" name="sub" value="修改"/>
    		<input input type="reset"id="btn" name="btn" value="重置"/>
    		</td>
    	</tr>
    </table>
    <h2 style="color:gold;font-size:16px;font-weight:600"align="center">
    <a href="list.jsp"style="color:red;font-size:28px;font-weight:600">查看商品库存信息</a>&nbsp;&nbsp;&nbsp;
    <a href=""style="color:red;font-size:28px;font-weight:600">退出系统</a>
    </h2>
    </form>
  </body>
</html>
