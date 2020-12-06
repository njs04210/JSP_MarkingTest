<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- <form name="newAnswer" action="./processAddAnswer.jsp" class="form-horizontal" method="post"> -->
	<%
		for (int i = 0; i < 20; i++) {
	%>

	<div class="input-group" style="width: 50%; margin: 0 auto;">
		<span class="input-group-addon" id="basic-addon1"><%=i + 1%></span> <input
			type="text" class="form-control" placeholder="답안"
			aria-describedby="basic-addon1" id="num<%=i + 1%>"
			name="num<%=i + 1%>">
	</div>
	<br>

	<%
		}
	%>
	<p style="font-size: 12px">기타사항은 첨부파일을 이용해주세요.
	<div class="container" style="width: 400px">
	<span class="input-group-addon" id="basic-addon1">첨부파일</span> <input type="file" class="form-control" aria-describedby="basic-addon1">
	</div><br>
	<button type="button" class="btn btn-primary" onclick="CheckAddAnswer()">제출</button>
	<input type="submit" class="btn btn-primary" value="임시저장" onclick="javascript: newAnswer.action='./processCheckAnswer.jsp;'" />
<!-- </form> -->
	