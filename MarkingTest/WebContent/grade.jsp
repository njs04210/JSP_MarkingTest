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
						<h2>
							4,5회차 정보처리기사<br>실기 가채점 결과
						</h2>
						<%
						
						String guest_id = request.getParameter("guest_id"); //고유 아이디	
						Connection conn = DBconn.getConnection();
						PreparedStatement pstmt = null;
						Statement stmt = null;
						ResultSet rs = null;

						String sql = "select score from answersheet where guest_id=?";
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, guest_id);

						rs = pstmt.executeQuery();
						
						if (rs.next() == true) {
							String score = rs.getString("score");
						%>
						<span><strong>[<%=guest_id%>]님의 결과</strong></span> <br>
						<%

						if (score != null) {
							int scoreint = Integer.parseInt(score);
							if (scoreint <= 100 && scoreint >= 60) {
						%>
						<h3><%=scoreint%>점 : 합격</h3>
						<br>가채점 결과는 실제 점수와 다를 수 있습니다.
						<%
							} else if (scoreint >= 0 && scoreint < 60) {
						%>
						<h3><%=scoreint%>점 : 불합격</h3>
						<br>가채점 결과는 실제 점수와 다를 수 있습니다.
						<%
							}
						} else if (score == null) {
							out.println("채점 전 입니다.");
						}
						%>
					</div>
				</div>
				<%-- <div class="blog-post-content-wrapper"
					style="background-color: #f8f3ec;">
					<div class="container" style="text-align: left;">
									<%
										
										ArrayList<String> nums = new ArrayList<String>();
									
										nums.add(num1);
										nums.add(num2);
										nums.add(num3);
										nums.add(num4);
										nums.add(num5);
										nums.add(num6);
										nums.add(num7);
										nums.add(num8);
										nums.add(num9);
										nums.add(num10);
										nums.add(num11);
										nums.add(num12);
										nums.add(num13);
										nums.add(num14);
										nums.add(num15);
										nums.add(num16);
										nums.add(num17);
										nums.add(num18);
										nums.add(num19);
										nums.add(num20);
										
										if (score.length() != 0) {
											for (int i = 0; i < 20; i++) {

									%>
									<div class="input-group" style="width: 50%; margin: 0 auto;">
										<span class="input-group-addon" id="basic-addon1"><%=i + 1%></span>
										<input type="text" class="form-control" aria-describedby="basic-addon1" id="num<%=i + 1%>" name="num<%=i + 1%>" value="<%=nums.get(i)%>" style="text-align: left;">
									</div>
									<br>
									<%
										}
										} else {
											out.println("채점 전 입니다.");
										}--%>
				<%
					} else if (rs.next() == false){
				out.println("<br>존재하지 않은 고유 아이디 입니다.<br>아이디를 확인해주세요.<br>");
				out.println("<br><strong><a href=\"checkmyscore.jsp\">back</strong></a>");
				}
				%>
			</div>
			<br>
		</article>
		<%@ include file="script.jsp"%>
		<script type="text/javascript"
			src="./resources/js/validation.js?ver=7"></script>
	</fmt:bundle>
</body>
</html>
