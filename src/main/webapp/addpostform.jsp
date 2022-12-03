<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addpost.jsp" method="post">
<table>
    <tr><td>Rank:</td><td><input type="text" name="rank"/></td></tr>
    <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
    <tr><td>Platform:</td><td><input type="text" name="platform"/></td></tr>
    <tr><td>Type:</td><td><input type="text" name="type"/></td></tr>
    <tr><td>Character:</td><td><textarea cols="50" rows="5" name="character"></textarea></td></tr>
    <tr><td>Expl:</td><td><textarea cols="50" rows="5" name="expl"></textarea></td></tr>
    <tr><td>Eps:</td><td><input type="text" name="eps"/></td></tr>
    <tr><td>Rate:</td><td><input type="text" name="rate"/></td></tr>
<tr><td><a href="posts.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
</form>

</body>
</html>