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
				<div class="panel-body">
					<div class="dataTable_wrapper">
						<div id="dataTable_alluserinfo_wapper"
							class="dataTables_wrapper form-inline dt-bootstrap no-footer">
							<div class="row">
								<div class="col-sm-6">
									<div class="dataTables_length" id="dataTables-example_length">
										<label>Show <select
											name="dataTable-alluserinfo_length"
											aria-controls="dataTable-alluserinfo"
											class="form-control input-sm"><option value="10">10</option>
												<option value="25">25</option>
												<option value="50">50</option>
												<option value="100">100</option></select> entries
										</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<table class="table table-striped table-bordered table-hover"
										id="dataTable-alluserinfo">
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
											<tr>
												<c:if test="${not empty userlist}">
													<c:forEach var="user" items="${userlist}"
														varStatus="status">
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

													</c:forEach>
												</c:if>
											</tr>
										</tbody>
									</table>
								</div>

							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="dataTables_info" id="dataTables-example_info"
										role="status" aria-live="polite">Showing 1 to 10 of 57
										entries</div>
								</div>
								<div class="col-sm-6">
									<div class="dataTables_paginate paging_simple_numbers"
										id="dataTables-example_paginate">
										<ul class="pagination">
											<li class="paginate_button previous disabled"
												aria-controls="dataTables-example" tabindex="0"
												id="dataTables-example_previous"><a href="#">Previous</a></li>
											<li class="paginate_button active"
												aria-controls="dataTables-example" tabindex="0"><a
												href="#">1</a></li>
											<li class="paginate_button "
												aria-controls="dataTables-example" tabindex="0"><a
												href="#">2</a></li>
											<li class="paginate_button "
												aria-controls="dataTables-example" tabindex="0"><a
												href="#">3</a></li>
											<li class="paginate_button "
												aria-controls="dataTables-example" tabindex="0"><a
												href="#">4</a></li>
											<li class="paginate_button "
												aria-controls="dataTables-example" tabindex="0"><a
												href="#">5</a></li>
											<li class="paginate_button "
												aria-controls="dataTables-example" tabindex="0"><a
												href="#">6</a></li>
											<li class="paginate_button next"
												aria-controls="dataTables-example" tabindex="0"
												id="dataTables-example_next"><a href="#">Next</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
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