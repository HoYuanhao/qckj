
function stipendValidate(){
	if(stipendForm.name.value==""){
		alert("1");		
		stipendForm.name.focus();
		return false;
	}
	if(stipendForm.basic.value==""){
		alert("2");		
		stipendForm.basic.focus();
		return false;
	}
	if(stipendForm.granttime.value==""){
		alert("3");		
		stipendForm.granttime.focus();
		return false;
	}
	if(!checkIsValidDate(stipendForm.granttime.value)){
		alert("4");
		stipendForm.granttime.focus();
		return false;
	}

	return true;
}
function institutionValidate(){
	if(institutionForm.name.value==""){
		alert("5");		
		institutionForm.name.focus();
		return false;
	}
	if(institutionForm.reason.value==""){
		alert("6");		
		institutionForm.reason.focus();
		return false;
	}
	return true;
}
function userValidate(){
	if(userForm.username.value==""){
		alert("用户名不能为空！");		
		userForm.username.focus();
		return false;
	}
	if(userForm.phone.value.length>11){
		alert("手机号应该小于11位!");		
		userForm.phone.focus();
		return false;
	}
	if(userForm.age.value>130){
		alert("年龄不能大于130岁！");		
		userForm.age.focus();
		return false;
	}if(userForm.qqnumber.value.length>15){
		alert("QQ号长度过长！");		
		userForm.qqnumber.focus();
		return false;
	}
		if(userForm.major.value==""){
		alert("专业不能为空！");		
		userForm.major.focus();
		return false;
	}
		if(userForm.number.value==""){
		alert("学号不能为空！");		
		userForm.number.focus();
		return false;
	}
		if(userForm.classes.value==""){
		alert("班级不能为空！");		
		userForm.classes.focus();
		return false;
	}
		if(userForm.name.value==""){
		alert("姓名不能为空！");		
		userForm.name.focus();
		return false;
	}
		if(userForm.content.value.length>1000){
		alert("简介应少于1000字！");		
		userForm.content.focus();
		return false;
	}
		if(userForm.department.value==""){
		alert("部门不能为空！");		
		userForm.name.focus();
		return false;
	}
	if(userForm.password.value==""){
		alert("密码不能为空！");		
		userForm.password.focus();
		return false;
	}
	if(userForm.birthday.value==""){
		alert("出生日期不能为空!");		
		userForm.birthday.focus();
		return false;
	}
	if(CheckDate(userForm.birthday.value)){
		alert("出身日期格式错误！");
		userForm.birthday.focus();
		return false;
	}
	return true;
}

function educateValidate(){
	if(educateForm.name.value==""){
		alert("7");		
		educateForm.name.focus();
		return false;
	}
	if(educateForm.purpose.value==""){
		alert("8");		
		educateForm.purpose.focus();
		return false;
	}
	if(educateForm.begintime.value==""){
		alert("9");		
		educateForm.begintime.focus();
		return false;
	}
	if(!checkIsValidDate(educateForm.begintime.value)){
		alert("10");
		educateForm.begintime.focus();
		return false;
	}

	if(educateForm.endtime.value==""){
		alert("11");		
		educateForm.endtime.focus();
		return false;
	}
	if(!checkIsValidDate(educateForm.endtime.value)){
		alert("12");
		educateForm.endtime.focus();
		return false;
	}
	if(!checkDateEarlier(educateForm.begintime.value,educateForm.endtime.value)){
		alert("13");
		educateForm.begintime.focus();
		return false;
	}

	if(educateForm.teacher.value==""){
		alert("14");		
		educateForm.teacher.focus();
		return false;
	}
	if(educateForm.student.value==""){
		alert("15");		
		educateForm.student.focus();
		return false;
	}
	return true;
}

