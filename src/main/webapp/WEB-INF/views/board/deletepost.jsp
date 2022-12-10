<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<%
	String sid = request.getParameter("id");
	if (sid != "") {
		int id = Integer.parseInt(sid);

		BoardDAO boardDAO = new BoardDAO();
		BoardVO u = new BoardVO();
		u.setSeq(id);
		boardDAO.deleteBoard(id);
		response.sendRedirect("list");
	}
%>