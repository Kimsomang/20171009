<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selfit 체형 수정관리</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/manage.css">
<script type="text/javascript">

function init() {
	document.bodyForm.bodysId.value="${requestScope.getBody.bodyId}";
	document.bodyForm.bodysName.value="${requestScope.getBody.bodyName}";
	document.bodyForm.bodysDesc.value="${requestScope.getBody.bodyDesc}";
}

function cancel() {
	document.bodyForm.reset();
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
	<div id="updateBodyForm">
	<h3>체형관리 수정 페이지</h3>
	
	<form name="bodyForm" method="post" action="control?action=updateBodys">
	<div>
		<div>체형식별번호 : <input type ="text" name="bodysId"></div>
		<div>체형이름 : <input type ="text" name="bodysName"></div>
		<div>체형설명 : <input type ="text" name="bodysDesc"></div>
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