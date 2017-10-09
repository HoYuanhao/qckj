<%@page import="com.bug.utility.StringUtil"%>
<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.bug.model.Items"%>
<%@ page import="com.bug.model.ItemsJoinerVo"%>
<%@ page import="com.bug.utility.*"%>
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
</head>
<body class="ContentBody">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >项目详细信息</th>
  </tr>

  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<%
		 	List list=(List)request.getAttribute("itemsjoinvolist");
		 	Items items=(Items)request.getAttribute("items");
		 	if(items!=null){
		%>
		<tr>
			<td width="100%">
				<fieldset style="height:100%;">
				<table border="0" cellpadding="8" cellspacing="1" style="width:100%">
					  <tr>
					    <td align="right" width="9%">项目名称：</td>
					    <td width="36%"><%=StringUtil.notNull(items.getTopic())%></td>
                    <td align="right" width="9%">项目酬金：</td>
					    <td width="36%"><%=StringUtil.notNull(String.valueOf(items.getPrice()))%></td>
					  <tr>
					    <td width="20%"><div align="right">开始时间：</div></td>
					    <td width="43%"><%=StringUtil.notNull(DateToLongUtil.LongToDate(items.getBegintime(), "yyyy-MM-dd"))%>	  </tr>
					    <td width="20%"><div align="right">结束时间：</div></td>
					    <td width="43%"><%=StringUtil.notNull(DateToLongUtil.LongToDate(items.getEndtime(), "yyyy-MM-dd"))%>	  </tr>
				        </td>
					  </tr>
					  <tr>
					         <td align="right" width="9%">项目人数：</td>
					    <td width="36%"><%=StringUtil.notNull(String.valueOf(items.getNumber()))%></td>
				        </td></tr>
				      
				        					    <% 
					    if(list!=null&&list.size()>0){
		Iterator it = list.iterator();
	   	while (it.hasNext()) {
			ItemsJoinerVo u = (ItemsJoinerVo) it.next(); %>
			 <tr>
					    <td><div align="right">参加人员：</div></td>

					    <td><%=StringUtil.notNull(u.getName())%></td>
					    <td><div align="right">参加时间：</div></td>

					    <td><%=StringUtil.notNull(DateToLongUtil.LongToDate(u.getTime(), "yyyy-MM-dd"))%></td>
					     </tr>
					   <% }}else{%>
					    
					 <td><div align="right">参加人员：</div></td>

					    <td>找不到参加人员信息</td>
					    <td><div align="right">参加时间：</div></td>

					    <td>找不到参加时间信息</td>
					     </tr>
					    <% }%>

					    <td align="right">详细经历：</td>
					    <td colspan="4"><%=items.getInformation()%></td>
					  </tr>
					   <tr>
					    <td colspan="4" align="center">
					    <input type="button" onclick="javascript:history.back();" value="返回"/>
					    </td>
					  </tr>
				</table>
				</fieldset>		
			</td>
		</tr>
		<%}else{ %>
		<tr>
			<td height="22" colspan="4" align="center" >该信息不存在！！！</td>
		</tr>
		<%}%>
		</table>
	 </td>
  </tr>
</tabel>	
</div>
</body>
</html>

