package com.qckj.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qckj.model.MoneyBase;
import com.qckj.model.MoneyRecord;
import com.qckj.service.MoneyService;
import com.qckj.utility.DateToLongUtil;

@Controller
public class MoneyController {
	
	@Autowired
	MoneyService moneyService;
@RequestMapping("addmoneymessage")
	public String addMoneyMessage(){
	return "redirect:/addinstitution.jsp";
	}

@RequestMapping("addmoney")
public String addmoney(String money,String time,String operation,String record,
HttpSession session,HttpServletRequest request) throws Exception{
	if(session.getAttribute("admin")!=null){
	int oldmoney=moneyService.getMoney("1");
	MoneyBase moneybase =new MoneyBase();
	MoneyRecord moneyrecord =new MoneyRecord();
	long oldtime =DateToLongUtil.getLongFromDate(time,"yyyy-MM-dd");
	long nowtime=new Date().getTime();
	if(operation.equals("1")){
		moneyrecord.setRecord(record);
		moneyrecord.setOperation("1");
		moneyrecord.setTime(oldtime);
		moneyrecord.setMoney(money);
		moneyrecord.setRecord_time(nowtime);
		moneyrecord.setBalance(oldmoney+Integer.valueOf(money));
		moneybase.setMoney(oldmoney+Integer.valueOf(money));
		moneybase.setTime(nowtime);
		moneyService.setMoneyRecord(moneyrecord);
		moneyService.updateMoney(moneybase);
		
	}if(operation.equals("0")){
		moneyrecord.setRecord(record);
		moneyrecord.setOperation("0");
		moneyrecord.setTime(oldtime);
		moneyrecord.setMoney(money);
		moneyrecord.setRecord_time(nowtime);
		moneyrecord.setBalance(oldmoney-Integer.valueOf(money));
		moneybase.setMoney(oldmoney-Integer.valueOf(money));
		moneybase.setTime(nowtime);
		moneyService.setMoneyRecord(moneyrecord);
		moneyService.updateMoney(moneybase);
	}
	request.setAttribute("error", "资金信息添加成功！");
	return "forward:/addinstitution.jsp";
	}else{
		request.setAttribute("error", "你不是管理员！");
	return "forward:/addinstitution.jsp";
	}
	
}

@RequestMapping("getlistmoney")
public String getlistmoney(HttpServletRequest request) throws Exception{
	List<MoneyRecord> list =moneyService.getMoneyRecord("0");
	int money =moneyService.getMoney("1");
	request.setAttribute("list", list);
	request.setAttribute("money", money);
	return "forward:/listinstitution.jsp";
	
}

@RequestMapping("getlistmoneybytime")
public String getlistmoneybytime(String time,HttpServletRequest request) throws Exception{
	long nowtime=new Date().getTime();
	long newtime=0l;
	if(time.equals("1")){
		newtime=nowtime-31104000000l;
		List<MoneyRecord> list =moneyService.getMoneyRecord(String.valueOf(newtime));
		int money =moneyService.getMoney("1");
		request.setAttribute("list", list);
		request.setAttribute("money", money);
	}if(time.equals("2")){
		newtime=nowtime-15552000000l;
		List<MoneyRecord> list =moneyService.getMoneyRecord(String.valueOf(newtime));
		int money =moneyService.getMoney("1");
		request.setAttribute("list", list);
		request.setAttribute("money", money);
	}if(time.equals("3")){
		newtime=nowtime-7776000000l;
		List<MoneyRecord> list =moneyService.getMoneyRecord(String.valueOf(newtime));
		int money =moneyService.getMoney("1");
		request.setAttribute("list", list);
		request.setAttribute("money", money);
	}if(time.equals("4")){
		newtime=nowtime-2592000000l;
		List<MoneyRecord> list =moneyService.getMoneyRecord(String.valueOf(newtime));
		int money =moneyService.getMoney("1");
		request.setAttribute("list", list);
		request.setAttribute("money", money);
	}if(time.equals("5")){
		newtime=nowtime-86400000l;
		List<MoneyRecord> list =moneyService.getMoneyRecord(String.valueOf(newtime));
		int money =moneyService.getMoney("1");
		request.setAttribute("list", list);
		request.setAttribute("money", money);
	}
	System.out.println(time);
	return "forward:/listinstitution.jsp";
	
}
}
