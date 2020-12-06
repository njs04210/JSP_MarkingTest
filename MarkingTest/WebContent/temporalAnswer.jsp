<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = session.getId();
	
	String num1 = "";
	String num2 = "";
	String num3 = "";
	String num4 = "";
	String num5 = "";
	String num6 = "";
	String num7 = "";
	String num8 = "";
	String num9 = "";
	String num10 = "";
	String num11 = "";
	String num12 = "";
	String num13 = "";
	String num14 = "";
	String num15 = "";
	String num16 = "";
	String num17 = "";
	String num18 = "";
	String num19 = "";
	String num20 = "";
	
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
	
			if (n.equals("temporal_num1"))
		num1 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num2"))
		num2 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num3"))
		num3 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num4"))
		num4 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num5"))
		num5 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num6"))
		num6 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num7"))
		num7 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num8"))
		num8 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num9"))
		num9 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num10"))
		num10 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num11"))
		num11 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num12"))
		num12 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num13"))
		num13 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num14"))
		num14 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num15"))
		num15 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num16"))
		num16 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num17"))
		num17 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num18"))
		num18 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num19"))
		num19 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("temporal_num20"))
		num20 = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>
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
						<h2>임시 저장 답안</h2>
						<%
							if (session.getAttribute("member") == null) {
							out.println("<span><strong>로그인되지 않은 상태입니다.</strong></span>");
						} else {
						%>
						<span><strong><%=session.getAttribute("member")%>님,
								답안은 제출 신청해야 정상 처리됩니다.</strong></span>
						<%
							}
						%>
					</div>
				</div>
				<div class="blog-post-content-wrapper"
					style="background-color: #f8f3ec;">
					<div class="container" style="text-align: left;">
						<div class="row">

							<!-- 	<form name="newAnswer" action="./processAddAnswer.jsp"
								class="form-horizontal" method="post" style="text-align: center"> -->
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=1%></span>
								<input type="text" class="form-control" value="<%=num1%>"
									aria-describedby="basic-addon1" id="num1" name="num1" readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=2%></span>
								<input type="text" class="form-control" value="<%=num2%>"
									aria-describedby="basic-addon1" id="num2" name="num2" readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=3%></span>
								<input type="text" class="form-control" value="<%=num3%>"
									aria-describedby="basic-addon1" id="num3" name="num3" readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=4%></span>
								<input type="text" class="form-control" value="<%=num4%>"
									aria-describedby="basic-addon1" id="num4" name="num4" readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=5%></span>
								<input type="text" class="form-control" value="<%=num5%>"
									aria-describedby="basic-addon1" id="num5" name="num5" readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=6%></span>
								<input type="text" class="form-control" value="<%=num6%>"
									aria-describedby="basic-addon1" id="num6" name="num6" readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=7%></span>
								<input type="text" class="form-control" value="<%=num7%>"
									aria-describedby="basic-addon1" id="num7" name="num7" readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=8%></span>
								<input type="text" class="form-control" value="<%=num8%>"
									aria-describedby="basic-addon1" id="num8" name="num8" readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=9%></span>
								<input type="text" class="form-control" value="<%=num9%>"
									aria-describedby="basic-addon1" id="num9" name="num9" readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=10%></span>
								<input type="text" class="form-control" value="<%=num10%>"
									aria-describedby="basic-addon1" id="num10" name="num10"
									readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=11%></span>
								<input type="text" class="form-control" value="<%=num11%>"
									aria-describedby="basic-addon1" id="num11" name="num11"
									readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=12%></span>
								<input type="text" class="form-control" value="<%=num12%>"
									aria-describedby="basic-addon1" id="num12" name="num12"
									readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=13%></span>
								<input type="text" class="form-control" value="<%=num13%>"
									aria-describedby="basic-addon1" id="num13" name="num13"
									readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=14%></span>
								<input type="text" class="form-control" value="<%=num14%>"
									aria-describedby="basic-addon1" id="num14" name="num14"
									readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=15%></span>
								<input type="text" class="form-control" value="<%=num15%>"
									aria-describedby="basic-addon1" id="num15" name="num15"
									readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=16%></span>
								<input type="text" class="form-control" value="<%=num16%>"
									aria-describedby="basic-addon1" id="num16" name="num16"
									readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=17%></span>
								<input type="text" class="form-control" value="<%=num17%>"
									aria-describedby="basic-addon1" id="num17" name="num17"
									readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=18%></span>
								<input type="text" class="form-control" value="<%=num18%>"
									aria-describedby="basic-addon1" id="num18" name="num18"
									readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=19%></span>
								<input type="text" class="form-control" value="<%=num19%>"
									aria-describedby="basic-addon1" id="num19" name="num19"
									readonly>
							</div>
							<br>
							<div class="input-group" style="width: 50%; margin: 0 auto;">
								<span class="input-group-addon" id="basic-addon1"><%=20%></span>
								<input type="text" class="form-control" value="<%=num20%>"
									aria-describedby="basic-addon1" id="num20" name="num20"
									readonly>
							</div>
							<br>
							<!-- 	<button type="button" class="btn btn-primary"
									onclick="CheckAddAnswer()">제출</button>
							</form> -->
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
