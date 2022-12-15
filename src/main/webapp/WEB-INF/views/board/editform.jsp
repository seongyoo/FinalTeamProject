<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form:form modelAttribute = "boardVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id ="edit">
		<tr><td>순위:</td><td><input type="text" name="rank"/></td></tr>
		<tr><td>드라마제목:</td><td><input type="text" name="title"/></td></tr>
		<tr><td>플랫폼:</td><td><input type="text" name="platform"/></td></tr>
		<tr><td>장르:</td><td>
			<select id="type" name="type">
				<option value="romance">로맨스</option>
				<option value="comedy">코미디</option>
				<option value="thriller">스릴러</option>
				<option value="action.">액션</option>
			</select>
		</td></tr>
		<tr><td>등장인물:</td><td><textarea cols="50" rows="5" name="character"></textarea></td></tr>
		<tr><td>작품설명:</td><td><textarea cols="50" rows="5" name="expl"></textarea></td></tr>
		<tr><td>회차수:</td>:</td><td><input type="text" name="eps"/></td></tr>
		<tr><td>평점</td>:</td><td><input type="text" name="rate"/></td></tr>
	</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history.back()"/>

</form:form>

</body>
</html>