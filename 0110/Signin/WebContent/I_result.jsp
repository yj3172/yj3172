<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%
	String id=(String)request.getAttribute("id");
	out.println(id+"님의 정보가 삭제되었습니다.");
%>


