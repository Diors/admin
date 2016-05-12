package com.huawei.gnoc.invas.manager.model.impl;

import java.util.Date;

import com.huawei.gnoc.invas.core.utils.Variable;
import com.huawei.gnoc.invas.manager.model.IIssue;

public class Issue extends Variable implements IIssue {

	private static final long serialVersionUID = -5982530278727421601L;

	@Override
	public Number getIssueId() {
		return (Number) get(ISSUE_ID);
	}

	@Override
	public String getCountryName() {
		return getValString(COUNTRY_NAME);
	}

	@Override
	public Number getCountryId() {
		return (Number) get(COUNTRY_ID);
	}

	@Override
	public String getIssueDesc() {
		return super.getValString(ISSUE_DES);
	}

	@Override
	public String getSolution() {
		return super.getValString(SOLUTION);
	}

	@Override
	public String getTroubleShooting() {
		return super.getValString(TROUBLESHOOTING);
	}

	@Override
	public Date getCreateDate() {
		return super.getDate(CREATE_DATE);
	}

	@Override
	public Date getExpectDate() {
		return super.getDate(EXPECT_DATE);
	}

	@Override
	public String getProgress() {
		return getValString(PROGRESS);
	}

	@Override
	public String getRespHuawei() {
		return getValString(RESP_HUAWEI);
	}

	@Override
	public String getRespOrange() {
		return getValString(RESP_ORANGE);
	}

	@Override
	public String getStatus() {
		
		return getValString(STATUS);
	}

	@Override
	public String getBlockPoint() {
		return getValString(BLOCK_POINT);
	}

	@Override
	public String getSeekHelp() {
		return getValString(SEEK_HELP);
	}

	@Override
	public Date getCloseDate() {
		return getDate(CLOSE_DATE);
	}

	@Override
	public Number getOwnerId() {
		return super.getValLong(OWNER);
	}

	@Override
	public String getOwnerName() {
		return super.getValString(OWNER_NAME);
	}

	@Override
	public String getServiceAffect() {
		return super.getValString(SERVICE_AFFECT);
	}

	@Override
	public String getKPIAffect() {
		return super.getValString(KPI_AFFECT);
	}

	@Override
	public String getSRNo() {
		return super.getValString(SR_NO);
	}


}
