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
int pages=1;
String mesg = "";

if (request.getParameter("page")!=null && !request.getParameter("page").equals("")) 
{
	String requestpage = request.getParameter("page");	
	try 
	{
		pages = Integer.parseInt(requestpage);
	} 
	catch(Exception e) 
	{
		mesg = "你要找的页码错误!";
	}
	user.setPage(pages);
}

if (request.getParameter("action")!=null && request.getParameter("action").equals("del"))
{
	try
	{
		long id = Long.parseLong(request.getParameter("userid"));
		if (user.delete(id)) 
		{
			mesg = "删除操作成功";
		} 
		else 
		{
			mesg = "删除操作出错";
		}
	} 
	catch (Exception e) 
	{
		mesg = "你要删除的用户号错误";
	}
}

%>
<script language="javascript">
<!--
  function checkform() {
	if (document.form1.username.value=="" || document.form1.passwd.value==""){
		alert("用户名或密码为空！");
		return false;
	}
	return true;

  }

function openScript(url,name, width, height){
	var Win = window.open(url,name,'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}
-->
</script>
<%@include file="/bookshop/inc/adm_head.inc"%>
  <tr> 
     <td align="center">网上书店所有用户情况</td>          
  </tr>
  
    
    <tr>    
     <table width="778" style="font-size:9pt" border="1" cellpadding="2" cellspacing="1"  bgcolor="#E4EDFB" bordercolor="white" align="center">
          <tr align="center" bgcolor="#DEF3CE"> 
            <td>用户ID号</td>
            <td>用户名</td>
            <td>真实姓名</td>
            <td>联系地址</td>
            <td>联系电话</td>
			<td>Email</td>
			<td>查看</td>
          </tr>
<% 
if (user.get_alluser())
{
	for(int i=0; i<user.getUserlist().size(); i++)
	{
		user userinfo = (user) user.getUserlist().elementAt(i);
%>
          <tr>
            <td align=center><%= userinfo.getId()%></td>
            <td><%= userinfo.getUserName()%></td>
            <td><%= userinfo.getNames()%></td>
            <td><%= userinfo.getAddress()%></td>
            <td><%= userinfo.getPhone()%></td>
			<td><%= userinfo.getEmail()%></td>
            <td align=center><a href="#" onclick="openScript('user_detail.jsp?userid=<%= userinfo.getId() %>','showuser',450,500)">详细资料</a>&nbsp;<a href="#" onclick="openScript('user_modify.jsp?userid=<%= userinfo.getId() %>','modis',450,500)">修改</a>&nbsp;<a href="adm_user.jsp?userid=<%= userinfo.getId()%>&page=<%= user.getPage()%>&action=del" onclick="return(confirm('你真的要删除这个用户?'))">删除</a></td>
          </tr>
<%	}
}%>

        </table>
		<table align="center" width="778" border="0" cellspacing="1" cellpadding="1"  bgcolor="#E4EDFB">
          <tr>
            <td align="right">当前页第<%= user.getPage() %>页　<a href="adm_user.jsp">首页</a>&nbsp; 
              <% 
	              if (user.getPage()>1) 
	              {
              %>
              		<a href="adm_user.jsp?page=<%= user.getPage()-1 %>">上一页</a>&nbsp; 
              <% } %>
              <% 
	              if (user.getPage()<user.getPageCount()-1) 
	              {
              %>
              		<a href="adm_user.jsp?page=<%= user.getPage()+1 %>">下一页</a>&nbsp; 
              <% } %>
              		<a href="adm_user.jsp?page=<%= user.getPageCount() %>">未页</a>&nbsp;</td>
          </tr>
        </table>
       
        </tr>
<%@include file="/bookshop/inc/adm_authenticate.inc"%>