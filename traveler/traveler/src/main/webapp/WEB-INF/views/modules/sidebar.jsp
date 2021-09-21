<%@ page import="com.traveler.vo.MemberVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="pcoded-navbar">
	<div class="sidebar_toggle">
		<a href="#"><i class="icon-close icons"></i></a>
	</div>
	<div class="pcoded-inner-navbar main-menu">
		<ul class="pcoded-item pcoded-left-item">
			<div class="pcoded-navigatio-lavel"
				data-i18n="nav.category.navigation">Board</div>
			<li class="active"><a href="index.html"> <span
					class="pcoded-micon"><i class="ti-home"></i><b>D</b></span> <span
					class="pcoded-mtext" data-i18n="nav.dash.main">게시판</span> <span
					class="pcoded-mcaret"></span>
			</a></li>
		</ul>
		<ul class="pcoded-item pcoded-left-item">
			<div class="pcoded-navigatio-lavel"
				data-i18n="nav.category.navigation">Search Flight</div>
			<li><a href="bs-basic-table.html"> <span
					class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span> <span
					class="pcoded-mtext" data-i18n="nav.form-components.main">항공기
						조회</span> <span class="pcoded-mcaret"></span>
			</a></li>

		</ul>
		<ul class="pcoded-item pcoded-left-item">
			<div class="pcoded-navigatio-lavel"
				data-i18n="nav.category.navigation">View Charts</div>
			<li><a href="chart.html"> <span class="pcoded-micon"><i
						class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext"
					data-i18n="nav.form-components.main">데이터 시각화</span> <span
					class="pcoded-mcaret"></span>
			</a></li>
			<li><a href="/traveler/schedules/init-data.action"> <span
					class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span> <span
					class="pcoded-mtext" data-i18n="nav.form-components.main">데이터
						삽입</span> <span class="pcoded-mcaret"></span>
			</a></li>
			<div class="pcoded-navigatio-lavel"
				data-i18n="nav.category.navigation">My Account</div>
			<li class="pcoded-hasmenu">
                <a href="javascript:void(0)">
                    <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i></span>
                    <span class="pcoded-mtext"  data-i18n="nav.basic-components.main">계정관리</span>
                    <span class="pcoded-mcaret"></span>
                </a>
                <ul class="pcoded-submenu">
                <c:choose>
                <c:when test="${ loginuser == null}">
                    <li class=" ">
                        <a href="/traveler/account/login.action">
                            <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                            <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">Login</span>
                            <span class="pcoded-mcaret"></span>
                        </a>
                    </li>
                    <li class=" ">
                        <a href="/traveler/account/register.action">
                            <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                            <span class="pcoded-mtext" data-i18n="nav.basic-components.breadcrumbs">Register</span>
                            <span class="pcoded-mcaret"></span>
                        </a>
                    </li>
                    </c:when>
                    <c:otherwise>
                    <li class=" ">
                       <a href="/traveler/account/logout.action">
                           <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                           <span class="pcoded-mtext" data-i18n="nav.basic-components.breadcrumbs">Logout</span>
                           <span class="pcoded-mcaret"></span>
                       </a>
                   </li>
                   </c:otherwise>
                   </c:choose>
                </ul>
            </li>

		</ul>
</nav>