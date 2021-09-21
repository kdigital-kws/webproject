<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<title>GURU Able - Premium Admin Template</title>
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

<body>
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
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<jsp:include page="/WEB-INF/views/modules/topbar.jsp" />

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<jsp:include page="/WEB-INF/views/modules/sidebar.jsp" />
					<div class="pcoded-content">
						<div class="pcoded-inner-content">

							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-header start -->
									<div class="page-header card">
										<div class="row align-items-end">
											<div class="col-lg-8">
												<div class="page-header-title">
													<i class="icofont icofont-chart-bar-graph bg-c-blue"></i>
													<div class="d-inline">
														<h4>Incheon Airport Chart</h4>
														<!-- button Default -->
														<button class="btn btn-primary">Months</button>
															<select name="months">
																<option value="5" ${ months eq 5 ? "selected" : "" }>최근
																	5개월</option>
																<option value="10" ${ months eq 10 ? "selected" : "" }>최근
																	10개월</option>
																<option value="15" ${ months eq 15 ? "selected" : "" }>최근
																	12개월</option>
															</select>
														</div>
														<span>월별 국제항공기 운항 횟수</span>
													</div>

													<input type="submit" class="btn btn-success" value="조회"
														style="text-align: center; height: 30px">
													<!-- type=submit : 포함된 form을 서버로 submit -->

												</div>
											</div>
											<div class="col-lg-4">
												<div class="page-header-breadcrumb">
													<ul class="breadcrumb-title">
														<li class="breadcrumb-item"><a href="index.html">
																<i class="icofont icofont-home"></i>
														</a></li>
														<li class="breadcrumb-item"><a href="#!">Charts</a></li>
														<li class="breadcrumb-item"><a href="#">International
																Airport Chart</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<!-- Page-header end -->

									<div class="page-body">
										<div class="row">
											<!-- SITE VISIT CHART start -->
											<!-- <div class="col-md-12 col-lg-6">
												<div class="card">
													<div class="card-header">
														<h5>Site visit chart</h5>
														<span>lorem ipsum dolor sit amet, consectetur
															adipisicing elit</span>
														<div class="card-header-right">
															<i class="icofont icofont-spinner-alt-5"></i>
														</div>
													</div>
													<div class="card-block">
														<div id="morris-site-visit"></div>
													</div>
												</div>
											</div> -->
											<!-- SITE VISIT CHART Ends -->
											<!-- Bar Chart start -->
											<div class="col-md-12 col-lg-6">
												<div class="card">
													<div class="card-header">
														<h5>Bar chart</h5>
														<span>lorem ipsum dolor sit amet, consectetur
															adipisicing elit</span>
														<div class="card-header-right">
															<i class="icofont icofont-spinner-alt-5"></i>
														</div>
													</div>
													<div class="card-block">
														<div id="morris-bar-chart"></div>
													</div>
												</div>
											</div>
											<!-- Bar Chart Ends -->

											<!-- EXTRA AREA CHART start -->
											<!-- 
											<div class="col-lg-12">
												<div class="card">
													<div class="card-header">
														<h5>Extra area chart</h5>
														<span>lorem ipsum dolor sit amet, consectetur
															adipisicing elit</span>
														<div class="card-header-right">
															<i class="icofont icofont-spinner-alt-5"></i>
														</div>
													</div>
													<div class="card-block">
														<div id="morris-extra-area"></div>
													</div>
												</div>
											</div>
											-->
											<!-- EXTRA AREA CHART Ends -->
											<!-- Area Chart start -->
											<!-- <div class="col-lg-12">
												<div class="card">
													<div class="card-header">
														<h5>Area chart</h5>
														<span>lorem ipsum dolor sit amet, consectetur
															adipisicing elit</span>
														<div class="card-header-right">
															<i class="icofont icofont-spinner-alt-5"></i>
														</div>
													</div>
													<div class="card-block">
														<div id="area-example"></div>
													</div>
												</div>
											</div>-->
											<!-- Area Chart Ends -->
											<!-- LINE CHART start -->
											<div class="col-md-12 col-lg-6">
												<div class="card">
													<div class="card-header">
														<h5>Line chart</h5>
														<span>lorem ipsum dolor sit amet, consectetur
															adipisicing elit</span>
													</div>
													<div class="card-block">
														<div id="line-example"></div>
													</div>
												</div>
											</div>
											<!-- LINE CHART Ends -->
											<!-- Donut chart start -->
											<div class="col-md-12 col-lg-6">
												<div class="card">
													<div class="card-header">
														<h5>Donut chart</h5>
														<span>lorem ipsum dolor sit amet, consectetur
															adipisicing elit</span>
														<div class="card-header-right">
															<i class="icofont icofont-spinner-alt-5"></i>
														</div>
													</div>
													<div class="card-block">
														<div id="donut-example"></div>
													</div>
												</div>
											</div>
											<!-- Donut chart Ends -->
										</div>
									</div>
								</div>
							</div>
							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="fixed-button">
		<a href="https://codedthemes.com/item/guru-able-admin-template/"
			target="_blank" class="btn btn-md btn-primary"> <i
			class="fa fa-shopping-cart" aria-hidden="true"></i> Upgrade To Pro
		</a>
	</div>


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
	<!-- Required Jquery -->
	<jsp:include page="/WEB-INF/views/modules/common-js.jsp" />
</body>

</html>
