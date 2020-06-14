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
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">회원정보</h4>
									<form class="forms-sample" method="post" action="doRegister">
										<div class="form-group">
											<label for="exampleInputEmail3">이메일</label> <input
												type="email" class="form-control" name="email" id="exampleInputEmail3"
												placeholder="이메일">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword4">비밀번호</label> <input
												type="password" class="form-control"
												id="exampleInputPassword4" name="pwd" placeholder="비밀번호">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword4">비밀번호확인</label> <input
												type="password" class="form-control"
												id="exampleInputPassword5" placeholder="비밀번호확인">
										</div>
										<button type="submit" class="btn btn-success mr-2">회원가입</button>
									</form>
										<button class="btn btn-light">취소</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
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
	
		$('.forms-sample').on('submit', function() {
			
			if ($("#exampleInputEmail3").val() == "") {
				alert("이메일을 넣어주세요");
				$("#exampleInputEmail3").focus();
				return false;
			}

			if ($("#exampleInputPassword4").val() == "") {
				alert("비밀번호를 넣어주세요");
				$("#exampleInputPassword4").focus();
				return false;
			}

			if ($("#exampleInputPassword5").val() == "") {
				alert("비밀번호확인을 넣어주세요");
				$("#exampleInputPassword5").focus();
				return false;
			}
			
			if ($("#exampleInputPassword4").val() !== $("#exampleInputPassword5").val()) {
				alert("비밀번호와 비밀번호확인이 일치하지 않습니다.");
				$("#exampleInputPassword5").focus();
				return false;
			}
			
		});
		
		$('.btn-light').on('click', function() {
			var cancel = confirm("회원리스트로 되돌아 가시겠습니까?");
			if (!cancel) {
				return false;
			}
			location.href = "/myregister/";
		});
	</script>
</body>
</html>