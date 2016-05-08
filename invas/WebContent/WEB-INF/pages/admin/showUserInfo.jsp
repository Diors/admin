<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<html>
<head>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">User Information</h1>
		</div>
		<div class="col-lg-6">
			<div class="panel panel-default">
				<div class="panel-body">
					<p><strong>User Name:</strong>${user.getUserName()}</p>
					<p><strong>Status:</strong>${user.getLockFlag()}</p>
					<p><strong>Create Time:</strong>${user.getCreateTime()}</p>
					<p><strong>Wrong Password Count:</strong>${user.getPwdErrCnt()}</p>
					<p><strong>Last Login Date:</strong>${user.getLastLoginTime()}</p>
				</div>
			</div>

		</div>
	</div>
</body>
</html>