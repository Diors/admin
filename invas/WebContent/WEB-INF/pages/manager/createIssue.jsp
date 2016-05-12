<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<script type="text/javascript">
	$(function() {
		$('#datetimepicker').datetimepicker()
	})
</script>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Create Issue</h1>
		</div>


		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<form role="form">
							<fieldset>
								<label>Country<select><option value="1">Senegal</option></select></label>
								<label>Expect Date <span
									class="input-group date form_date col-md-2" data-date=""
									data-date-format="" data-link-field="dtp_input2"
									data-link-format="yyyy-mm-dd"> <input id="dtp_input2"
										class="form-control" size="16" type="text" value=""/>

										<span class="input-group-addon"> <span
											class="glyphicon glyphicon-remove"></span>

									</span> <span class="input-group-addon"> <span
											class="glyphicon glyphicon-calendar"></span></span>

								</span>
								</label>
							</fieldset>
							<fieldset>
								<label>Country<select><option value="1">Senegal</option></select></label>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>