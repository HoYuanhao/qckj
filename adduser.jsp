<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>奇创科技协会成员管理系统</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css "
	type="text/css" media="all" />
<script type="text/javascript" src="Js/typem.js"></script>
<script type="text/javascript" src="Js/js.js"></script>
<style type="text/css">
<!--
.atten {
	font-size: 12px;
	font-weight: normal;
	color: #F00;
}
-->
</style>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"52151",secure:"52152"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body class="ContentBody" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-4" data-genuitec-path="/qckj Maven Webapp/src/main/webapp/adduser.jsp">
	<form name="userForm" method="get" action="adduser.do"
		onSubmit="return userValidate();" accept-charset="UTF-8" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-4" data-genuitec-path="/qckj Maven Webapp/src/main/webapp/adduser.jsp">
		<div class="MainDiv">
			<table width="99%" border="0" cellpadding="0" cellspacing="0"
				class="CContent">
				<tr>
					<th class="tablestyle_title">成员信息录入</th>
				</tr>
				<tr>
					<td class="CPanel">

						<table width="90%" border="0" cellpadding="0" cellspacing="0"
							style="width:80%" align="center">
							<tr>
								<td align="left"><input type="submit" value="保存"
									class="button" /> <input type="reset" value="重置"
									class="button" /></td>
							</tr>

							<TR>
								<TD width="100%">
									<fieldset style="height:100%;">
										<legend>人员信息</legend>
										<table width="100%" border="0" cellpadding="2" cellspacing="1"
											style="width:100%">
											<tr><td width="10%" style="color:red">${error}</td></tr>
											<tr>
												<td nowrap align="right" width="9%">用户名：</td>
												<td width="36%"><input name="username" type="text"
													class="input" id="username" /> <span class="red">*</span></td>
												<td width="12%"><div align="right">登陆密码：</div></td>
												<td width="43%"><input name="password" type="text"
													class="input" id="password" /> <span class="red">*</span>
											</tr>
											<tr>
												<td align="right">编号：</td>
												<td><input type="text" name="number" /><span class="red">*</span></td>
												<td align="right">姓名：</td>
												<td><input type="text" name="name" /><span class="red">*</span></td>
											</tr>
											<tr>
												<td align="right">专业：</td>
												<td><input type="text" name="major" /><span class="red">*</span></td>
											</tr>
											<tr>
												<td align="right">班级：</td>
												<td><input type="text" name="class" /><span class="red">*</span></td>
												<td align="right">联系方式：</td>
												<td><input type="text" name="phone" id="phone"/><span class="red">*</span></td>
											</tr>
											<tr>
											</select>
											<td align="right">部门：</td>
					<td><select name="department">
<%
List list = (List) request.getAttribute("detailedlist");
		if(list!=null&&list.size()>0){
		Iterator it = list.iterator();
	   	while (it.hasNext()) {
			String u = (String) it.next();
	%>
  
  <option value="<%=u %>"><%=u%></option>
  <% } 
  }else{%>
  <option value="none">无部门！</option>
  <% } %>
</select></td>
												
										
												<td align="right">QQ：</td>
												<td><input type="text" name="qqnumber" id="qqnumber"/></td>
											</tr>
											<tr>
												<td nowrap align="right" width="9%">性别：</td>
												<td><input name="gender" type="radio" value="0" checked>
														男 <input name="gender" type="radio" value="1">女</td>
												<td><div align="right">出生日期：</div></td>
												<td><input name="birthday" type="date" class="input"
													id="birthday"> <span class="red">*</span></td>
											</tr>
											<tr>
												<td nowrap align="right">是否管理员：</td>
												<td><input name="isadminhelp" type="checkbox"
													onClick="javascript:adminChecked();"> <input
														type="hidden" name="isadmin"></td>

												<td align="right">籍贯：</td>
												<td><input type="text" name="origin" /></td>

											</tr>

											<tr>
												<td nowrap align="right">人员简介：</td>
												<td colspan="3"><textarea name="content" cols="100"
														rows="6" class="input" id="content"></textarea></td>
											</tr>
										</table>
										<br />
									</fieldset>
								</TD>

							</TR>
						</TABLE>
					</td>
				</tr>
				<!--  
				<TR>
					<TD colspan="2" align="center" height="50px"><input name="提交"
						type="submit" class="button" value="保存" /> <input name="重置"
						type="reset" class="button" value="重置" /></TD>
				</TR>-->
			</TABLE>
		</div>
	</form>
</body>
</html>

