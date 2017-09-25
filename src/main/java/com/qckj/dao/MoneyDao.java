package com.qckj.dao;

import java.util.List;

import com.qckj.model.MoneyBase;
import com.qckj.model.MoneyRecord;

public interface MoneyDao {
public void updateMoney(MoneyBase monetbase);
public void setMoneyRecord(MoneyRecord moneyrecord);
public int getMoney(String id);
public List<MoneyRecord> getMoneyRecord(String time);
}
