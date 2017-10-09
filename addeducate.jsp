<%@ page contentType="text/html; charset=GBK" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>奇创科技协会成员管理系统</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css " type="text/css" media="all" />
<script type="text/javascript" src="Js/typem.js"></script>
<script type="text/javascript" src="Js/js.js"></script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"52151",secure:"52152"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body class="ContentBody" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/qckj Maven Webapp/src/main/webapp/addeducate.jsp">
<form name="educateForm" method="post" action="modifyeducate.do?action=addeducate" onsubmit="return educateValidate();" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/qckj Maven Webapp/src/main/webapp/addeducate.jsp">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >项目计划录入</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="保存" class="button"/>　
			
			<input type="reset" value="返回" class="button"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>项目计划</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="11%">项目名称：</td>
					    <td colspan="3"><input name="name" type="text" class="input"/>
					    <span class="red">*</span></td>
					    </tr>
					  <tr>
					    <td nowrap align="right" width="11%">项目目的：</td>
					    <td colspan="3"><input type="text" name="purpose" class="input"/>
					    <span class="red">*</span></td>
					    </tr>
					  <tr>
					    <td nowrap align="right">项目开始时间：</td>
					    <td width="29%"><input type="date" name="begintime" class="input"/>
					    	<span class="red">*</span></td>
					    <td width="18%">项目结束时间：</td>
					    <td width="42%"><input type="date" name="endtime" class="input"/>
					    <span class="red">*</span></td>
					  </tr>
					  <tr>
					    <td>第一接手人：</td>
					    <td><input type="text" name="student" class="input"/>
					    <span class="red">*</span>
						</td>
					  </tr>
					    
					  <tr>
					    <td width="11%" nowrap align="right">项目说明：</td>
					    <td colspan="3"><textarea name="datum" cols="100" rows="6" class="input"></textarea></td>
					  </tr>
					  </table>
				</fieldset>			
			</TD>
		</TR>
		</TABLE>
	 </td>
  </tr>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input name="提交" type="submit" class="button" value="保存"/>　
			<input name="重置" type="reset" class="button" value="重置"/></TD>
		</TR>
	</TABLE>	
</div>
</form>
</body>
</html>

