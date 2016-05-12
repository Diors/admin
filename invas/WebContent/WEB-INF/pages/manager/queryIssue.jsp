<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
</head>
<body>
<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Issue</h1>
		</div>
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="dataTable_wrapper">
						<div id="dataTable_alluserinfo_wapper"
							class="dataTables_wrapper form-inline dt-bootstrap no-footer">
							<!-- TO-DO Add show page items -->
							<div class="row">
								<div class="col-sm-12">
									<table class="table table-striped table-bordered table-hover"
										id="dataTable-alluserinfo">
										<thead>
											<tr>
												<th>Country</th>
												<th>Issue Description</th>
												<th>Solution</th>
												<th>Troubleshooting Progress</th>
												<th>Open Date</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<c:if test="${not empty issuelist}">
													<c:forEach var="issue" items="${issuelist}"
														varStatus="status">
														<c:if test="${status.count%2==0}">
															<tr class="odd gradeX">
														</c:if>
														<c:if test="${status.count%2!=0}">
															<tr class="even gradeX">
														</c:if>
														<td>${issue.getCountryName()}</td>
														<td>${issue.getIssueDesc()}</td>
														<td>${issue.getSolution()}</td>
														<td>${issue.getTroubleShooting()}</td>
														<td class="center">${issue.getCreateDate()}</td>

													</c:forEach>
												</c:if>
											</tr>
										</tbody>
									</table>
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