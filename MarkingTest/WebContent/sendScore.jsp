<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1 ,maximum-scale=1, minimum-scale=1, user-scalable=no" />

<title>정처기.come</title>
<%@ include file="stylesheet.jsp"%>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<!-- 로고 -->
		<%@ include file="logo.jsp"%>

		<!-- 플로팅 메뉴 영역 -->
		<%@ include file="floatingMenu.jsp"%>

		<!-- 메뉴 오버레이 -->
		<div class="blog-overlay"></div>

		<!-- 컨텐츠 영역 -->
		<article>
			<!-- 메뉴 버튼 -->
			<div class="blog-open-nav blog-open-nav-arrow">
				<span>toggle menu</span>
			</div>
			<!-- 본문 영역 -->
			<div class="blog-post">
				<div class="blog-post-header-wrapper">
					<div class="blog-post-header">
						<!-- 공지사항 제목 -->
						<h2>채점완료</h2><br>
						<a href="./home.jsp" class="btn btn-danger">홈으로 이동</a>
					</div>
				</div>
			</div>
		</article>
		<%@ include file="script.jsp"%>
		<script type="text/javascript" src="./resources/js/validation.js"></script>
	</fmt:bundle>
</body>
</html>