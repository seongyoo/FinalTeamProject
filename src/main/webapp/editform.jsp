<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post">
<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
<table>
	<tr><td>Rank:</td><td><input type="text" name="rank" value="<%= u.getRank()%>"/></td></tr>
	<tr><td>Title:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
	<tr><td>Platform:</td><td><input type="text" name="platform" value="<%= u.getPlatform()%>"/></td></tr>
	<tr><td>Type:</td><td><input type="text" name="title" value="<%= u.getType()%>"/></td></tr>
	<tr><td>Character:</td><td><textarea cols="50" rows="5" name="character"><%= u.getCharacter()%></textarea></td></tr>
	<tr><td>Expl:</td><td><textarea cols="50" rows="5" name="expl"><%= u.getExpl()%></textarea></td></tr>
	<tr><td>Eps:</td><td><input type="text" name="eps" value="<%= u.getEps()%>" /></td></tr>
	<tr><td>Rate:</td><td><input type="text" name="rate" value="<%= u.getRate()%>" /></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>