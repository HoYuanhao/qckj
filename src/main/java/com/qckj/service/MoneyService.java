package com.qckj.service;

import java.util.List;

import com.qckj.model.MoneyBase;
import com.qckj.model.MoneyRecord;

public interface MoneyService {
	 void updateMoney(MoneyBase monetbase) throws Exception;
	 void setMoneyRecord(MoneyRecord moneyrecord)throws Exception;
	 int getMoney(String id)throws Exception;
	 List<MoneyRecord> getMoneyRecord(String time) throws Exception;
}
