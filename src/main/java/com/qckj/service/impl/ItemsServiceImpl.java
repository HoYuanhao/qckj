package com.qckj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qckj.dao.ItemsDao;
import com.qckj.model.Items;
import com.qckj.model.ItemsJoiner;
import com.qckj.model.ItemsJoinerVo;
import com.qckj.service.ItemsService;
@Service
public class ItemsServiceImpl implements ItemsService{

	@Autowired
	ItemsDao itemsdao;

	public void addItems(Items items, ItemsJoiner itemsjoiner) throws Exception {
		itemsdao.addItems(items);
		itemsdao.addItemsJoiner(itemsjoiner);
		
	}

//	public List<ItemsCustom> getItemsCustom(String id) throws Exception {
//	
//		return itemsdao.getItemsCustom(id);
//	}

	public List<Items> getAllItems() throws Exception {
		
		return itemsdao.getAllItems();
	}

	public void deleteItemsById(String id) throws Exception {
		itemsdao.deleteItemsById(id);
		
	}

	public Items getItemsByid(String id) throws Exception {
		// TODO 自动生成的方法存根
		return itemsdao.getItemsById(id);
	}

	public List<ItemsJoinerVo> getItemsJoinerVo(String item_id) {
		// TODO 自动生成的方法存根
		return itemsdao.getItemsJoinerVoByid(item_id);
	}


}
