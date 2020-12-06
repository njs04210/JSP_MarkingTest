<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>

<%

	request.setCharacterEncoding("UTF-8");

	String realFolder = "/Users/jinjookim/Desktop/upload"; //웹 애플리케이션상의 절대 경로
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기 5MB
	String encType = "UTF-8"; //인코딩 유형
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	Cookie num1= new Cookie("temporal_num1", URLEncoder.encode(multi.getParameter("num1"), "utf-8"));
	Cookie num2= new Cookie("temporal_num2", URLEncoder.encode(multi.getParameter("num2"), "utf-8"));
	Cookie num3= new Cookie("temporal_num3", URLEncoder.encode(multi.getParameter("num3"), "utf-8"));
	Cookie num4= new Cookie("temporal_num4", URLEncoder.encode(multi.getParameter("num4"), "utf-8"));
	Cookie num5= new Cookie("temporal_num5", URLEncoder.encode(multi.getParameter("num5"), "utf-8"));
	Cookie num6= new Cookie("temporal_num6", URLEncoder.encode(multi.getParameter("num6"), "utf-8"));
	Cookie num7= new Cookie("temporal_num7", URLEncoder.encode(multi.getParameter("num7"), "utf-8"));
	Cookie num8= new Cookie("temporal_num8", URLEncoder.encode(multi.getParameter("num8"), "utf-8"));
	Cookie num9= new Cookie("temporal_num9", URLEncoder.encode(multi.getParameter("num9"), "utf-8"));
	Cookie num10= new Cookie("temporal_num10", URLEncoder.encode(multi.getParameter("num10"), "utf-8"));
	Cookie num11= new Cookie("temporal_num11", URLEncoder.encode(multi.getParameter("num11"), "utf-8"));
	Cookie num12= new Cookie("temporal_num12", URLEncoder.encode(multi.getParameter("num12"), "utf-8"));
	Cookie num13= new Cookie("temporal_num13", URLEncoder.encode(multi.getParameter("num13"), "utf-8"));
	Cookie num14= new Cookie("temporal_num14", URLEncoder.encode(multi.getParameter("num14"), "utf-8"));
	Cookie num15= new Cookie("temporal_num15", URLEncoder.encode(multi.getParameter("num15"), "utf-8"));
	Cookie num16= new Cookie("temporal_num16", URLEncoder.encode(multi.getParameter("num16"), "utf-8"));
	Cookie num17= new Cookie("temporal_num17", URLEncoder.encode(multi.getParameter("num17"), "utf-8"));
	Cookie num18= new Cookie("temporal_num18", URLEncoder.encode(multi.getParameter("num18"), "utf-8"));
	Cookie num19= new Cookie("temporal_num19", URLEncoder.encode(multi.getParameter("num19"), "utf-8"));
	Cookie num20= new Cookie("temporal_num20", URLEncoder.encode(multi.getParameter("num20"), "utf-8"));
	
	num1.setMaxAge(5 * 60 * 60);
	num2.setMaxAge(5 * 60 * 60);
	num3.setMaxAge(5 * 60 * 60);
	num4.setMaxAge(5 * 60 * 60);
	num5.setMaxAge(5 * 60 * 60);
	num6.setMaxAge(5 * 60 * 60);
	num7.setMaxAge(5 * 60 * 60);
	num8.setMaxAge(5 * 60 * 60);
	num9.setMaxAge(5 * 60 * 60);
	num10.setMaxAge(5 * 60 * 60);
	num11.setMaxAge(5 * 60 * 60);
	num12.setMaxAge(5 * 60 * 60);
	num13.setMaxAge(5 * 60 * 60);
	num14.setMaxAge(5 * 60 * 60);
	num15.setMaxAge(5 * 60 * 60);
	num16.setMaxAge(5 * 60 * 60);
	num17.setMaxAge(5 * 60 * 60);
	num18.setMaxAge(5 * 60 * 60);
	num19.setMaxAge(5 * 60 * 60);
	num20.setMaxAge(5 * 60 * 60);
	
	response.addCookie(num1);
	response.addCookie(num2);
	response.addCookie(num3);
	response.addCookie(num4);
	response.addCookie(num5);
	response.addCookie(num6);
	response.addCookie(num7);
	response.addCookie(num8);
	response.addCookie(num9);
	response.addCookie(num10);
	response.addCookie(num11);
	response.addCookie(num12);
	response.addCookie(num13);
	response.addCookie(num14);
	response.addCookie(num15);
	response.addCookie(num16);
	response.addCookie(num17);
	response.addCookie(num18);
	response.addCookie(num19);
	response.addCookie(num20);
	
	response.sendRedirect("temporalAnswer.jsp");

%>