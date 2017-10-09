<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selfit 브랜드 수정관리</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/manage.css">
<script type="text/javascript">

function init() {
	document.brandForm.brandsId.value="${requestScope.getBrand.brandId}";
	document.brandForm.brandsName.value="${requestScope.getBrand.brandName}";
	document.brandForm.brandsDesc.value="${requestScope.getBrand.brandDesc}";
}

function cancel() {
	document.brandForm.reset();
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
	<div id="updateBrandForm">
	<h3>브랜드 수정 페이지</h3>
	
	<form name="brandForm" method="post" action="control?action=updateBrands">
	<div>
		<div>브랜드식별번호 : <input type ="text" name="brandsId"></div>
		<div>브랜드명 : <input type ="text" name="brandsName"></div>
		<div>브랜드설명 : <input type ="text" name="brandsDesc"></div>
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