<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.content"%>
<%@ page import="dao.ContentsRepository"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	ContentsRepository dao = ContentsRepository.getInstance();
	ArrayList<content> listOfContents = dao.getAllContents();
%>

<!-- 일반 포스팅 영역 -->
<div class="blog-post-header-wrapper">
	<div class="blog-post-header">
		<!-- 포스팅 제목 -->
		<h2>공지사항</h2>
		<span><strong><i class="fa fa-calendar"></i> 4,5회
				정보처리기사 실기</strong></span>
	</div>
</div>

<div class="blog-post-content-wrapper">
	<!-- 포스트 관리 -->
	<!-- 블로그 본문 -->
	<div class="blog-post-content">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfContents.size(); i++) {
				content content = listOfContents.get(i);
			%>
			<div class="col-md-4 col-md-offset-4">
				<h2><%=content.getTitle()%></h2>
				<img src="./images/<%=content.getFilename()%>" style="width: 100%">
				<br><p><%=content.getText()%>
				<p>[<%=content.getDate()%>]
			</div>
			<%
				}
			%>
		</div>
		<br>
	</div>
</div>