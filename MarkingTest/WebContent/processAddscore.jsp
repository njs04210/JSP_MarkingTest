<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="DB.DBconn" %>
<%

	request.setCharacterEncoding("UTF-8");

	String sheetID = request.getParameter("sheetID");
	String scores[] = request.getParameterValues("score");
	System.out.println(scores[0]);
	int totalscore = 0;
	
	for (int i = 0; i < scores.length; i++) {
		totalscore += Integer.parseInt(scores[i]);
	}
	
	System.out.println(totalscore);
	
	Connection conn = DBconn.getConnection();
	PreparedStatement pstmt = null;
	
	String sql = "update answersheet set score=? where sheet_id=?";
   	pstmt = conn.prepareStatement(sql);
   
 	pstmt.setString(1, Integer.toString(totalscore));
 	pstmt.setString(2, sheetID);
    
   	pstmt.execute();
   	
   	pstmt.close();
   	DBconn.close(); 
   	
 	response.sendRedirect("sendScore.jsp");
 	

%>