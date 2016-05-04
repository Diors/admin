<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GNOC-INVAS</title>
<link href="frm/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="frm/metisMenu/metisMenu.min.css" rel="stylesheet">
<link href="frm/invas/css/invas.css" rel="stylesheet">
<script src="frm/jquery/jquery-1.12.0.min.js"></script>
<script src="frm/bootstrap/js/bootstrap.min.js"></script>
<script src="frm/metisMenu/metisMenu.min.js"></script>
<script src="frm/invas/js/invas.js"></script>
<script type="text/javascript" src="frm/invas/js/sha1.js"></script>
<script>
	function showMsg(msg) {
		$("#info span").text(msg);
		$("#info").show();
	};
	
	$(function() {
		$("#btn-login").click(function(event) {
			var username = $("#txt-username").val();
			var password = $("#txt-password").val();

			if (username == "") {
				showMsg("Please input username");
				return;
			}
			if (password == "") {
				showMsg("Please input password.");
				return;
			}
			var shaObj = new jsSHA("SHA-1", "TEXT");
			shaObj.update(password);
			var encodePwd = shaObj.getHash("HEX");

			var request = $.ajax({
				url : "login.do",
				method : "POST",
				data : {
					username : username,
					password : encodePwd
				},
				dataType : "json",
				success : function(data) {
					if (data.Result == "Success") {
						location.href = "index.jsp";
					} else {
						showMsg(data.message);
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					$("#dlg-title").text("Http Error - " + jqXHR.status);
					$("#dlg-content").text(errorThrown);
					var dialog = $('#dialog').data('dialog');
					dialog.open();
				}
			});
		});
	});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Welcom to GNOC IN/VAS</h3>
					</div>
					<div class="panel-body">
						<form role="form">
							<div id="info" style="display: none; color: red">
								<span class="mif-warning"></span>
							</div>
							<fieldset>
								<div class="form-group">
									<input id="txt-username" class="form-control"
										placeholder="Username" name="Username" type="email" autofocus>
								</div>
								<div class="form-group">
									<input id="txt-password" class="form-control" placeholder="Password"
										name="password" type="password" value="">
								</div>
								<div class="checkbox">
									<label> <input name="remember" type="checkbox"
										value="Remember Me">Remember Me
									</label>
								</div>
								<!-- Change this to a button or input when using this as a form -->
								<a id="btn-login" class="btn btn-lg btn-success btn-block">Login</a>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>