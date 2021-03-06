<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<title>Sign-up Page</title>
<!-- HTML5 Shim and Respond.js IE9 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="CodedThemes">
<meta name="keywords"
	content=" Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
<meta name="author" content="CodedThemes">
<jsp:include page="/WEB-INF/views/modules/common-css.jsp" />
</head>

<body class="fix-menu">
	<!-- Pre-loader start -->
	<div class="theme-loader">
		<div class="ball-scale">
			<div class='contain'>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- Pre-loader end -->
	<section
		class="login p-fixed d-flex text-center bg-primary common-img-bg">
		<!-- Container-fluid starts -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12">
					<!-- Authentication card start -->
					<div class="signup-card card-block auth-body mr-auto ml-auto">
						<form class="md-float-material" id="registerform"
							action="register.action" method="post">
							<div class="text-center">
								<a href="/traveler/home.action">
									<img src="/traveler/resources/images/auth/logo-dark.png"
									alt="logo.png">
								</a>
							</div>
							<div class="auth-box">
								<div class="row m-b-20">
									<div class="col-md-12">
										<h3 class="text-center txt-primary">????????????</h3>
									</div>
								</div>
								<hr />
								<div class="input-group">
									<input type="text" id="memberID" name="memberID"
										class="form-control" placeholder="?????????"> <span
										class="md-line"></span>
								</div>
								<div class="input-group">
									<input type="text" id="email" name="email" class="form-control"
										placeholder="?????????"> <span class="md-line"></span>
								</div>
								<div class="input-group">
									<input type="password" id="passwd" name="passwd"
										class="form-control" placeholder="????????????"> <span
										class="md-line"></span>
								</div>
								<div class="input-group">
									<input type="password" id="confirm" name="confirm"
										class="form-control" placeholder="???????????? ??????"> <span
										class="md-line"></span>
								</div>
								<div class="row m-t-30">
									<div class="col-md-12">
										<button id="register" type="button"
											class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">????????????</button>
									</div>
								</div>
								<hr />
								<div class="row">
									<div class="col-md-10">
										<p class="text-inverse text-left m-b-0">???????????????!</p>
									</div>
									<div class="col-md-2">
										<img
											src="/traveler/resources/images/auth/Logo-small-bottom.png"
											alt="small-logo.png">
									</div>
								</div>
							</div>
						</form>
						<!-- end of form -->
					</div>
					<!-- Authentication card end -->
				</div>
				<!-- end of col-sm-12 -->
			</div>
			<!-- end of row -->
		</div>
		<!-- end of container-fluid -->
	</section>

	<!-- Warning Section Starts -->
	<!-- Older IE warning message -->
	<!--[if lt IE 9]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="/traveler/resources/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="/traveler/resources/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="/traveler/resources/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="/traveler/resources/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="/traveler/resources/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
	<!-- Warning Section Ends -->
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#register')
					.on(
							'click',
							function(event) {

								/* var memberID = $('#memberID').val();
								if (memberID.length < 6 || memberID.length > 12) {
									alert('????????? ?????? ?????? (6 ~ 12?????? ????????? ?????? ??????)');
									return;
								} */

								// ???????????? ????????? ???????????? ???????????? ?????? -> ?????? ?????????( regular expression)
								var re = /^[A-Za-z0-9]{6,12}$/;
								var memberId = $('#Memberid').val();
								if (!re.test(memberId)) {
									alert('????????? ?????? ?????? (6 ~ 12?????? ????????? ?????? ??????)')
									return;
								}

								re = /[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]$/i;
								var email = $('#email').val();
								if (!re.test(email)) {
									alert('????????? ?????? ??????');
									return;
								}

								$('#registerform').submit(); // form??? ????????? ??????

							})

		});
	</script>
	<!-- Required Jquery -->
	<jsp:include page="/WEB-INF/views/modules/common-js.jsp" />
</body>

</html>
