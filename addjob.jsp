<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
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
<body class="ContentBody" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/qckj Maven Webapp/src/main/webapp/addjob.jsp">
<form name="jobForm" method="get" action="addnewitems.do" onSubmit="return jobValidate();"  data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/qckj Maven Webapp/src/main/webapp/addjob.jsp">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">

  <tr>
      <th class="tablestyle_title" >项目信息录入</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:90%" align="center">
		<tr><td align="left">
		<input type="submit"value="保存" class="button"/>　
			
			<input type="reset" value="清空" class="button"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>项目信息</legend>
				<table border="0" cellpadding="2" cellspacing="1" style="width:100%">
				<tr><td width="10%" style="color:red">${error}</td></tr>
				<tr>
					<td nowrap align="right" width="9%">项目标题：</td>
					<td width="60%"><input name="topic" type="text" class="input" id="topic">
					<span class="red">*</span></td>
					<td nowrap align="right" width="9%">价格：</td>
					<td><input name="price" type="text" class="input" id="price">
					<span class="red">*</span></td>
					<!-- <td><div align="right">职位：</div></td>
					<td><input name="job" type="text" class="input"> -->
				</tr>	
					
					<tr>
					<td nowrap align="right">参加人员：</td>
					
					
					
						
					
<td>
<select name="joiner" >

<% List list=(List)request.getAttribute("namelist");
		if(list!=null&&list.size()>0){
		Iterator it = list.iterator();
	   	while (it.hasNext()) {
			String u = (String) it.next();
	%>
  
  <option value="<%=u %>"><%=u%></option>
  <% } 
  }else{%>
  <option value="none">无可用人员！</option>
  <% } %>
</select>


					
					<select name="joiner">
					<option value="">请选择人员</option>
<%
		if(list!=null&&list.size()>0){
		Iterator it = list.iterator();
	   	while (it.hasNext()) {
			String u = (String) it.next();
	%>
  
  <option value="<%=u %>"><%=u%></option>
  <% } 
  }else{%>
  <option value="none">无可用人员！</option>
  <% } %>
</select>
<select name="joiner">
<option value="">请选择人员</option>
<% 
		if(list!=null&&list.size()>0){
		Iterator it = list.iterator();
	   	while (it.hasNext()) {
			String u = (String) it.next();
	%>
  
  <option value="<%=u %>"><%=u%></option>
  <% } 
  }else{%>
  <option value="none">无可用人员！</option>
  <% } %>
</select>				
<select name="joiner">
<option value="">请选择人员</option>
<% 
		if(list!=null&&list.size()>0){
		Iterator it = list.iterator();
	   	while (it.hasNext()) {
			String u = (String) it.next();
	%>
  
  <option value="<%=u %>"><%=u%></option>
  <% } 
  }else{%>
  <option value="none">无可用人员！</option>
  <% } %>
</select>	
<select name="joiner">
<option value="">请选择人员</option>
<% 
		if(list!=null&&list.size()>0){
		Iterator it = list.iterator();
	   	while (it.hasNext()) {
			String u = (String) it.next();
	%>
  
  <option value="<%=u %>"><%=u%></option>
  <% } 
  }else{%>
  <option value="none">无可用人员！</option>
  <% } %>
</select>	
<select name="joiner">
<option value="">请选择人员</option>
<% 
		if(list!=null&&list.size()>0){
		Iterator it = list.iterator();
	   	while (it.hasNext()) {
			String u = (String) it.next();
	%>
  
  <option value="<%=u %>"><%=u%></option>
  <% } 
  }else{%>
  <option value="none">无可用人员！</option>
  <% } %>
</select>	<span class="red">*</span></td>
					</tr>
				
				<tr>
					<td ><div align="right" >开始日期：</div></td>
												<td><input name="begintime" type="date" class="input"
													id="begintime"> <span class="red">*</span></td>
													<td><div align="right">结束日期：</div></td>
												<td><input name="endtime" type="date" class="input"
													id="endtime"> <span class="red">*</span></td>
				</tr> 
				<tr>
					<td width="9%" nowrap align="right">详细信息：</td>
					
					<td colspan="2">
					<textarea name="information" cols="100" rows="10" class="input" id="content" >
					</textarea>
					</td>
					
				</tr>
				</table>
				</fieldset>		
			</TD>
			
		</TR>
		</TABLE>
	 </td>
  </tr>

		</TABLE>	
</div>
</form>
</body>
</html>

