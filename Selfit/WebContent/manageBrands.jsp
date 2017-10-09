<%@ page import = "com.selfit.model.DTO.Brands" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selfit 브랜드관리</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/manage.css">
<script type="text/javascript">
function insertB() {
	var input = document.createElement("input");
	input.setAttribute("type", "hidden");
	input.setAttribute("name", "action");
	input.setAttribute("value", "insertBrand");
	
	document.getElementById("bt_insert").appendChild(input);
	
	document.brandForm.submit();
}

function deleteB() {
	var input = document.createElement("input");
	input.setAttribute("type", "hidden");
	input.setAttribute("name", "action");
	input.setAttribute("value", "deleteBrand");
	
	document.getElementById("bt_delete").appendChild(input);
	
	document.brandForm.submit();
}
</script>
</head>
<body>
<div id="header">
	<%@ include file="header.jsp" %>
</div>
<div id="contents">
	<h3>브랜드관리 페이지</h3>
	<div id="brandTable">
	<table border ="1">
		<tr>
			<td>브랜드식별번호</td>
			<td>브랜드명</td>
			<td>브랜드설명</td>
		</tr>
		<c:forEach var="idx" items="${requestScope.getAllBrands}">
		<c:set var="brandNo" value="${idx.brandId}" />
		<tr>
			<td><a href="control?action=updateBrand&id=${brandNo}">${brandNo}</a></td>
			<td>${idx.brandName}</td>
			<td>${idx.brandDesc}</td>
		</tr>
		</c:forEach>
	</table>
	</div>
	<br>
	<hr>
	<br>
	<div id="brandTable">
	<form name="brandForm">
	<div>
		<div class="trStyle">
			<div class="manageTable tdStyle contentsColumn">브랜드식별번호 : </div>
			<div class="manageTable tdStyle contentsColumn">
			<input class="textBox" type = "text" name="brandsId"></div>
		</div>
		<div class="trStyle">	
			<div class="manageTable tdStyle contentsColumn">브랜드명 : </div>
			<div class="manageTable tdStyle contentsColumn">
			<input class="textBox" type = "text" name="brandsName"></div>
		</div>
		<div class="trStyle">	
			<div class="manageTable tdStyle contentsColumn">브랜드설명 : </div>
			<div class="manageTable tdStyle contentsColumn">
			<input class="textBox" type = "text" name="brandsDesc"></div>
		</div>
		<div class="trStyle">	
			<input type="button" id="bt_insert" value="삽입" onClick="insertB()">
			<input type="button" id="bt_delete" value="삭제" onClick="deleteB()">
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