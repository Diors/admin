<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<script type="text/javascript">
	$(function() {
		$(".sidebar-menu").each(function() {
			$(this).click(function(event) {
				var pageWaperUrl = $(event.target).attr("pagewrapper");
				$("#page-wrapper").addClass("disabled");
				$("#page-wrapper").load(pageWaperUrl);
			});
		});
	});
</script>
</head>
<body>
	<div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
			<li><a href="#" class=".sidebar-menu" pageWapper="admin/usermgt/loadpageCreateUser.do"><i class="fa fa-user fa-fw"></i> Create
					User</a></li>
			<li><a href="#" class=".sidebar-menu" pageWapper="admin/usermgt/loadpageChangeUserInfo.do"><i class="fa fa-eraser fa-fw"></i>
					Change User Information</a></li>
		</ul>
	</div>
</body>
</html>