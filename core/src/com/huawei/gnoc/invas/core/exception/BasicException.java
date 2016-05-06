package com.huawei.gnoc.invas.core.exception;

public class BasicException extends Exception {
	private static final long serialVersionUID = 2793660868269167240L;

	private String errCode = "SYS-000000";
	
	public BasicException() {
		super();
	}

	public BasicException(String errCode,String errMessage) {
		super(errMessage);
		this.errCode=errCode;
	}

}
