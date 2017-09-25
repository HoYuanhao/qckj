package com.qckj.dao;



import java.util.List;

import com.qckj.model.Items;
import com.qckj.model.ItemsJoiner;
import com.qckj.model.ItemsJoinerVo;

public interface ItemsDao {
public void addItems(Items items);
public void addItemsJoiner(ItemsJoiner itemjoiner);
//public List<ItemsCustom> getItemsCustom(String id);
public List<Items> getAllItems();
public void deleteItemsById(String id);
public Items getItemsById(String id);
public List<ItemsJoinerVo> getItemsJoinerVoByid(String item_id);

}
