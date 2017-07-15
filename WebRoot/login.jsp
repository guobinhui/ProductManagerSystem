<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>首页-登录页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
function doSubmit(frm){  
//表单提交事件方法(frm表示表单对象)
//获取表单元素文本框的值
 var uname = frm.username.value;
 var pwd = frm.pwd.value;
 var pwd1 = frm.pwd1.value;
 //判断表单元素的值
 if(uname==""){
 document.getElementById("usererror").innerHTML="用户名不能为空!";
 frm.username.focus();
 return false;
 }
 if(pwd==""){
 document.getElementById("pwderror").innerHTML="密码不能为空!";
 frm.pwd.focus();
 return false;
 }
 //判断密码长度
 if(pwd.length<6||pwd.length>18||isNaN(pwd)){
 alert("密码长度必须为6-18位的数字!");
 frm.pwd.focus();
 frm.pwd.select();
 return false;
 }
 //判断2次密码是否相同
 if(pwd!=pwd1){
 alert("两次输入的密码不一致，请重新输入！");
 frm.pwd1.focus();
 return false;
 }
 return true;
}
</script>
<style type="text/css">
*{
	margin:0;
	padding:0;
	font-size: 16px;
	}
#box{
	padding:0;
	}
</style>
  </head>
  
  <body bgcolor="#0591C2">
 <div id="box" align="center" style="width:625px; height:310px; border:#F00; background-image:url(images/bgpic1.jpg); margin:0 auto; margin-top:50px; padding-top:168px; padding-left:245px">
  <div id="div1" style="width:390px; height:190px; border:#F00; background-color:#F00;" >
  <form action="dologin.jsp" method="post" id="form1" name="form1" onsubmit="return doSubmit(this)">
  <table border="1"cellpadding="1"cellspacing="0" style="width:390px; height:190px;">
   <tr height="38" >
         <td colspan="2" align="center"  style="font-size:18px ; color:#0591C2">后台管理登陆</td>
   </tr>
   <tr height="38">
	     <td align="center" width="70px"><p>用户名称</p></td>
	     <td><input type="text" id="username" name="username" size="15" />
         <span id="usererror" style="color:#FF0">*</span>
         </td>
   </tr>
    <tr height="38">
        <td align="center"><p>登陆密码</p></td>
        <td><input type="password" id="pwd" name="pwd" size="15"/>
        <span id="pwderror" style="color:#FF0">(长度为6-18位字符)</span>
        </td>
    </tr>
    <tr height="38">
        <td align="center"><p>确认密码</p></td>
        <td ><input type="password" id="pwd1" name="repwd" size="15"/>
        <span id="pwd1error" name="pwd1error" style="color:#FF0">(请保二次持密码一致)</span>
        </td>
    </tr>
    <tr height="38">
        <td colspan="2"align="center">
        <input type="submit" id="btn1" name="btn1" value="登陆"/>&nbsp;&nbsp;&nbsp;
        <input type="button" id="btn2" name="btn2" value="注册"/>
        </td>       
    </tr>
  </table>
  </form>
  </div>
</div>
  </body>
</html>
