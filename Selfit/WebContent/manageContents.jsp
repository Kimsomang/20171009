<%@ page import = "com.selfit.model.DTO.Categories" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selfit 카테고리관리</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/manage.css">
<script type="text/javascript">

function insertC() {
	var input = document.createElement("input");
	input.setAttribute("type", "hidden");
	input.setAttribute("name", "action");
	input.setAttribute("value", "insertCategory");
	
	document.getElementById("bt_insert").appendChild(input);
	
	document.categoryForm.submit();
}

function deleteC() {
	var input = document.createElement("input");
	input.setAttribute("type", "hidden");
	input.setAttribute("name", "action");
	input.setAttribute("value", "deleteCategory");
	
	document.getElementById("bt_delete").appendChild(input);
	
	document.categoryForm.submit();
}
</script>
</head>
<body>
<div id="header">
	<%@ include file="header.jsp" %>
</div>
<div id="contents">
	<div id="contentTable">
	<h3>카테고리(컨텐츠)관리 페이지</h3>
	
	<form name="contentsForm">
	<table border="1">
		<tr>
			<td>카테고리식별번호</td>
			<td>카테고리명</td>
			<td>카테고리설명</td>
		</tr>
		<c:forEach var="idx" items="${requestScope.getAllContents}">
		<c:set var="contentsId" value="${idx.categoriesId}" />
		<tr>
			<td><a href="control?action=updateContents&id=${contentsId}">${contentsId}</a></td>
			<td>${idx.categoriesName}</td>
			<td>${idx.categoriesDesc}</td>
		</tr>
		</c:forEach>
	</table>
	</form>
	</div>
	<br>
	<hr>
	<br>
	<div id="contentTable">
	<form name="categoryForm">
		<div>
			<div class="trStyle">
				<div class="manageTable tdStyle contentsColumn">카테고리번호 : </div>
				<div class="manageTable tdStyle contentsColumn">
				<input class="textBox" type = "text" name="cateId"></div>
			</div>
			<div class="trStyle">
			<div class="manageTable tdStyle contentsColumn">카테고리이름 : </div>
			<div class="manageTable tdStyle contentsColumn">
			<input class="textBox" type = "text" name="cateName"></div>
			</div>
			<div class="trStyle">
			<div class="manageTable tdStyle contentsColumn">카테고리설명 : </div>
			<div class="manageTable tdStyle contentsColumn">
			<input class="textBox" type = "text" name="cateDesc"></div>
			</div>
			<div class="trStyle">
			<input type="button" id="bt_insert" value="삽입" onClick="insertC()">
			<input type="button" id="bt_delete" value="삭제" onClick="deleteC()">
			</div>
		</div>
	</form>
	</div>
</div>
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>