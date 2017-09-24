package com.qckj.service;

import java.util.List;

import com.qckj.model.Items;
import com.qckj.model.ItemsJoiner;
import com.qckj.model.ItemsJoinerVo;

public interface ItemsService {

	void addItems(Items items,ItemsJoiner itemsjoiner)throws Exception;
    
//	List<ItemsCustom> getItemsCustom(String id) throws Exception;
	
	List<Items> getAllItems() throws Exception;
	
	void deleteItemsById(String id)throws Exception;
	Items getItemsByid(String id)throws Exception;
	List<ItemsJoinerVo> getItemsJoinerVo(String items_id);
}
