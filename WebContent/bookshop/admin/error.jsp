<%@ page contentType="text/html; charset=gb2312"%>
<html>
<head>
<title>网上书店管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script language="javascript">
  function checkform() 
  {
		if (document.form1.username.value=="" || document.form1.passwd.value=="")
		{
			alert("用户名或密码为空！");
			return false;
		}
		return true;
  }
</script>
</head>

<body bgcolor="#DDDDDD" text="#000000" >
<div align="center">
  <table width="100%" border="0" height="100%" cellspacing="0" cellpadding="0">
    <tr> 
      <td align="center" > 
        <p><font color="#FF0000">你无权进入!</font></p>
        <p><a href="adm_login.jsp">回登录页面</a>&nbsp;&nbsp;<a href="../index.jsp">回首页</a></p>
        <p>&nbsp;</p>
       <p>
       <%@include file="/bookshop/inc/adm_authenticate.inc"%>
       </p>
      </td>
    </tr>
  </table>
</div>
</body>
</html>
