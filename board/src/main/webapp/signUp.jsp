<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.google.firebase.auth.*" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.util.concurrent.ExecutionException" %>

<%
  request.setCharacterEncoding("UTF-8");

  String email = request.getParameter("email");
  String password = request.getParameter("password");

  FirebaseAuth mAuth = FirebaseAuth.getInstance();
  try {
    mAuth.createUserWithEmailAndPassword(email, password).get();
    out.println("<script>alert('회원가입이 완료되었습니다.'); location.href='signIn.jsp';</script>");
  } catch (ExecutionException e) {
    out.println("<script>alert('" + e.getCause().getMessage() + "'); history.back();</script>");
  } catch (InterruptedException | IOException e) {
    e.printStackTrace();
  }
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
</head>
<body>
  <h1>회원가입</h1>
  <form method="post">
    <fieldset>
      <legend>회원 정보 입력</legend>
      <label for="email">이메일:</label>
      <input type="email" id="email" name="email" required>
      <br>
      <label for="password">비밀번호:</label>
      <input type="password" id="password" name="password" required>
      <br>
      <input type="submit" value="회원가입">
    </fieldset>
  </form>
  <p>이미 회원이신가요? <a href="login.jsp">로그인</a></p>
</body>
</html>
