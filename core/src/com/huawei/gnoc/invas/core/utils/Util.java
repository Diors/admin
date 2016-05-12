package com.huawei.gnoc.invas.core.utils;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.log4j.Logger;

public class Util {
	private static Logger logger = Logger.getLogger(Util.class);
	private static final String DEFAULT_DATE_FROMAT = "yyyy-MM-dd hh:mm:ss";
	private static final String STRING_EMPTY = "";

	public static String parseString(Object value) {
		if (value == null) {
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

	public static Integer parseInt(Object value) {
		if (value instanceof Integer) {
			return (Integer) value;
		}
		if(value instanceof BigDecimal){
			BigDecimal bd = (BigDecimal)value;
			return bd.intValue();
		}
		if (value instanceof String) {
			return Integer.parseInt((String) value);
		}
		return null;
	}

	public static Long parseLong(Object value) {
		if (value instanceof Long) {
			Long ret = (Long) value;
			return ret;
		}
		if(value instanceof BigDecimal){
			BigDecimal bd = (BigDecimal)value;
			return bd.longValue();
		}
		if (value instanceof String) {
			String str = (String) value;
			try {
				Long ret = Long.parseLong(str);
				return ret;
			} catch (NumberFormatException e) {
				logger.error("Can not parse string \"" + str + "\" to long.", e);
				return null;
			}
		}
		return null;
	}

	public static Date parseDate(Object value) {
		if (value instanceof Date) {
			return (Date) value;
		}
		if (value instanceof String) {
			String source = (String) value;
			SimpleDateFormat sdf = new SimpleDateFormat(DEFAULT_DATE_FROMAT);
			try {
				return sdf.parse(source);
			} catch (ParseException e) {
				logger.error(e);
			}
		}
		return null;
	}

	public static String parseDateStr(Object value, String formart) {
		if (value instanceof Date) {
			Date source = (Date) value;
			SimpleDateFormat sdf = new SimpleDateFormat(DEFAULT_DATE_FROMAT);
			return sdf.format(source);

		}
		return null;
	}
}
