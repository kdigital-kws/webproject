<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar header-navbar pcoded-header">
	<div class="navbar-wrapper">

		<div class="navbar-logo">
			<a class="mobile-menu" id="mobile-collapse" href="#!"> <i
				class="ti-menu"></i>
			</a> <a class="mobile-search morphsearch-search" href="#"> <i
				class="ti-search"></i>
			</a> <a href="home.action"> <img class="img-fluid"
				src="resources/images/logo.png" alt="Theme-Logo" />
			</a> <a class="mobile-options"> <i class="ti-more"></i>
			</a>
		</div>

		<div class="navbar-container container-fluid">
			<ul class="nav-left">
				<li>
					<div class="sidebar_toggle">
						<a href="javascript:void(0)"><i class="ti-menu"></i></a>
					</div>
				</li>

				<li><a href="#!" onclick="javascript:toggleFullScreen()"> <i
						class="ti-fullscreen"></i>
				</a></li>
				<%-- <div class="links">
					<c:choose>
						<c:when test="${ loginuser == null }">
							<a href="/spring-demoweb/account/login.action">로그인</a>
							<a href="/spring-demoweb/account/register.action">회원가입</a>
						</c:when>
						<c:otherwise>
                			${ loginuser.Memberid }님 환영합니다.
                			<a href="/spring-demoweb/account/logout.action">로그아웃</a>
						</c:otherwise>
					</c:choose>
				</div> --%>
			</ul>
		</div>
	</div>
</nav>