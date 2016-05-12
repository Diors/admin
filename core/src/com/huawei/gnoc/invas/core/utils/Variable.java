package com.huawei.gnoc.invas.core.utils;

import java.util.Date;
import java.util.HashMap;

public class Variable extends HashMap<Object, Object> {
	private static final long serialVersionUID = 2059742436122455261L;

	public void put(Object... values) {
		if (values == null)
			return;

		for (int i = 0; i < values.length;) {
			if (i + 2 > values.length) {
				this.put(values[i], null);
			} else {
				super.put(values[i], values[i + 1]);
			}
			i += 2;
		}
	}

	public String getValString(Object key) {
		Object val = super.get(key);
		return Util.parseString(val);
	}

	public int getValInt(Object key) {
		Object val = super.get(key);
		return Util.parseInt(val);
	}

	public long getValLong(Object key) {
		Object val = super.get(key);
		return Util.parseLong(val);
	}
	

	public Date getDate(Object key) {
		Object val = super.get(key);
		return Util.parseDate(val);
	}
}
