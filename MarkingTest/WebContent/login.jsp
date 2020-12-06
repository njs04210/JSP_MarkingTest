<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Login</title>
	<meta charset="UTF-8" />

	<title>정처기.come</title>
	
		<%@ include file="stylesheet.jsp" %>

</head>
<body>
	<jsp:include page="logo.jsp" />
	<article>
		<div class="blog-post">
			<div class="blog-post-header-wrapper">
				<div class="blog-post-header">
					<h2>로그인</h2>
					<div class="container" align="center">
						<div class="col-md-4 col-md-offset-4">
							<h3 class="form-signin-heading">Please sign in</h3>
							<%
								String error = request.getParameter("error");
							if (error != null) {
								out.println("<div class='alert alert-danger'>");
								out.println("아이디와 비밀번호를 확인해주세요");
								out.println("</div>");
							}
							%>
							<form class="form-signin" action="j_security_check" method="post">
								<div class="form-group">
									<label for="inputUserName" class="sr-only">User Name</label>
									<input type="text" class="form-control" placeholder="ID" name="j_username" required autofocus>
								</div>
								<div class="form-group">
									<label for="inputPassword" class="sr-only">Password</label>
									<input type="password" class="form-control" placeholder="Password" name="j_password" required>
								</div>
								<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<%@ include file="footer.jsp" %>
		</div>
	</article>
	<%@ include file="script.jsp" %>
</body>
</html>