<%@ page contentType="text/html; charset=UTF-8" language="java" %>
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
</head>
<body class="ContentBody">
<form name="institutionForm" method="post" action="addmoney.do" onSubmit="return institutionValidate()">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >资金流动信息登记</th>
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
				<legend>资金流动信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr><td width="10%" style="color:red">${error}</td></tr>
					  <tr>
					    <td nowrap align="right" width="11%">金额：</td>
					    <td width="20%"><input name="money" type="text" class="input"/>
						<span class="red">*</span></td>
					    </tr>
					    <tr>
					    <td><div align="right">时间(yyyy-MM-dd)：</div></td>
						<td><input name="time" type="text" class="input"
													id="birthday"> <span class="red">*</span></td>
					    </tr>
					    
					  <tr>
					    <td nowrap align="right" width="11%">操作：</td>
					    <td align="left"><label><input name="operation" type="radio" value="0" / checked="checked">支出 </input></label>
					    <span class="red">*</span></td>
                       
						
					    </tr>
					    <tr>
					     <td >
                        </td>
					     <td align="left"> <label><input name="operation" type="radio" value="1" />收入 </label> 
                        <span class="red">*</span></td>
					    </tr>
					    
					  <tr>
					    <td width="11%" nowrap align="right">原因：</td>
					    <td><textarea name="record" cols="50"
														rows="5" class="input"></textarea></td>
					  </tr>
					  </table>
			  <br />
				</fieldset>			</TD>
			
		</TR>
		</TABLE>
	 </td>
  </tr>
		</TABLE>	
</div>
</form>
</body>
</html>

