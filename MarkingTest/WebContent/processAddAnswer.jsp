<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="DB.DBconn" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<%
	
	request.setCharacterEncoding("UTF-8");

	String realFolder = "/Users/jinjookim/Desktop/upload"; //웹 애플리케이션상의 절대 경로
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기 5MB
	String encType = "UTF-8"; //인코딩 유형
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String guest_id = multi.getParameter("guest_id");
	String num1 = multi.getParameter("num1");
	String num2 = multi.getParameter("num2");
	String num3 = multi.getParameter("num3");
	String num4 = multi.getParameter("num4");
	String num5 = multi.getParameter("num5");
	String num6 = multi.getParameter("num6");
	String num7 = multi.getParameter("num7");
	String num8 = multi.getParameter("num8");
	String num9 = multi.getParameter("num9");
	String num10 = multi.getParameter("num10");
	String num11 = multi.getParameter("num11");
	String num12 = multi.getParameter("num12");
	String num13 = multi.getParameter("num13");
	String num14 = multi.getParameter("num14");
	String num15 = multi.getParameter("num15");
	String num16 = multi.getParameter("num16");
	String num17 = multi.getParameter("num17");
	String num18 = multi.getParameter("num18");
	String num19 = multi.getParameter("num19");
	String num20 = multi.getParameter("num20");
	
	Connection conn = DBconn.getConnection();
	PreparedStatement pstmt = null;
	
	String sql = "insert into answersheet(guest_id, num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20, created) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,NOW())";
   	pstmt = conn.prepareStatement(sql);
   
   	pstmt.setString(1, guest_id);
 	pstmt.setString(2, num1);
   	pstmt.setString(3, num2);
   	pstmt.setString(4, num3);
   	pstmt.setString(5, num4);
   	pstmt.setString(6, num5);
   	pstmt.setString(7, num6);
   	pstmt.setString(8, num7);
   	pstmt.setString(9, num8);
   	pstmt.setString(10, num9);
   	pstmt.setString(11, num10);
   	pstmt.setString(12, num11);
   	pstmt.setString(13, num12);
   	pstmt.setString(14, num13);
   	pstmt.setString(15, num14);
   	pstmt.setString(16, num15);
   	pstmt.setString(17, num16);
   	pstmt.setString(18, num17);
   	pstmt.setString(19, num18);
   	pstmt.setString(20, num19);
   	pstmt.setString(21, num20);
    
   	pstmt.execute();
   	
   	pstmt.close();
   	DBconn.close(); 
   	
 	response.sendRedirect("home.jsp");
 	

%>