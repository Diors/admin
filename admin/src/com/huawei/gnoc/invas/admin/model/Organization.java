package com.huawei.gnoc.invas.admin.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Organization {

	private long orgId;
	private String orgName;
	private String orgDesc;
	private long parentId;

	public long getOrgId() {
		return orgId;
	}

	public void setOrgId(long orgId) {
		this.orgId = orgId;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public String getOrgDesc() {
		return orgDesc;
	}

	public void setOrgDesc(String orgDesc) {
		this.orgDesc = orgDesc;
	}

	public long getParentId() {
		return parentId;
	}

	public void setParentId(long parentId) {
		this.parentId = parentId;
	}

	public static void main(String[] args) {
		String dbURL = "jdbc:derby:D:\\GNOC-Workspace\\db;create=true;user=invas;password=invas";
		// jdbc Connection
		Connection conn = null;
		Statement stmt = null;

		try {
			Class.forName("org.apache.derby.jdbc.EmbeddedDriver").newInstance();
			// Get a connection
			conn = DriverManager.getConnection(dbURL);
		} catch (Exception except) {
			except.printStackTrace();
		}

	}
}
