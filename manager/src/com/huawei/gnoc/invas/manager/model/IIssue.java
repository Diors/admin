package com.huawei.gnoc.invas.manager.model;

import java.math.BigDecimal;
import java.util.Date;

public interface IIssue {
	public static final String ISSUE_ID = "ISSUE_ID";
	public static final String COUNTRY_ID = "COUNTRY_ID";
	public static final String COUNTRY_NAME = "COUNTRY_NAME";
	public static final String ISSUE_DES = "ISSUE_DES";
	public static final String SOLUTION = "SOLUTION";
	public static final String TROUBLESHOOTING = "TROUBLESHOOTING";
	public static final String CREATE_DATE = "CREATE_DATE";
	public static final String EXPECT_DATE = "EXPECT_DATE";
	public static final String PROGRESS = "PROGRESS";
	public static final String RESP_HUAWEI = "RESP_HUAWEI";
	public static final String RESP_ORANGE = "RESP_ORANGE";
	public static final String STATUS = "STATUS";
	public static final String BLOCK_POINT = "BLOCK_POINT";
	public static final String SEEK_HELP = "SEEK_HELP";
	public static final String CLOSE_DATE = "CLOSE_DATE";
	public static final String OWNER = "OWNER";
	public static final String OWNER_NAME = "OWNER_NAME";
	public static final String SERVICE_AFFECT = "SERVICE_AFFECT";
	public static final String KPI_AFFECT = "KPI_AFFECT";
	public static final String SR_NO = "SR_NO";
	
	public Number getIssueId();
	public String getCountryName();
	public Number getCountryId();
	public String getIssueDesc();
	public String getSolution();
	public String getTroubleShooting();
	public Date getCreateDate();
	public Date getExpectDate();
	public String getProgress();
	public String getRespHuawei();
	public String getRespOrange();
	public String getStatus();
	public String getBlockPoint();
	public String getSeekHelp();
	public Date getCloseDate();
	public Number getOwnerId();
	public String getOwnerName();
	public String getServiceAffect();
	public String getKPIAffect();
	public String getSRNo();

}
