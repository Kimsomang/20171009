<%@ page import="com.selfit.model.DTO.Members" %>
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

function init() {
	document.memberForm.id.value = "${requestScope.getMember.memberId}";
	document.memberForm.pw.value = "${requestScope.getMember.memberPw}";
	document.memberForm.userName.value = "${requestScope.getMember.memberName}";
	document.memberForm.birth.value = "${requestScope.getMember.memberBirth}";
	document.memberForm.userSex.value = "${requestScope.getMember.memberSex}";
	document.memberForm.mobile.value = "${requestScope.getMember.memberPhone}";
	document.memberForm.post.value = "${requestScope.getMember.memberPost}";
	document.memberForm.address1.value = "${requestScope.getMember.memberAddress1}";
	document.memberForm.address2.value = "${requestScope.getMember.memberAddress2}";
	document.memberForm.bodyType.value = "${requestScope.getMember.memberBody}";
	document.memberForm.grade.value = "${requestScope.getMember.memberGrade}";
	document.memberForm.preferBrand.value = "${requestScope.getMember.memberBrand}";
	document.memberForm.dateENT.value = "${requestScope.getMember.memberEnt}";
	document.memberForm.condition.value = "${requestScope.getMember.memberStatus}";
	document.memberForm.dateLast.value = "${requestScope.getMember.memberUpdate}";
	document.memberForm.actCNT.value = "${requestScope.getMember.memberActcnt}";
}

function cancel() {
	document.memberForm.reset();
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
	<jsp:useBean id="adminInfo" class="com.selfit.model.DTO.Members" scope="request" />
	<form name="memberForm" method="post" action="control?action=updateAdmin">
		<div>
			<div>아이디 : <input type = "text" name="id" readOnly></div>
			<div>비밀번호 : <input type = "text" name="pw"></div>
			<div>이름 : <input type = "text" name="userName"></div>
			<div>생년월일 : <input type = "text" name="birth" readOnly></div>
			<div>성별 : <input type = "text" name="userSex" readOnly></div>
			<div>핸드폰번호 : <input type = "text" name="mobile"></div>
			<div>우편번호 : <input type = "text" name="post"></div>
			<div>우편번호주소 : <input type = "text" name="address1"></div>
			<div>상세주소 : <input type = "text" name="address2"></div>
			<div>체형 : <input type = "text" name="bodyType"></div>
			<div>회원등급 : <input type = "text" name="grade"></div>
			<div>선호브랜드 : <input type = "text" name="preferBrand"></div>
			<div>가입일 : <input type = "text" name="dateENT" readOnly></div>
			<div>회원상태 : <input type = "text" name="condition"></div>
			<div>마지막변경일 : <input type = "text" name="dateLast" readOnly></div>
			<div>활동횟수 : <input type = "text" name="actCNT" readOnly></div>
			<div><input type="submit" value="수정하기">
			<input type="button" value="취소하기" onClick="cancel()"></div>
		</div>
	</form>
</div>
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>