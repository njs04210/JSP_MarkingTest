<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<form name="newAnswer" action="./processAddAnswer.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="blog-post">
				<div class="blog-post-header-wrapper">
					<div class="blog-post-header">
						<!-- 공지사항 제목 -->
						<h2>가채점지 작성</h2>
						<%
							String id = request.getUserPrincipal().getName();
							session.setAttribute("member", id);
						%>
						<span><strong><%=session.getAttribute("member") %>님, 채점받으실 답안을 적어주세요!</strong></span>
						<br><input type="text" placeholder="고유아이디" id="guest_id" name="guest_id" style="text-align: center; color: black;"/>
					</div>
				</div>

				<div class="blog-post-content-wrapper"
					style="background-color: #f8f3ec;">
					<div class="container" style="text-align: center;">
						<jsp:include page="answerSheet.jsp" />
					</div>
				</div>
			</div>
			</form>
		</article>
		<%@ include file="script.jsp"%>
		<script type="text/javascript" src="./resources/js/validation.js?ver=2"></script>
	</fmt:bundle>
</body>
</html>
