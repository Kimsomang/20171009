<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selfit 관리자페이지</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/manage.css">
<!-- 김재림 추가분 세션 검증 -->
<% String memberId = (String)session.getAttribute("memberId");
String memberGrade = (String)session.getAttribute("memberGrade");
if (memberId == null || memberId.trim().isEmpty()) {
	request.setAttribute("serviceName", "로그인 세션 만료");
	request.setAttribute("errorDesc", "현재 페이지는 로그인이 필요한 페이지 입니다.");
} else if (!memberGrade.equals("A")) {
	response.sendRedirect("gradeError");
}
%>
</head>
<body>
<div id="header">
	<%@ include file="header.jsp" %>
</div>
<div id="contents">
	<div id="logInfo">
	<p style="text-align: center; line-height: 70px;">관리자님, 환영합니다</p>
	<a href="control?action=adminInfo">
	<input type="image" src="img/bt_adminInfo.png" name="bt_adminInfo"
	width="150px" height="50px"></a>
	<a href="control?action=logout">
	<input type="image" src="img/bt_logout.png" name="bt_logout"
	width="150px" height="50px"></a>
	</div>
	<div id="banner">
	<input type="image" src="img/img_main.png" name="img_banner" width="800px" height="170px">
	</div>
	<div id="hotContents">
	</div>
	<div id="bt_contents">
		<a href="control?action=allMembers">
		<input type="image" src="img/img_manageMembers.png" name="manageMember"
		width="260px" height="200px"></a>
		<a href="control?action=allBodys">
		<input type="image" src="img/img_manageBodys.png" name="manageBody"
		width="260px" height="200px" onClick="moveBodys()"></a>
		<a href="control?action=allContents">
		<input type="image" src="img/img_manageContents.png" name="manageContent"
		width="260px" height="200px" onClick="moveContents()"></a>
		<a href="control?action=allBrand">
		<input type="image" src="img/img_manageBrands.png" name="manageBrand"
		width="260px" height="200px" onClick="moveBrands()"></a>
		<a href="control?action=allContacts">
		<input type="image" src="img/img_manageContacts.png" name="manageContact"
		width="260px" height="200px" onClick="moveContacts()"></a>
	</div>
</div>	
<div id ="footer">
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>