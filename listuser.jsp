<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.qckj.model.UserBaseVo"%>
<%@ page import="com.qckj.utility.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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

.font051 {
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}

.font201 {
	font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}

.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}

html {
	overflow-x: auto;
	overflow-y: auto;
	border: 0;
}
-->
</style>

<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"52151",secure:"52152"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-21" data-genuitec-path="/qckj Maven Webapp/src/main/webapp/listuser.jsp">
	<table width="100%" border="0" cellspacing="0" cellpadding="0" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-21" data-genuitec-path="/qckj Maven Webapp/src/main/webapp/listuser.jsp">

		<tr>
			<td height="30">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td height="62" background="images/nav04.gif">&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><table id="subtree1" style="DISPLAY: " width="100%"
					border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td>
							<table width="95%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td height="20"><span class="newfont07">人员信息查看</span></td>

								</tr>
								<tr>
									<td height="40" class="font42">
										<table width="100%" border="0" cellpadding="4" cellspacing="1"
											bgcolor="#464646" class="newfont03">
											<tr class="CTitle">
												<td height="22" colspan="15" align="center"
													style="font-size:20px">人员信息列表</td>
											</tr>
											<tr bgcolor="#EEEEEE">

												<td width="4%" align="center" height="30">用户名</td>
												<td width="5%" align="center">姓名</td>
												<td width="4%" align="center">性别</td>
												<td width="10%" align="center">专业</td>
												<td width="8%" align="center">学号</td>
												<td width="8%" align="center">班级</td>
												<td width="8%" align="center">QQ</td>
												<td width="8%" align="center">部门</td>
												<td width="8%" align="center">户籍</td>
												<td width="10%" align="center">手机号</td>
												<td width="10%" align="center">出生日期</td>
												<td width="10%" align="center">简介</td>
												<td width="10%" align="center">操作</td>
											</tr>
											<%
												List list = (List) request.getAttribute("list");
												if (list != null && list.size() > 0) {
													Iterator it = list.iterator();
													while (it.hasNext()) {
														UserBaseVo u = (UserBaseVo) it.next();
											%>
											<tr bgcolor="#FFFFFF">
												<td height="20" align="center"><%=StringUtil.notNull(u.getUsername())%>&nbsp;</td> 
												<td height="22" align="center"><%=StringUtil.notNull(u.getName())%>&nbsp;</td>
												<td height="22" align="center"><%=(1==Integer.valueOf(u.getGender()))? "女":"男" %></td>
												<td height="22" align="center"><%=StringUtil.notNull(u.getMajor())%>&nbsp;</td>
												<td height="22" align="center"><%=StringUtil.notNull(String.valueOf(u.getNumber()))%>&nbsp;</td>
												<td height="22" align="center"><%=StringUtil.notNull(u.getClasses())%>&nbsp;</td>
												<td height="22" align="center"><%=StringUtil.notNull(u.getQqnumber())%>&nbsp;</td>
												<td height="22" align="center"><%=StringUtil.notNull(u.getDepartment())%>&nbsp;</td>
												<td height="22" align="center"><%=StringUtil.notNull(u.getOrigin())%>&nbsp;</td>
												<td height="22" align="center"><%=StringUtil.notNull(u.getPhone())%>&nbsp;</td>
												<td height="22" align="center"><%=StringUtil.notNull(DateToLongUtil.LongToDate(u.getBirthday(), "yyyy-MM-dd"))%>&nbsp;</td>
												<td height="22" align="center"><%=StringUtil.notNull(u.getOther())%>&nbsp;</td>
												<td height="22" align="center"><a
													href="selectuser.do?id=<%=u.getId()%>">修改</a>&nbsp;&nbsp;<a
													href="deleteuser.do?id=<%=u.getId()%>">删除</a></td>
											</tr>
											<%
												}
												} else {
											%>
											<tr>
												<td height="22" colspan="7" align="center">对不起，暂时没有人员信息！！！</td>
											</tr>
											<%
												}
											%>
										</table>
									</td>
									<tr>
										<td align="left" style="color:red">${error}</td>
									</tr>
							</table>
						</td>
					</tr>
				</table>
</body>
</html>

