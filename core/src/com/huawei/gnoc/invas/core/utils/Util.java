package com.huawei.gnoc.invas.core.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.huawei.gnoc.invas.core.exception.BasicException;

public class Util {
	private static final String DEFAULT_DATE_FROMAT = "yyyy-MM-dd hh:mm:ss";
	private static final String STRING_EMPTY="";

	public static String parseString(Object value) throws BasicException {
		if(value == null){
			return STRING_EMPTY;
		}
		if (value instanceof String) {
			return (String) value;
		}
		if (value instanceof Number) {
			return String.valueOf(value);
		}

		if (value instanceof Date) {
			DateFormat format = new SimpleDateFormat(DEFAULT_DATE_FROMAT);
			return format.format(value);
		}
		
		return value.toString();
	}

	public static int parseInt(Object value) {
		if(value instanceof Integer){
			return (Integer)value;
		}
		if(value instanceof String){
			return Integer.parseInt((String) value);
		}
		return 0;
	}
	
	public static long parseLong(Object value)throws BasicException{
		if(value instanceof Long){
			return (Long)value;
		}
		throw new BasicException("SYS-1001","Can not parse value to long.");
	}
	
	
}
