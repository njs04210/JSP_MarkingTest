<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>
<%@ page import="DB.DBconn"%>
<%@ page import="java.net.URLEncoder" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
						<h2>사용자의 답안</h2>
						<span><strong>선택하여 채점해주세요.</strong></span>
					</div>
				</div>
				<div class="blog-post-content-wrapper"
					style="background-color: #f8f3ec;">
					<div class="container" style="text-align: left;">
						<div class="row">
							<p class="lead" style="text-align: center;">AnswerSheet List</p>
							<div class="col-md-6 col-md-offset-3">
								<table class="table table-striped" style="text-align: center">
									<thead>
										<tr>
											<th class="text-center">#</th>
											<th class="text-center">sheet_id</th>
											<th class="text-center">Date</th>
											<th class="text-center">채점하기</th>
										</tr>
									</thead>
									<tbody>
										<%
											Connection conn = DBconn.getConnection();
											Statement stmt = null;
											ResultSet rs = null;
	
											String sql = "select sheet_id, created, score from answersheet";
											stmt = conn.createStatement();
											rs = stmt.executeQuery(sql);
	
											while (rs.next()) {
												String sheet_id = rs.getString("sheet_id");
												String created = rs.getString("created");
												String score = rs.getString("score");
											
											if (score == null) {
												
										%>
										<tr>
											<td></td>
											<td><%=sheet_id%></td>
											<td><%=created%></td>
											<td><a href="./showAnswer.jsp?sheetID=<%=sheet_id %>" class="btn btn-secondary" role="button">Start</a></td>
										</tr>
										<%
											}
										}
										%>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</article>
		<%@ include file="script.jsp"%>
		<script type="text/javascript" src="./resources/js/validation.js"></script>
	</fmt:bundle>
</body>
</html>
