<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page session="true"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Star Admin Premium Bootstrap Admin Dashboard Template</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="resources/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="resources/vendors/iconfonts/ionicons/css/ionicons.css">
<link rel="stylesheet"
	href="resources/vendors/iconfonts/typicons/src/font/typicons.css">
<link rel="stylesheet"
	href="resources/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet"
	href="resources/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="resources/vendors/css/vendor.bundle.addons.css">
<!-- endinject -->
<!-- plugin css for this page -->
<link rel="stylesheet" href="resources/vendors/icheck/skins/all.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="resources/css/shared/style.css">
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="resources/css/demo_1/style.css">
<!-- End Layout styles -->
<link rel="shortcut icon" href="resources/images/favicon.png" />
</head>
<body>
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper">
			<!-- partial -->
			<div class="main-panel" style="width: 100%;">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">메모박스리스트</h4>
									<button class="btn btn-success mr-2 session-cancel">세션취소</button>

									<table class="table">
										<thead>

											<tr>
												<th>현재 메모번호</th>
												<th>현재 메모내용</th>
												<th></th>
											</tr>

										</thead>
										<tbody>
											<tr>
												<td>${ memo.mno }</td>
												<td>${ memo.memo }</td>
												<td></td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- main-panel ends -->
				</div>
				<!-- page-body-wrapper ends -->
			</div>
		</div>
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="resources/vendors/js/vendor.bundle.base.js"></script>
	<script src="resources/vendors/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="resources/js/shared/off-canvas.js"></script>
	<script src="resources/js/shared/misc.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<!-- End custom js for this page-->

	<script type="text/javascript">
		$('.session-btn').on('click', function() {
			location.href = "/myregister/doRegister";
		});

		$('.session-cancel').on('click', function() {
			location.href = "/myregister/removeRegister";
		});
		
		var sessionemail = $("#sessionemail").val()
		
		$('.memo-btn').on('click', function() {
			location.href = "/myregister/doMemo" + sessionemail;
		});
	</script>
</body>
</html>
