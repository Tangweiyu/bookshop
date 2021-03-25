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
			mesg = "�û������޸ĳɹ���";	
		}
		else 
		{
			mesg = "�Բ������ύ�Ĳ����д���!"+  user.getMessage();;
		}
	}
	
	if (request.getParameter("userid")!=null && !request.getParameter("userid").equals("")) 
	{
		try 
		{
			userid = Long.parseLong(request.getParameter("userid"));
			if (!user.getUserinfo(userid)) 
			{
				mesg = "Ҫ�޸ĵ��û���Ϣ������";
			}
		} 
		catch(Exception e) 
		{
			mesg = "���û��Ų�����!";
		}
	}
%>
<html>
<head>
<title>����������ϵͳ--�޸��û�����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="books.css" type="text/css">
<script language="javascript">

function checkform() 
{
	if (document.form1.username.value=="")
	{
		alert("�û�������Ϊ��");
		document.form1.username.focus();
		return false;
	}
	if (document.form1.passwd.value=="")
	{
		alert("�û����벻��Ϊ��");
		document.form1.passwd.focus();
		return false;
	}
	if (document.form1.passwd.value!=document.form1.passconfirm.value)
	{
		alert("ȷ�����벻�����");
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
        <p>�޸��û�����:</p>
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
	  <tr><td align=right width=100>�û���</td>
	    <td><input type="text" name="username" maxlength="20" size="14" value="<%= userinfo.getUserName() %>" readonly="readonly"></td></tr> 
	  <tr><td align=right width=100>�û�����:</td>
		<td><input type="password" name="passwd" maxlength="20" size="14" value="<%= userinfo.getPassWord() %>" readonly="readonly" ></td></tr> 
	  <tr><td align=right width=100>ȷ������:</td>
		<td><input type="password" name="passconfirm" maxlength="20" size="14" value="<%= userinfo.getPassWord() %>" readonly="readonly" ></td></tr> 
	  <tr><td align=right width=100>�û�����</td>
		<td> <input type="text" name="names" maxlength="20" size="14" value="<%= userinfo.getNames() %>" readonly="readonly"></td></tr>
	  <tr><td align=right width=100>�Ա�</td>
	    <td><select name="sex">
            <option <% if (userinfo.getSex().equals("��")) out.print("selected"); %> >��</option>
            <option <% if (userinfo.getSex().equals("Ů")) out.print("selected"); %> >Ů</option>
          </select>
		</td></tr> 
	  <tr><td align=right width=100>��ϵ��ַ</td>
		<td><input type="text" name="address" maxlength="150" size="40" value="<%= userinfo.getAddress() %>" ></td></tr> 
	  <tr><td align=right width=100>��ϵ�绰</td>
		<td><input type="text" name="phone" maxlength="25" size="16" value="<%= userinfo.getPhone() %>" ></td></tr> 
	  <tr><td align=right width=100>�ʱ�</td>
		<td><input type="text" name="post" maxlength="8" size="8" value="<%= userinfo.getPost() %>" ></td></tr> 
	  <tr><td align=right width=100>�����ʼ�</td>
		<td><input type="text" name="email" maxlength="50" size="25" value="<%= userinfo.getEmail() %>" ></td></tr> 
	  <tr><td align=right width=100>&nbsp;</td>
		<td><INPUT TYPE="hidden" name="userid" value="<%= userinfo.getId() %>">
			<INPUT TYPE="submit" name="submit" value="�޸�" onClick="return(checkform());">
			<INPUT TYPE="reset" name="reset" value="ȡ��"></td></tr> 
	</FORM>
  </table>
  <br>
<%}%>
  <br><p><a href="javascript:window.close()">�رմ���</a></p>
 <%@include file="/bookshop/inc/adm_authenticate.inc"%>
  </div>
</body>
</html>