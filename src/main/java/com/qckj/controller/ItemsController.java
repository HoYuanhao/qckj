package com.qckj.controller;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qckj.model.Items;
import com.qckj.model.ItemsJoiner;
import com.qckj.model.ItemsJoinerVo;
import com.qckj.service.ItemsService;
import com.qckj.service.UserService;
import com.qckj.utility.DateToLongUtil;
import com.qckj.utility.UUIDUtil;

@Controller
public class ItemsController {
@Autowired
UserService userService;
@Autowired
ItemsService itemsService;
@RequestMapping("/additems")
public String addItems(HttpServletRequest request) throws Exception{
	request.setAttribute("namelist", userService.getAllName());
	return "forward:/addjob.jsp";
	
}

@RequestMapping("/addnewitems")
public String addnNewItems(String topic,String price,
		@RequestParam("joiner")String[] joiners,String begintime,
		String endtime,String information,HttpServletRequest request,HttpSession session) throws Exception{
	if(session.getAttribute("admin")!=null){
            Set<String> set =new HashSet<String>();
            for(String join:joiners){
            	set.add(join);
            }
            set.remove("");
            set.remove("none");
            if(!set.isEmpty()){
                int number =set.size();
                String[] joiner =new String[number];
                int t=0;
                for(String value : set){  
                    joiner[t]=value;
                    t++;
                } 
                System.out.println(set.size());
				String[] user_id =userService.getIdByName(joiner);
				System.out.println(user_id[0]);
				long begin=DateToLongUtil.getLongFromDate(begintime, "yyyy-MM-dd");
				long end =DateToLongUtil.getLongFromDate(endtime, "yyyy-MM-dd");
				String id =UUIDUtil.getUUID();
				Items items =new Items();
				ItemsJoiner itemsjoiner =new ItemsJoiner();
				items.setId(id);
				items.setNumber(number);
				items.setEndtime(end);
				items.setBegintime(begin);
				items.setInformation(information);
				items.setPrice(Integer.valueOf(price));
				items.setTopic(topic);
				itemsjoiner.setItem_id(id);
				itemsjoiner.setTime(new Date().getTime());
				itemsjoiner.setUser_id(user_id);
				itemsService.addItems(items, itemsjoiner);
				
				request.setAttribute("error", "添加成功！");
				
					
		}else{
			request.setAttribute("error", "人员不能为空！");
		}
		
	}else{
	request.setAttribute("error", "你不是管理员！");
	
	}return "forward:/additems.do";
	
}


@RequestMapping("/getlistitems")
public String getListItems(HttpServletRequest request) throws Exception{
	List<Items> itemslist =itemsService.getAllItems();
	request.setAttribute("itemslist", itemslist);
	return "forward:/listjob.jsp";
	
}

@RequestMapping("/detailitems")
public String detailItems(String id,HttpServletRequest request) throws Exception{
	Items items=itemsService.getItemsByid(id);
	List<ItemsJoinerVo> itemsjoinvolist=itemsService.getItemsJoinerVo(id);
	request.setAttribute("items", items);
	request.setAttribute("itemsjoinvolist", itemsjoinvolist);
	return "forward:/detailjob.jsp";
	
}

@RequestMapping("/deleteitems")
public String deleteItems(String id,HttpServletRequest request,HttpSession session) throws Exception{
	if(session.getAttribute("admin")!=null){
	itemsService.deleteItemsById(id);
	return "redirect:/getlistitems.do";
	}else{
		request.setAttribute("error", "你不是管理员！");
		return "forward:/getlistitems.do";
	}
	
	
}
}
