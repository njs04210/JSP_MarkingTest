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
#columnA { width: 50px;}
#columnB { background-color: white;}
#columnC { width: 10px;}
input { width: 50px; text-align: center;}
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
						<h2>채점하기</h2>
						<%
							String sheetID = request.getParameter("sheetID");
						%>
						<span><strong>[<%=sheetID%>]번 채점지
						</strong></span>
					</div>
				</div>
				<div class="blog-post-content-wrapper"
					style="background-color: #f8f3ec;">
					<div class="container" style="text-align: left;">
						<div class="row">
							<form name="totalcalculate" action="./processAddscore.jsp?sheetID=<%=sheetID %>"
								class="form-horizontal" method="post" style="text-align: center">
								<div class="col-md-6 col-md-offset-3">
								<table class="table table-bordered" style="text-align: center">
									<%
									Connection conn = DBconn.getConnection();
									PreparedStatement pstmt = null;
									Statement stmt = null;
									ResultSet rs = null;

									String sql = "select num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20 from answersheet where sheet_id=?";
									pstmt = conn.prepareStatement(sql);
									pstmt.setString(1, sheetID);

									rs = pstmt.executeQuery();

									if (rs.next()) {
										String num1 = rs.getString("num1");
										String num2 = rs.getString("num2");
										String num3 = rs.getString("num3");
										String num4 = rs.getString("num4");
										String num5 = rs.getString("num5");
										String num6 = rs.getString("num6");
										String num7 = rs.getString("num7");
										String num8 = rs.getString("num8");
										String num9 = rs.getString("num9");
										String num10 = rs.getString("num10");
										String num11 = rs.getString("num11");
										String num12 = rs.getString("num12");
										String num13 = rs.getString("num13");
										String num14 = rs.getString("num14");
										String num15 = rs.getString("num15");
										String num16 = rs.getString("num16");
										String num17 = rs.getString("num17");
										String num18 = rs.getString("num18");
										String num19 = rs.getString("num19");
										String num20 = rs.getString("num20");

									%>
									<tbody>
										<tr>
											<td id="columnA">1</td>
											<td id="columnB"><%=num1%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">2</td>
											<td id="columnB"><%=num2%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">3</td>
											<td id="columnB"><%=num3%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr><td id="columnA">4</td>
											<td id="columnB"><%=num4%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">5</td>
											<td id="columnB"><%=num5%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">6</td>
											<td id="columnB"><%=num6%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">7</td>
											<td id="columnB"><%=num7%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">8</td>
											<td id="columnB"><%=num8%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">9</td>
											<td id="columnB"><%=num9%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">10</td>
											<td id="columnB"><%=num10%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">11</td>
											<td id="columnB"><%=num11%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">12</td>
											<td id="columnB"><%=num12%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">13</td>
											<td id="columnB"><%=num13%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">14</td>
											<td id="columnB"><%=num14%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">15</td>
											<td id="columnB"><%=num15%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">16</td>
											<td id="columnB"><%=num16%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">17</td>
											<td id="columnB"><%=num17%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">18</td>
											<td id="columnB"><%=num18%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">19</td>
											<td id="columnB"><%=num19%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
										<tr>
											<td id="columnA">20</td>
											<td id="columnB"><%=num20%></td>
											<td id="columnC"><input type="text" name=score></td>
										</tr>
									</tbody>
									<%
										}
									%>
								</table>
								</div>
								<br>
								<button type="button" class="btn btn-primary"
									onclick="totalCalculate()">총점 확인</button>&nbsp&nbsp
								<input type="text" id="sumfield" name="sumfield" value="" readonly/>
								<br><br>
								<p id="passcheck"></p>
								<br><div id="next"></div>
							</form>
							
						</div>
					</div>
				</div>
			</div>
		</article>
		<%@ include file="script.jsp"%>
		<script type="text/javascript" src="./resources/js/validation.js?ver=7"></script>
	</fmt:bundle>
</body>
</html>
