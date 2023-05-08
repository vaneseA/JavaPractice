<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
  request.setCharacterEncoding("UTF-8");

  String id = request.getParameter("id");
  String pw = request.getParameter("pw");

  String jdbcDriver = "com.mysql.jdbc.Driver";
  String dbUrl = "jdbc:mysql://localhost:3306/board?useSSL=false&characterEncoding=UTF-8";
  String dbId = "root";
  String dbPw = "password";

  Connection conn = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;

  try {
    Class.forName(jdbcDriver);
    conn = DriverManager.getConnection(dbUrl, dbId, dbPw);

    String sql = "SELECT * FROM user WHERE id = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    rs = pstmt.executeQuery();

    if (rs.next()) {
      if (rs.getString("pw").equals(pw)) {
        session.setAttribute("userId", id);
        response.sendRedirect("board.jsp");
      } else {
        out.println("<script>alert('비밀번호가 일치하지 않습니다.'); history.back();</script>");
      }
    } else {
      out.println("<script>alert('아이디가 존재하지 않습니다.'); history.back();</script>");
    }
  } catch (Exception e) {
    e.printStackTrace();
  } finally {
    try {
      if (rs != null) rs.close();
      if (pstmt != null) pstmt.close();
      if (conn != null) conn.close();
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
%>
