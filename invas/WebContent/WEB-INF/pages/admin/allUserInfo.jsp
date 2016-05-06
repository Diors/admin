<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">All Users</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="dataTable_wrapper">
						<table class="table table-striped table-bordered table-hover"
							id="dataTables-example">
							<thead>
								<tr>
									<th>User Name</th>
									<th>Status</th>
									<th>Wrong Password Count</th>
									<th>Create Time</th>
									<th>Last Login Date</th>
								</tr>
							</thead>
							<tbody>
								<!-- 
<c:forEach var="varity" items="${sessionScope.myList}" varStatus="status">
         ${status.first}/${status.last}
               当前：${status.current}
 </c:forEach> 
 -->
								<c:if test="${not empty userlist}">
									<c:forEach var="user" items="${userlist}" varStatus="status">
										<c:if test="${status.count%2==0}">
											<tr class="odd gradeX">
										</c:if>
										<c:if test="${status.count%2!=0}">
											<tr class="even gradeX">
										</c:if>
										<td>${user.getUserName()}</td>
										<td>${user.getLockFlag()}</td>
										<td class="center">${user.getPwdErrCnt()}</td>
										<td class="center">${user.getCreateTime()}</td>
										<td class="center">${user.getLastLoginTime()}</td>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
					<!-- /.table-responsive -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
</body>
</html>