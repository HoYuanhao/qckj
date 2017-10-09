<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.qckj.utility.*"%>
<%@ page import="com.qckj.model.UserBaseVo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<body class="ContentBody" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-29" data-genuitec-path="/qckj Maven Webapp/src/main/webapp/updateuser.jsp">
<form name="userForm" method="post" action="updateuser.do" onSubmit="return userValidate();" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-29" data-genuitec-path="/qckj Maven Webapp/src/main/webapp/updateuser.jsp">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >人员信息更新</th>
  </tr>
  <% UserBaseVo u=(UserBaseVo)request.getAttribute("userbasevo");
  	if(u!=null){
  %>
  <input type="hidden" name="id" value="<%=u.getId()%>"/>
  <tr>
    <td class="CPanel">
		
		<table width="90%" border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
			<input type="submit"value="更新" class="button"/>　
			<input type="reset" value="还原" class="button"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>人员信息</legend>
					  <table width="100%" border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="9%">用户名：</td>
					    <td width="36%"><input name="username" type="text" class="input" id="username" value="<%=StringUtil.notNull(u.getUsername())%>"/>
						<span class="red">*</span></td>
					    <td width="12%"><div align="right">姓名：</div></td>
					    <td width="43%"><input name="name" type="text" class="input"  id="name" value="<%=StringUtil.notNull(u.getName()) %>"/>
				        <span class="red">*</span></tr>
				   
					    <td nowrap align="right" width="9%">性别：</td>
					    <td><input name="gender" type="radio" value="1" <%=1==Integer.valueOf(u.getGender())?"checked":""%>>女
							<input name="gender" type="radio" value="0" <%=1==Integer.valueOf(u.getGender())?"":"checked"%>>男</td>
					    <td><div align="right">出生日期：</div></td>
					    <td><input name="birthday" type="date" class="input" id="birthday" value="<%=StringUtil.notNull(DateToLongUtil.LongToDate(u.getBirthday(), "yyyy-MM-dd"))%>">
				        <span class="red">*</span></td>
					  </tr>
					        <tr> 
					    <td nowrap align="right" width="9%">专业：</td>
					    <td width="36%"><input name="major" type="text" class="input" id="major" value="<%=StringUtil.notNull(u.getMajor())%>">
						<span class="red">*</span></td>
					    <td width="12%"><div align="right">学号：</div></td>
					    <td width="43%"><input name="number" type="text" class="input" id="number" value="<%=StringUtil.notNull(String.valueOf(u.getNumber()))%>"/>
				        <span class="red">*</span></tr>
				         <tr>
					    <td nowrap align="right" width="9%">班级:</td>
					    <td width="36%"><input name="Classes" type="text" class="input" id="classes" value="<%=StringUtil.notNull(u.getClasses())%>">
						<span class="red">*</span></td>
					    <td width="12%"><div align="right">QQ：</div></td>
					    <td width="43%"><input name="qqnumber" type="text" class="input"  id="qqnumber" value="<%=StringUtil.notNull(u.getQqnumber())%>"/>
				        
					  <tr>
					  <tr> 
					    <td nowrap align="right" width="9%">部门:</td> 
					    <td width="36%"><input name="department" type="text" class="input" id="department" value="<%=StringUtil.notNull(u.getDepartment())%>">
					    <span class="red">*</span></td>
					   <td nowrap align="right" width="9%">手机号:</td>
					    <td width="36%"><input name="phone" type="text" class="input" id="phone" value="<%=StringUtil.notNull(u.getPhone())%>">
					  </tr>
					  <tr>
					  	  <tr>
					    <td nowrap align="right" width="9%">户籍:</td>
					    <td width="36%"><input name=origin type="text" class="input"  value="<%=StringUtil.notNull(u.getOrigin())%>">
					  </tr>
					  <tr>
					    <td nowrap align="right">人员简介：</td>
					    <td colspan="3"><textarea name="other" cols="100" rows="6" class="input" id="content"><%=StringUtil.notNull(u.getOther())%></textarea></td>
					    </tr>
					  </table>
			 		 <br />
				</fieldset>
				</TD>
			
		</TR>
		</TABLE>
	 </td>
  </tr>
    <%
  }else{
  %>
  <tr>
    <td height="22" colspan="2" align="center" >没有查到该人员信息！！！</td>
    </tr>
  <%}%>
	</TABLE>
</div>
</form>
</body>
</html>

