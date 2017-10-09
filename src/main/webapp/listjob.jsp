<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.qckj.model.ItemsCustom"%>
<%@ page import="com.qckj.model.Items"%>
<%@ page import="com.qckj.model.ItemsJoiner"%>
<%@ page import="com.qckj.utility.*"%>
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
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="images/nav04.gif">&nbsp;</td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20"><span class="newfont07">项目信息查看</span></td>
                              <tr><td width="10%" style="color:red">${error}</td></tr>
          	 </tr>
              <tr>
                <td height="40" class="font42">
 
<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
<tr class="CTitle" >
	<td height="22" colspan="8" align="center" style="font-size:16px">项目信息列表</td>
</tr>
<tr bgcolor="#EEEEEE">
	<td width="4%" align="center" height="30">项目名称</td>
	<td width="10%" align="center" >项目薪酬</td>
	<td width="10%" align="center" >参加人数</td>
	<td width="10%" align="center" >开始时间</td>
	<td width="10%" align="center" >结束时间</td>
	<td width="15%" align="center" >项目信息</td>
	<td width="12%" align="center" >执行操作</td>
</tr>
<% List list=(List)request.getAttribute("itemslist");
if(list!=null&&list.size()>0){
Iterator it = list.iterator();
   while (it.hasNext()) {
			Items j = (Items) it.next();
	
%>
	<tr  bgcolor="#FFFFFF">
	<td height="22" align="center" ><%=StringUtil.notNull(j.getTopic())%></td>
	<td height="22" align="center" ><%=StringUtil.notNull(String.valueOf(j.getPrice()))%></td>
	<td height="22" align="center" ><%=StringUtil.notNull(String.valueOf(j.getNumber()))%></td>
	<td height="22" align="center" ><%=StringUtil.notNull(DateToLongUtil.LongToDate(j.getBegintime(), "yyyy-MM-dd"))%></td>
	<td height="22" align="center" ><%=StringUtil.notNull(DateToLongUtil.LongToDate(j.getEndtime(), "yyyy-MM-dd"))%></td>
	<td height="22" align="center" ><%=StringUtil.notNull(j.getInformation())%></td>
	<td height="22" align="center" ><a href="detailitems.do?id=<%=j.getId()%>">详细</a>&nbsp;&nbsp;<a href="deleteitems.do?id=<%=j.getId()%>">删除</a>
	</tr>
<%}
}else{
%>
<tr  bgcolor="#FFFFFF">
	<td height="22" colspan="7" align="center" >对不起，没有信息！！！</td>
</tr>
<%}%>
</table>
            </td>
        </tr>
      </table>
          </td>
        </tr>
</table>
</body>
</html>

