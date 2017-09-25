package com.qckj.utility;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

    public static final String yyMMdd="yy-MM-dd";		//�����ڸ�ʽ
    public static final String yyyyMMdd="yyyy-MM-dd";	//�����ڸ�ʽ
    public static final String HHmmss="HH:mm:ss";		//ʱ���ʽ
    public static final String yyyyMMddHHmmss
    							="yyyy-MM-dd HH:mm:ss";	//������ʱ���ʽ
    public static final String yyMMddHHmmss
    							="yy-MM-dd HH:mm:ss";	//������ʱ���ʽ

    public static Date parseToDate(String s, String style) {//�ַ���ת��������ʱ��
        SimpleDateFormat simpleDateFormat 
        					= new SimpleDateFormat();	//ʵ�������ڸ�ʽ����
        simpleDateFormat.applyPattern(style);			//�ύת����ʽ
        Date date = null;
        if(s==null||s.length()<8)						//�ַ���Ϊ�ջ򳤶�С��8
            return null;								//�޷�ת��������nullֵ	
        try {
            date = simpleDateFormat.parse(s);			//����ת��
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    public static String parseToString(String s, String style) {//��ʽ�������ַ���
        SimpleDateFormat simpleDateFormat 
        					= new SimpleDateFormat();	//ʵ�������ڸ�ʽ����
        simpleDateFormat.applyPattern(style);			//�ύת����ʽ
        Date date = null;
        String str=null;
        if(s==null||s.length()<8)						//�ַ���Ϊ�ջ򳤶�С��8
            return null;								//�޷�ת��������nullֵ
        try {
            date = simpleDateFormat.parse(s);			//���ַ���ת�������ڸ�ʽ
            str=simpleDateFormat.format(date);			//�����ڸ�ʽ��Ϊ�ַ���
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return str;
    }

    public static String parseToString(Date date, String style) {//����ʱ��ת�����ַ���
        SimpleDateFormat simpleDateFormat 
        				= new SimpleDateFormat();		//ʵ�������ڸ�ʽ����
        simpleDateFormat.applyPattern(style);			//�ύת����ʽ
        String str=null;
        if(date==null)									//�������ʱ��Ϊnull
            return null;								//����nullֵ
        str=simpleDateFormat.format(date);				//�����ڸ�ʽ��Ϊ�ַ���
        return str;
    }

}
