<%@ page import="com.selfit.model.DTO.Members" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selfit 회원관리</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/manage.css">
</head>
<body>
<div id="header">
	<%@ include file="header.jsp" %>
</div>
<div id="contents">
	<div id="memberTable">
	<h3>회원관리 페이지</h3>
	
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>생년월일</td>
			<td>성별</td>
			<td>핸드폰번호</td>
			<td>우편번호</td>
			<td>주소</td>
			<td>상세주소</td>
			<td>체형</td>
			<td>회원등급</td>
			<td>선호브랜드</td>
			<td>가입일</td>
			<td>회원상태</td>
			<td>마지막회원상태변경일</td>
			<td>활동횟수</td>
		</tr>
		<c:forEach var="idx" items="${requestScope.getAllMembers}">
		<c:set var="memberId" value="${idx.memberId}"/>
		<tr>
			<td><a href="control?action=updateMembers&id=${memberId}">${memberId}</a></td>
			<td>${idx.memberPw}</td>
			<td>${idx.memberName}</td>
			<td>${idx.memberBirth}</td>
			<td>${idx.memberSex}</td>
			<td>${idx.memberPhone}</td>
			<td>${idx.memberPost}</td>
			<td>${idx.memberAddress1}</td>
			<td>${idx.memberAddress2}</td>
			<td>${idx.memberBody}</td>
			<td>${idx.memberGrade}</td>
			<td>${idx.memberBrand}</td>
			<td>${idx.memberEnt}</td>
			<td>${idx.memberStatus}</td>
			<td>${idx.memberUpdate}</td>
			<td>${idx.memberActcnt}</td>
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