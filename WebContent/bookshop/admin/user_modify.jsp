<%@ page contentType="text/html; charset=gb2312" %>
<%@ page session="true" %>
<%
	if (session.getAttribute("admin")==null || session.getAttribute("admin")=="")
	{
		response.sendRedirect("error.jsp");
	} 
%>
<%@ page import="netshop.book.bean.*" %>
<jsp:useBean id="user" scope="page" class="netshop.book.service.manage_user" />
<%
	long userid=0;
	String mesg = "";
	
	String submit = request.getParameter("submit");
	if (submit!=null && !submit.equals(""))
	{		
		if(user.update(request))
		{		
			mesg = "用户资料修改成功！";	
		}
		else 
		{
			mesg = "对不起，你提交的参数有错误!"+  user.getMessage();;
		}
	}
	
	if (request.getParameter("userid")!=null && !request.getParameter("userid").equals("")) 
	{
		try 
		{
			userid = Long.parseLong(request.getParameter("userid"));
			if (!user.getUserinfo(userid)) 
			{
				mesg = "要修改的用户信息不存在";
			}
		} 
		catch(Exception e) 
		{
			mesg = "该用户号不存在!";
		}
	}
%>
<html>
<head>
<title>网上书店管理系统--修改用户资料</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="books.css" type="text/css">
<script language="javascript">

function checkform() 
{
	if (document.form1.username.value=="")
	{
		alert("用户名不能为空");
		document.form1.username.focus();
		return false;
	}
	if (document.form1.passwd.value=="")
	{
		alert("用户密码不能为空");
		document.form1.passwd.focus();
		return false;
	}
	if (document.form1.passwd.value!=document.form1.passconfirm.value)
	{
		alert("确认密码不相符！");
		document.form1.passconfirm.focus();
		return false;
	}	
	return true;
}
</script>
<style type="text/css">
<!--
body 
{
	background-color: #FFFFFF;
}
-->
</style></head>

<body text="#000000">
<div align="center">
        <p>修改用户资料:</p>
		<% 
		if (!mesg.equals(""))
		{
			out.println("<font color=red>"+ mesg +"</font><br><br>"); 
		} 
		else	
		{
			user userinfo = (user)user.getUserlist().elementAt(0);
		%>
	<table width="95%" border="1" cellspacing="1" cellpadding="1" bordercolor="#2DAE2D">
	<FORM name="form1" METHOD=POST ACTION="user_modify.jsp">
	  <tr><td align=right width=100>用户名</td>
	    <td><input type="text" name="username" maxlength="20" size="14" value="<%= userinfo.getUserName() %>" readonly="readonly"></td></tr> 
	  <tr><td align=right width=100>用户密码:</td>
		<td><input type="password" name="passwd" maxlength="20" size="14" value="<%= userinfo.getPassWord() %>" readonly="readonly" ></td></tr> 
	  <tr><td align=right width=100>确认密码:</td>
		<td><input type="password" name="passconfirm" maxlength="20" size="14" value="<%= userinfo.getPassWord() %>" readonly="readonly" ></td></tr> 
	  <tr><td align=right width=100>用户真名</td>
		<td> <input type="text" name="names" maxlength="20" size="14" value="<%= userinfo.getNames() %>" readonly="readonly"></td></tr>
	  <tr><td align=right width=100>性别</td>
	    <td><select name="sex">
            <option <% if (userinfo.getSex().equals("男")) out.print("selected"); %> >男</option>
            <option <% if (userinfo.getSex().equals("女")) out.print("selected"); %> >女</option>
          </select>
		</td></tr> 
	  <tr><td align=right width=100>联系地址</td>
		<td><input type="text" name="address" maxlength="150" size="40" value="<%= userinfo.getAddress() %>" ></td></tr> 
	  <tr><td align=right width=100>联系电话</td>
		<td><input type="text" name="phone" maxlength="25" size="16" value="<%= userinfo.getPhone() %>" ></td></tr> 
	  <tr><td align=right width=100>邮编</td>
		<td><input type="text" name="post" maxlength="8" size="8" value="<%= userinfo.getPost() %>" ></td></tr> 
	  <tr><td align=right width=100>电子邮件</td>
		<td><input type="text" name="email" maxlength="50" size="25" value="<%= userinfo.getEmail() %>" ></td></tr> 
	  <tr><td align=right width=100>&nbsp;</td>
		<td><INPUT TYPE="hidden" name="userid" value="<%= userinfo.getId() %>">
			<INPUT TYPE="submit" name="submit" value="修改" onClick="return(checkform());">
			<INPUT TYPE="reset" name="reset" value="取消"></td></tr> 
	</FORM>
  </table>
  <br>
<%}%>
  <br><p><a href="javascript:window.close()">关闭窗口</a></p>
 <%@include file="/bookshop/inc/adm_authenticate.inc"%>
  </div>
</body>
</html>
