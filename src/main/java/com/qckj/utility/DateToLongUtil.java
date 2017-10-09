package com.qckj.utility;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.alibaba.druid.util.StringUtils;

public class DateToLongUtil {
public static long getLongFromDate(String date,String format) throws ParseException{
	  if (!StringUtils.isEmpty(date)) {
		    if (!StringUtils.isEmpty(format))
		    	
		    return new SimpleDateFormat(format).parse(date).getTime();
		    }return 0l;
}

public static String LongToDate(long time,String format){
	 if (time > 0l) {
		  if (!StringUtils.isEmpty(format))
		    return new SimpleDateFormat(format).format(new Date(time));
		  }
		  return "";
		}
}
