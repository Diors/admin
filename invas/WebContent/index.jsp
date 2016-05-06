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
<link href="frm/invas/css/timeline.css" rel="stylesheet">
<link href="frm/morrisjs/morris.css" rel="stylesheet">
<link href="frm/font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<script src="frm/jquery/jquery-1.12.0.min.js"></script>
<script src="frm/bootstrap/js/bootstrap.min.js"></script>
<script src="frm/metisMenu/metisMenu.min.js"></script>
<script src="frm/invas/js/invas.js"></script>
<script type="text/javascript" src="frm/invas/js/sha1.js"></script>

</head>
<body>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">GNOC IN/VAS</a>
		</div>
		<!-- /.navbar-header -->
		<ul class="nav navbar-top-links navbar-left">
			<!-- /.dropdown Administrator-->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <span>Administrator</span> <i
					class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#" class="finalMenu"
						sidebar="admin/usermgt/siderbar.do"
						pagewrapper="admin/usermgt/pageWapper.do"><i
							class="fa fa-user fa-fw"></i> User Management</a></li>
					<li><a href="#" class="finalMenu"
						sidebar="admin/equipmentmgt/siderbar.do"
						pagewrapper="admin/equipmentmgt/pageWapper.do"><i
							class="fa fa-gear fa-fw"></i> Equipment Management</a></li>
				</ul></li>
		</ul>

		<ul class="nav navbar-top-links navbar-left">
			<!-- /.dropdown Statistic-->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <span>Statistic</span> <i
					class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> KPI</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i></a></li>
				</ul></li>
		</ul>

		<ul class="nav navbar-top-links navbar-left">
			<!-- /.dropdown Maintenance-->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <span>Maintenance</span> <i
					class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i>
							Performance</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> Caps
							Overview</a></li>
				</ul></li>
		</ul>



		<ul class="nav navbar-top-links navbar-right">
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> User
							Profile</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
					</li>
					<li class="divider"></li>
					<li><a id="a-logout"><i class="fa fa-sign-out fa-fw"></i>
							Logout</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->

		<div id="nav-sidebar" class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li><a href="#"><i class="fa fa-dashboard fa-fw"></i>
							Dashboard</a></li>
					<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
							Charts<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="flot.html">Flot Charts</a></li>
							<li><a href="morris.html">Morris.js Charts</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>
							Tables</a></li>
					<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>
							Forms</a></li>
					<li><a href="#"><i class="fa fa-wrench fa-fw"></i> UI
							Elements<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="panels-wells.html">Panels and Wells</a></li>
							<li><a href="buttons.html">Buttons</a></li>
							<li><a href="notifications.html">Notifications</a></li>
							<li><a href="typography.html">Typography</a></li>
							<li><a href="icons.html"> Icons</a></li>
							<li><a href="grid.html">Grid</a></li>

						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"><i class="fa fa-sitemap fa-fw"></i>
							Multi-Level Dropdown<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">Second Level Item</a></li>
							<li><a href="#">Second Level Item</a></li>
							<li><a href="#">Third Level <span class="fa arrow"></span></a>
								<ul class="nav nav-third-level">
									<li><a href="#">Third Level Item</a></li>
									<li><a href="#">Third Level Item</a></li>
									<li><a href="#">Third Level Item</a></li>
									<li><a href="#">Third Level Item</a></li>
								</ul> <!-- /.nav-third-level --></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"><i class="fa fa-files-o fa-fw"></i> Sample
							Pages<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="blank.html">Blank Page</a></li>
							<li><a href="login.html">Login Page</a></li>
						</ul> <!-- /.nav-second-level --></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>


		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Dashboard</h1>
				</div>
				<!-- /.col-lg-12 -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-info">
							<div class="panel-heading">IN KPI</div>
							<div class="panel-body">
								<div class="col-lg-3 col-md-6">
									<div class="panel panel-primary">
										<div class="panel-heading">
											<div class="row">
												<div class="col-xs-3">
													<i class="fa fa-comments fa-5x"></i>
												</div>
												<div class="col-xs-9 text-right">
													<div class="huge">26</div>
													<div>Date::04/05/2016</div>
												</div>
											</div>
										</div>
										<a href="#">
											<div class="panel-footer">
												<span class="pull-left">KPI::NUR_IN</span> <span
													class="pull-right"><i
													class="fa fa-arrow-circle-right"></i></span>
												<div class="clearfix"></div>
											</div>
										</a>
									</div>
								</div>
								<div class="col-lg-1 col-md-6"></div>
								<div class="col-lg-3 col-md-6">
									<div class="panel panel-red">
										<div class="panel-heading">
											<div class="row">
												<div class="col-xs-3">
													<i class="fa fa-tasks fa-5x"></i>
												</div>
												<div class="col-xs-9 text-right">
													<div class="huge">12</div>
													<div>Date::04/05/2016</div>
												</div>
											</div>
										</div>
										<a href="#">
											<div class="panel-footer">
												<span class="pull-left">KPI::NUR_IN_SERVICE</span> <span
													class="pull-right"><i
													class="fa fa-arrow-circle-right"></i></span>
												<div class="clearfix"></div>
											</div>
										</a>
									</div>
								</div>
								<div class="col-lg-1 col-md-6"></div>
								<div class="col-lg-3 col-md-6">
									<div class="panel panel-red">
										<div class="panel-heading">
											<div class="row">
												<div class="col-xs-3">
													<i class="fa fa-tasks fa-5x"></i>
												</div>
												<div class="col-xs-9 text-right">
													<div class="huge">12</div>
													<div>Date::04/05/2016</div>
												</div>
											</div>
										</div>
										<a href="#">
											<div class="panel-footer">
												<span class="pull-left">KPI::IN_CALL_SSR</span> <span
													class="pull-right"><i
													class="fa fa-arrow-circle-right"></i></span>
												<div class="clearfix"></div>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-info">
							<div class="panel-heading">VAS KPI</div>
							<div class="panel-body">
								<div class="col-lg-3 col-md-6">
									<div class="panel panel-primary">
										<div class="panel-heading">
											<div class="row">
												<div class="col-xs-3">
													<i class="fa fa-comments fa-5x"></i>
												</div>
												<div class="col-xs-9 text-right">
													<div class="huge">26</div>
													<div>Date::04/05/2016</div>
												</div>
											</div>
										</div>
										<a href="#">
											<div class="panel-footer">
												<span class="pull-left">KPI::NUR_VAS</span> <span
													class="pull-right"><i
													class="fa fa-arrow-circle-right"></i></span>
												<div class="clearfix"></div>
											</div>
										</a>
									</div>
								</div>
								<div class="col-lg-1 col-md-6"></div>
								<div class="col-lg-3 col-md-6">
									<div class="panel panel-red">
										<div class="panel-heading">
											<div class="row">
												<div class="col-xs-3">
													<i class="fa fa-tasks fa-5x"></i>
												</div>
												<div class="col-xs-9 text-right">
													<div class="huge">12</div>
													<div>Date::04/05/2016</div>
												</div>
											</div>
										</div>
										<a href="#">
											<div class="panel-footer">
												<span class="pull-left">KPI::USSD_SSR</span> <span
													class="pull-right"><i
													class="fa fa-arrow-circle-right"></i></span>
												<div class="clearfix"></div>
											</div>
										</a>
									</div>
								</div>

							</div>
						</div>
					</div>


				</div>
			</div>

		</div>
	</div>

</body>
</html>