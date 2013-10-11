<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + (request.getServerPort() != 80 ? request.getServerPort() : "")
			+ path + "/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><decorator:title /></title>
<base href="<%=basePath%>" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link href="css/bootstrap-3.0.0/bootstrap.css" rel="stylesheet" media="screen" />

<link href="css/datepicker.css" rel="stylesheet" media="screen" />
<link href="css/bootstrap-timepicker.min.css" rel="stylesheet"
	media="screen" />
<link href="css/styles.css" rel="stylesheet" media="screen" />

<script src="js/jquery-1.8.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/bootstrap-timepicker.min.js"></script>
<script src="js/jquery-displaytag-ajax-1.2.js"></script>
<script src="js/jquery-form.js"></script>

</head>
<body>
	<div class="container"
		style="width: 1100px; padding-left: 10px; padding-right: 10px;">

		<div class="well" style="margin-top: 10px;
			 background: #444; border: 1px solid #ddd; height: 60px;">
			<h4 style="color: #ddd;">Spring MVC Bootstrap Scratchpad</h4>
		</div>

		<div class="row-fluid">
			<div class="span12">
				<decorator:body />
			</div>
		</div>

		<script>
			$(document).ready(
					function() {

						/**AUTO SELECT FIRST TEXT INPUT ON ANY PAGE**/
						$('input[type=text]:enabled:first').focus();

						/*REGISTER A GLOBAL AJAX HANDLER FOR SESSION TIMEOUT
							THIS WILL BE APPLIED TO ALL AJAX EVENTS*/
						$(function() {
							//setup ajax error handling
							$.ajaxSetup({
								error : function(x, status, error) {
									if (x.status == 403) {
										//alert("Sorry, your session has expired. Please login again to continue");
										window.location.reload();
									} else {
										alert("An error occurred: " + status
												+ "\nError: " + error);
									}
								}
							});
						});

						/**INITIALISE ANY POPOVER ELEMENTS**/
						$("a[rel=popover]").popover({
							html : true
						}).click(function(e) {
							e.preventDefault();
						});

					});
		</script>
	</div>
</body>
</html>