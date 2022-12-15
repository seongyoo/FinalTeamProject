<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
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
    <button type = "button" onclick="location.href='list'">목록보기</button>
    <button type = "submit">등록하기</button>
</form>

</body>
</html>