<%@ page contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="date" class="java.util.Date" />
<nav>
	<div class="blog-nav-header">
		<!-- 검색 입력폼 -->
		<div class="blog-nav-search">
			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-search"></i></span>
					<input type="text" id="search" class="form-control input-lg" readonly>
				</div>
			</div>
		</div>

		<!-- 메뉴 닫기 버튼 -->
		<div class="blog-close-nav">Close</div>
	</div>


	<div class="blog-nav-content">
		<!-- 사이드바: 공지사항 -->
		<div class="nav-component-wrapper">
			<h3>
				Notices <small><i
					class="fa fa-exclamation-circle text-danger"></i></small>
			</h3>
			<div class="nav-component-list">
				<div class="nav-component-list-item">
					<a href="notices.jsp"><fmt:message key="howtoUse" /></a>
				</div>
			</div>
		</div>

		<!-- 사이드바: 카테고리 -->
		<div class="nav-component-wrapper">
			<h3>
				Categories <small><i class="fa fa-folder-open text-primary"></i></small>
			</h3>
			<div class="nav-component-list">
				<div class="nav-component-list-item">
					<a href="apply.jsp"><fmt:message key="ApplyMarking" /></a>
				</div>
				<div class="nav-component-list-item">
					<a href="checkmyscore.jsp"><fmt:message
							key="CheckingGrade" /></a>
				</div>
				<div class="nav-component-list-item">
					<a href="temporalAnswer.jsp"><fmt:message
							key="SaveAnswer" /></a>
				</div>
			</div>
		</div>

		<!-- 사이드바: 관리자 -->
		<div class="nav-component-wrapper">
			<h3>
				Administrator <small><i class="fa fa-wrench text-warning"></i></small>
			</h3>
			<div class="nav-component-etc">
				<a href="login.jsp"
					class="btn btn-default btn-sm"><i class="fa fa-group"></i>로그인</a>
				<a href="adminMenu.jsp" class="btn btn-danger btn-sm"><i
					class="fa fa-lock"></i>관리자</a>
			</div>
		</div>

		<div class="nav-component-wrapper">
			<div class="nav-component-etc">
				<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
			</div>
			<div class="nav-component-etc"><%=date%></div>
			<div class="nav-component-etc">
				<a href="logout.jsp" class="btn btn-sm btn-success pull-left">logout</a>
			</div>
		</div>

	</div>

</nav>