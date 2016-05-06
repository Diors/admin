$(function() {

	$('#side-menu').metisMenu();
});

// Loads the correct sidebar on window load,
// collapses the sidebar on window resize.
// Sets the min-height of #page-wrapper to window size
$(function() {
	$(window)
			.bind(
					"load resize",
					function() {
						topOffset = 50;
						width = (this.window.innerWidth > 0) ? this.window.innerWidth
								: this.screen.width;
						if (width < 768) {
							$('div.navbar-collapse').addClass('collapse');
							topOffset = 100; // 2-row-menu
						} else {
							$('div.navbar-collapse').removeClass('collapse');
						}

						height = ((this.window.innerHeight > 0) ? this.window.innerHeight
								: this.screen.height) - 1;
						height = height - topOffset;
						if (height < 1)
							height = 1;
						if (height > topOffset) {
							$("#page-wrapper").css("min-height",
									(height) + "px");
						}
					});

	var url = window.location;
	var element = $('ul.nav a').filter(function() {
		return this.href == url || url.href.indexOf(this.href) == 0;
	}).addClass('active').parent().parent().addClass('in').parent();
	if (element.is('li')) {
		element.addClass('active');
	}
});

$(function() {
	$("#a-logout").click(function logout(event) {
		var request = $.ajax({
			url : "logout.do",
			method : "POST",
			dataType : "json",
			success : function(data) {
				location.href = "index.jsp";
			}
		});
	});
});


$(function() {
	$(".finalMenu").each(function() {
		$(this).click(function(event) {
			var sidebarUrl = $(event.target).attr("sidebar");
			$("#nav-sidebar").addClass("disabled");
			$("#nav-sidebar").load(sidebarUrl);
			var pageWaperUrl = $(event.target).attr("pagewrapper");
			$("#page-wrapper").addClass("disabled");
			$("#page-wrapper").load(pageWaperUrl);
		});
	});
});
