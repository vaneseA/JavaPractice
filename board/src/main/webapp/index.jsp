<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">게시판</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">게시판</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
    </ul>
  </div>
</nav>
<div class="container">
	<h2>게시판 목록</h2>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>첫번째 게시글</td>
				<td>작성자1</td>
				<td>2021-01-01</td>
			</tr>
			<tr>
				<td>2</td>
				<td>두번째 게시글</td>
				<td>작성자2</td>
				<td>2021-01-02</td>
			</tr>
			<tr>
				<td>3</td>
				<td>세번째 게시글</td>
				<td>작성자3</td>
				<td>2021-01-03</td>
			</tr>
		</tbody>
	</table>
	<button type="button" class="btn btn-primary btn-lg">글쓰기</button>
</div>
</body>
</html>
