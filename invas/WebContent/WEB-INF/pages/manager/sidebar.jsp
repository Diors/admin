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
		
		$('#side-menu').metisMenu();
	});
</script>
</head>
<body>
	<div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
			<li><a href="#"><i class="fa fa-sitemap fa-fw"></i>Issue
					Management<span class="fa arrow"></span></a> <!-- second level menu  -->
				<ul class="nav nav-second-level">
					<li><a href="#" class="sidebar-menu"
						pagewrapper="manager/issue_change/queryIssues.do">Query Issue</a></li>
					<li><a href="#" class="sidebar-menu"
						pagewrapper="manager/issue_change/createIssues.do">Create Issue</a></li>
				</ul></li>
		</ul>
	</div>
</body>
</html>