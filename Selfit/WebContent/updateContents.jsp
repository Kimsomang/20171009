<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selfit 카테고리 수정관리</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/manage.css">
<script type="text/javascript">

function init() {
	document.categoryForm.cateId.value="${requestScope.getCategory.categoriesId}";
	document.categoryForm.cateName.value="${requestScope.getCategory.categoriesName}";
	document.categoryForm.cateDesc.value="${requestScope.getCategory.categoriesDesc}";
}

function cancel() {
	document.categoryForm.reset();
	init();
}

window.onload = function() {
	init();
}
</script>
</head>
<body>
<div id="header">
	<%@ include file="header.jsp" %>
</div>
<div id="contents">
	<div id="updateContentForm">
	<h3>카테고리 수정 페이지</h3>
	
	<form name="categoryForm" method="post" action="control?action=updateCategory">
	<div>
		<div>카테고리번호 : <input type ="text" name="cateId"></div>
		<div>카테고리이름 : <input type ="text" name="cateName"></div>
		<div>카테고리설명 : <input type ="text" name="cateDesc"></div>
		<div><input type="submit" id="bt_update" value="확인">
		<input type="button" value="취소" onClick="cancel()"></div>
	</div>
	</form>
	</div>
</div>
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>