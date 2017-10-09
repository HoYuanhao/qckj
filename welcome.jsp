<%@ page contentType="text/html; charset=GBK" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>奇创科技协会成员管理系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {
	font-size: 36px;
	color: #009999;
	font-family: "方正舒体";
}
-->
</style>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"52151",secure:"52152"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-30" data-genuitec-path="/qckj Maven Webapp/src/main/webapp/welcome.jsp">
<table width="100%" border="0" cellspacing="0" cellpadding="0" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-30" data-genuitec-path="/qckj Maven Webapp/src/main/webapp/welcome.jsp">
  <tr>
    <td height="147" background="images/top02.gif"><div align="center"><span class="STYLE1">奇创科技协会成员管理系统</span></div></td>
  </tr>
</table>
<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
  <tr>
    <td width="221"><table width="95%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
      
      <tr>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
          <tr>
            <td align="center"><img src="images/ico13.gif" width="107" height="97" /></td>
          </tr>
          <tr>
            <td height="40" align="center">&nbsp;</td>
          </tr>
          
        </table></td>
        <td><img src="images/line01.gif" width="5" height="292" /></td>
      </tr>
    </table></td>
    <td>
	<form name="usersForm" method="post" action="/qckj/login.do">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
		<td colspan="2" align="center"><font color="red">${error }</font></td>
      </tr>
      <tr>
        <td width="31%" height="35" class="login-text02">用户名：<br /></td>
        <td width="69%"><input name="username" type="text" id="username" size="20" value="${username }" /></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">密　码：<br /></td>
        <td><input name="password" type="password" id="password" size="20" value="${password }"/></td>
      </tr>
      <tr>
      <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="permission" value="0" checked>学生</td>
        <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="permission" value="1"/>管理员</td>
      </tr>
      <tr>
        <td height="35">&nbsp;</td>
        <td><input type="submit" class="right-button01" value="确认登录"/>
          <input type="reset" class="right-button02" value="重 置" /></td>
      </tr>
    </table>
	</form>
	</td>
  </tr>
</table>
</body>
</html>
