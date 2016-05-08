<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<script type="text/javascript">
	function showMsg(message) {
		$("#div-alert").text(message);
		$("#div-alert").show();
	};
	function reset() {
		$("form div > input").val('');
		$("#div-alert").hide();
	}

	function submit() {
		$("#div-alert").hide();
		var username = $("#txt-username").val();
		var password = $("#txt-password").val();
		var passwordcfm = $("#txt-password-cfm").val();
		if (username == '') {
			showMsg("Please input username.")
			return;
		}
		if (password == '') {
			showMsg("Please input password.");
			return;
		}
		if (passwordcfm == '') {
			showMsg("Please input comfirmed password.");
			return;
		}

		if (password != passwordcfm) {
			showMsg("Confirm password a not same with password.");
			return;
		}
		var shaObj = new jsSHA("SHA-1", "TEXT");
		shaObj.update(password);
		var encodePwd = shaObj.getHash("HEX");

		$.ajax({
			url : "admin/usermgt/createuser.do",
			method : "POST",
			data : {
				username : username,
				password : encodePwd
			},
			dataType : "json",
			success : function(result) {
				if (result.result == 0) {
					$.ajax({
						url : "admin/usermgt/showuserinfo.do",
						method : "POST",
						data : {
							userid : result.message
						},
						success : function(data) {
							$("#page-wrapper").addClass("disabled");
							$("#page-wrapper").html(data);
						}
					});
				}
				else{
					showMsg(result.message)
				}
			}
		});
	}

	$(function() {
		$("#reset").click(reset);
		$("#submit").click(submit);
	});
</script>


</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Create User</h1>
		</div>

		<div class="row">
			<div class="col-lg-6">
				<div id="div-alert" class="alert alert-danger alert-dismissable"
					style="display: none;"></div>
				<form role="form">
					<div class="form-group">
						<label>User Name</label> <input id="txt-username"
							class="form-control">
					</div>
					<div class="form-group">
						<label>Password</label> <input id="txt-password" type="password"
							class="form-control">
					</div>
					<div class="form-group">
						<label>Password Confirm</label> <input id="txt-password-cfm"
							type="password" class="form-control">
					</div>
					<button id="submit" type="button" class="btn btn-default">Submit</button>
					<button id="reset" type="button" class="btn btn-default">Reset</button>
				</form>
			</div>
		</div>
	</div>


</body>
</html>