<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.qckj.model.MoneyRecord"%>
<%@ page import="com.qckj.utility.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
               <td height="20"><span class="newfont07">资金信息查看</span></td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="8" align="center" style="font-size:16px">资金信息查看</td>
                  </tr>
                  <tr bgcolor="#EEEEEE"><span class="newfont07">资金：${money}元</span></tr>
           <form  method="post" action="getlistmoneybytime.do" >
 <label><input name="time" type="radio" value="1" />最近360天</label> 
<label><input name="time" type="radio" value="2" />最近180天</label> 
<label><input name="time" type="radio" value="3" />最近90天 </label> 
<label><input name="time" type="radio" value="4" />最近30天 </label> 
<label><input name="time" type="radio" value="5" checked="checked"/>最近24小时 </label> 
<label><input  type="submit" value="查询"/></label>   
</form>
                  <tr bgcolor="#EEEEEE">
                        <td height="22" align="center" >ID</td>
				        <td height="22" align="center" >资金操作</td>
				        <td height="22" align="center" >资金流动金额</td>
						<td height="22" align="center" >资金流动记录</td>
						<td height="22" align="center" >资金流动时间</td>
						<td height="22" align="center" >资金记录时间</td>
						<td height="22" align="center" >余额</td>
                  </tr>
				<% List list=(List)request.getAttribute("list");
				 if(list!=null&&list.size()>0){
					Iterator it = list.iterator();
					   while (it.hasNext()) {
								MoneyRecord j = (MoneyRecord) it.next();
			
			  %>
			  <tr  bgcolor="#FFFFFF">
				<td height="22" align="center" ><%=j.getId()%></td>
				<td height="22" align="center" ><%=1==Integer.valueOf(j.getOperation())?"收入":"支出"%></td>
				<td height="22" align="center" ><%=StringUtil.notNull(String.valueOf(j.getMoney()))%></td>
				<td height="22" align="center" ><%=StringUtil.notNull(String.valueOf(j.getRecord()))%></td>
				
				<td height="22" align="center" ><%=StringUtil.notNull(DateToLongUtil.LongToDate(j.getTime(), "yyyy-MM-dd"))%></td>
				<td height="22" align="center" ><%=StringUtil.notNull(DateToLongUtil.LongToDate(j.getRecord_time(), "yyyy-MM-dd"))%></td>
				<td height="22" align="center" ><%=StringUtil.notNull(String.valueOf(j.getBalance()))%></td> 
			  </tr>
			  <%		}
			   }else{
			  %>
			  <tr  bgcolor="#FFFFFF">
				<td height="22" colspan="3" align="center" >对不起，没有添加奖惩信息！！！</td>
				<td height="22" colspan="3" align="center" >对不起，没有添加奖惩信息！！！</td>
				<td height="22" colspan="3" align="center" >对不起，没有添加奖惩信息！！！</td>
			  </tr>
			  <%}%>
            </table></td>
        </tr>
      </table>
          </td>
        </tr>
</table>

</body>
</html>

