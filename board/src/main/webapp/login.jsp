<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>게시판</title>
  <script type="module">
    // Import the functions you need from the SDKs you need
    import { initializeApp } from "https://www.gstatic.com/firebasejs/9.21.0/firebase-app.js";
    import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.21.0/firebase-analytics.js";
    // TODO: Add SDKs for Firebase products that you want to use
    // https://firebase.google.com/docs/web/setup#available-libraries

    // Your web app's Firebase configuration
    // For Firebase JS SDK v7.20.0 and later, measurementId is optional
    const firebaseConfig = {
      apiKey: "AIzaSyCSnwVU4JS4UhE7pFS5A0uGrfAsJQFqF24",
      authDomain: "board-f6550.firebaseapp.com",
      projectId: "board-f6550",
      storageBucket: "board-f6550.appspot.com",
      messagingSenderId: "942648391125",
      appId: "1:942648391125:web:4fdac5d0ccd3bca78f395c",
      measurementId: "G-XRQ7CFNLKV"
    };

    // Initialize Firebase
    const app = initializeApp(firebaseConfig);
    const analytics = getAnalytics(app);
  </script>
</head>
<body>
  <h1>게시판</h1>
  <form action="loginAction.jsp" method="post">
    <fieldset>
      <legend>로그인</legend>
      <label for="username">사용자 이름:</label>
      <input type="text" id="username" name="username">
      <br>
      <label for="password">비밀번호:</label>
      <input type="password" id="password" name="password">
      <br>
      <input type="submit" value="로그인">
    </fieldset>
  </form>
  <ul>
    <li><a href="index.jsp">게시글 보기</a></li>
  </ul>
</body>
</html>
