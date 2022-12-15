<%--
  Created by IntelliJ IDEA.
  User: sinhyemin
  Date: 2022/12/04
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>free board</title>
	<style>
		#list {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		#list td, #list th {
			border: 1px solid #ddd;
			padding: 8px;
			text-align:center;
		}
		#list tr:nth-child(even){background-color: #f2f2f2;}
		#list tr:hover {background-color: #ddd;}
		#list th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			background-color: #006bb3;
			color: white;
		}
	</style>
	<script>
		function delete_ok(id){
			var a = confirm("정말로 삭제하시겠습니까?");
			if(a) location.href='deleteok/'+id;
		}
	</script>
</head>
<body>
<h1>자유게시판</h1>
<form method="post" action="logout">
	<button type='submit'>logout</button>
</form>
<table id="list" width="90%">
	<tr>
		<th>Id</th>
		<th>Rank</th>
		<th>Title</th>
		<th>Platform</th>
		<th>Type</th>
		<th>Character</th>
		<th>Expl</th>
		<th>Eps</th>
		<th>Rate</th>
		<th>Edit</th>
		<th>Delete</th>



	</tr>
	<c:forEach items ="${list}" var="u">
		<tr>
			<td>${u.seq}</td>
			<td>${u.rank}</td>
			<td>${u.title}</td>
			<td>${u.platform}</td>
			<td>${u.type}</td>
			<td>${u.character}</td>
			<td>${u.expl}</td>
			<td>${u.eps}</td>
			<td>${u.rate}</td>
			<td><a href="editform/${u.seq}">글수정</a></td>
			<td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>
		</tr>
	</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">새글쓰기</button>
</body>
</html>
