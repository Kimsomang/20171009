<%@ page import="java.util.ArrayList" %>
<%@ page import="com.selfit.model.DTO.Contacts" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selfit 제휴문의 관리</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/manage.css">
</head>
<body>
<div id="header">
	<%@ include file="header.jsp" %>
</div>
<div id="contents">
	<div id="contactTable">
	<h3>제휴문의관리페이지</h3>
	
	<table border="1">
		<tr>
			<td>업체명</td>
			<td>담당자명</td>
			<td>업체전화번호</td>
			<td>업체이메일</td>
			<td>문의일자</td>
		</tr>
		<c:forEach var="idx" items="${requestScope.getAllContacts}">
		<tr>
			<td>${idx.contactCorp}</td>
			<td>${idx.contactPerson}</td>
			<td>${idx.contactTel}</td>
			<td>${idx.contactEmail}</td>
			<td>${idx.contactDate}</td>
		</tr>
		</c:forEach>
	</table>
	</div>
</div>
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>