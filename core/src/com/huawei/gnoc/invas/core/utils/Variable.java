package com.huawei.gnoc.invas.core.utils;

import java.util.HashMap;

import com.huawei.gnoc.invas.core.exception.BasicException;

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
	
	public String getValString(Object key) throws BasicException{
		Object val = super.get(key);
		return Util.parseString(val);
	}
	
	public int getValInt(Object key){
		Object val = super.get(key);
		return Util.parseInt(val);
	}
	
	
}
