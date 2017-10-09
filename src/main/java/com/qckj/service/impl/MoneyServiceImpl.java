package com.qckj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qckj.dao.MoneyDao;
import com.qckj.model.MoneyBase;
import com.qckj.model.MoneyRecord;
import com.qckj.service.MoneyService;

@Service
public class MoneyServiceImpl implements MoneyService{
@Autowired
MoneyDao moneydao;
	public void updateMoney(MoneyBase monetbase) throws Exception {
		moneydao.updateMoney(monetbase);
		
	}

	public void setMoneyRecord(MoneyRecord moneyrecord) throws Exception {
		moneydao.setMoneyRecord(moneyrecord);
		
	}

	public int getMoney(String id) throws Exception {
		
		return moneydao.getMoney(id);
	}

	public List<MoneyRecord> getMoneyRecord(String time) throws Exception {
		
		return moneydao.getMoneyRecord(time);
	}

}
