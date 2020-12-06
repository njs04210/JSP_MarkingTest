<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="DB.DBconn"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1 ,maximum-scale=1, minimum-scale=1, user-scalable=no" />
<title>정처기.come</title>
<%@ include file="stylesheet.jsp"%>
<style>
#columnA {
	width: 50px;
}

#columnB {
	background-color: white;
}

#columnC {
	width: 10px;
}

input {
	width: 50px;
	text-align: center;
}
</style>
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
						<h2>점수 및 합격여부</h2>
						<span><strong>고유아이디를 입력 후 확인하세요. </strong></span><br>
						<form class="navbar-form navbar-center" role="search" action="grade.jsp">
							<div class="form-group">
								<input type="text" class="form-control" name="guest_id" id="guest_id" placeholder="Search" value="">
							</div>
							<input type="submit" class="btn btn-primary" value="확인"></input>
						</form>
					</div>
				</div>
				
			</div>
		</article>
		<%@ include file="script.jsp"%>
		<script type="text/javascript"
			src="./resources/js/validation.js?ver=7"></script>
	</fmt:bundle>
</body>
</html>
