<%@ page import="java.util.ArrayList" %>
<%@ page import="com.selfit.model.DTO.Bodys" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/manage.css">
<script type="text/javascript">
function insertB() {
	var input = document.createElement("input");
	input.setAttribute("type", "hidden");
	input.setAttribute("name", "action");
	input.setAttribute("value", "insertBody");
	document.getElementById("bt_insert").appendChild(input);
	document.bodyForm.submit();
}

function deleteB() {
	var input = document.createElement("input");
	input.setAttribute("type", "hidden");
	input.setAttribute("name", "action");
	input.setAttribute("value", "deleteBody");
	document.getElementById("bt_delete").appendChild(input);
	document.bodyForm.submit();
}
</script>
</head>
<body>
<div id="header">
	<%@ include file="header.jsp" %>
</div>
<div id="contents">
	<div id="bodyTable">
	<h3>체형관리 페이지</h3>
	<table border ="1">
		<tr>
			<td>체형식별번호</td>
			<td>체형이름</td>
			<td>체형설명</td>
		</tr>
		<c:forEach var="idx" items="${requestScope.getAllBodys}">
		<c:set var="bodyNo" value="${idx.bodyId}" />
		<tr>
			<td><a href="control?action=updateBody&id=${bodyNo}">${bodyNo}</a></td>
			<td>${idx.bodyName}</td>
			<td>${idx.bodyDesc}</td>
		</tr>
		</c:forEach>
	</table>
	<form name="bodyForm">	
		<div style="clear: both">
			<div>체형식별번호 : <input type = "text" name="bodysId"></div>
			<div>체형이름 : <input type = "text" name="bodysName"></div>
			<div>체형설명 : <input type = "text" name="bodysDesc"></div>
			<div><input type="button" id="bt_insert" value="삽입" onClick="insertB()">
			<input type="button" id="bt_delete" value="삭제" onClick="deleteB()"></div>
		</div>
	</form>
	</div>
</div>
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>