function checkDateEarlier(strStart,strEnd)
{
    if(checkIsValidDate(strStart) == false || checkIsValidDate(strEnd) == false)
        return false;
    //�����һ������Ϊ�գ���ͨ������
    if (( strStart == "" ) || ( strEnd == "" ))
        return true;
    var arr1 = strStart.split("-");
    var arr2 = strEnd.split("-");
    var date1 = new Date(arr1[0],parseInt(arr1[1].replace(/^0/,""),10) - 1,arr1[2]);
    var date2 = new Date(arr2[0],parseInt(arr2[1].replace(/^0/,""),10) - 1,arr2[2]);
    if(arr1[1].length == 1)
        arr1[1] = "0" + arr1[1];
    if(arr1[2].length == 1)
        arr1[2] = "0" + arr1[2];
    if(arr2[1].length == 1)
        arr2[1] = "0" + arr2[1];
    if(arr2[2].length == 1)
        arr2[2]="0" + arr2[2];
    var d1 = arr1[0] + arr1[1] + arr1[2];
    var d2 = arr2[0] + arr2[1] + arr2[2];
    if(parseInt(d1,10) > parseInt(d2,10))
       return false;
    else
       return true;
}//~~~
function checkIsValidDate(str)
{
    //���Ϊ�գ���ͨ��У��
    if(str == "")
        return true;
    var pattern = /^((\d{4})|(\d{2}))-(\d{1,2})-(\d{1,2})$/g;
    if(!pattern.test(str)){
        return false;
	}
    var arrDate = str.split("-");
    if(parseInt(arrDate[0],10) < 100)
        arrDate[0] = 2000 + parseInt(arrDate[0],10) + "";
    var date =  new Date(arrDate[0],(parseInt(arrDate[1],10) -1)+"",arrDate[2]);
    if(date.getYear() == arrDate[0]
       && date.getMonth() == (parseInt(arrDate[1],10) -1)+""
       && date.getDate() == arrDate[2]){
        return true;
	}else{
        return false;
	}
}//~~~

function CheckDate(INDate)
{ if (INDate=="")
    {return true;}
	subYY=INDate.substr(0,4)
	if(isNaN(subYY) || subYY<=0){
		return true;
	}
	//ת���·�
	if(INDate.indexOf('-',0)!=-1){	separate="-"}
	else{
		if(INDate.indexOf('/',0)!=-1){separate="/"}
		else {return true;}
		}
		area=INDate.indexOf(separate,0)
		subMM=INDate.substr(area+1,INDate.indexOf(separate,area+1)-(area+1))
		if(isNaN(subMM) || subMM<=0){
		return true;
	}
		if(subMM.length<2){subMM="0"+subMM}
	//ת����
	area=INDate.lastIndexOf(separate)
	subDD=INDate.substr(area+1,INDate.length-area-1)
	if(isNaN(subDD) || subDD<=0){
		return true;
	}
	if(eval(subDD)<10){subDD="0"+eval(subDD)}
	NewDate=subYY+"-"+subMM+"-"+subDD
	if(NewDate.length!=10){return true;}
    if(NewDate.substr(4,1)!="-"){return true;}
    if(NewDate.substr(7,1)!="-"){return true;}
	var MM=NewDate.substr(5,2);
	var DD=NewDate.substr(8,2);
	if((subYY%4==0 && subYY%100!=0)||subYY%400==0){ //�ж��Ƿ�Ϊ����
		if(parseInt(MM)==2){
			if(DD>29){return true;}
		}
	}else{
		if(parseInt(MM)==2){
			if(DD>28){return true;}
		}	
	}
	var mm=new Array(1,3,5,7,8,10,12); //�ж�ÿ���е��������
	for(i=0;i< mm.length;i++){
		if (parseInt(MM) == mm[i]){
			if(parseInt(DD)>31){return true;}
		}else{
			if(parseInt(DD)>30){return true;}
		}
	}
	if(parseInt(MM)>12){return true;}
   return false;
  }
function jobValidate(){

	if(jobForm.topic.value==""){
		alert("项目名不能为空");		
		jobForm.topic.focus();
		return false;
	}
	if(jobForm.price.value<=0||jobForm.price.value==""){
		alert("价格不能小于0或者为空！");		
		jobForm.price.focus();
		return false;
	}	if(jobForm.begintime.value==""){
		alert("起始日期不能为空！");		
		jobForm.begintime.focus();
		return false;
	}	if(jobForm.endtime.value==""){
		alert("结束日期不能为空！");		
		jobForm.begintime.focus();
		return false;
	}	
	
	return true;
}
function adminChecked(){
	if(userForm.isadminhelp.checked){
		document.userForm.isadmin.value="1";
	}else{
		document.userForm.isadmin.value="0";
	}
}
