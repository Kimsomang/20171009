<%@ page import="com.selfit.model.DTO.Members" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selfit 회원 수정관리</title>
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
	<h2>회 원 관 리</h2>
	<form name="memberForm" method="post" action="control?action=updateUser">
	<div id="updateMemberForm">
		<div class="trStyle">
			<div class="tdStyle textSize contentsColumn">아이디 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="id" readOnly>
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">비밀번호 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="pw">
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">이름 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="userName">
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">생년월일 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="birth" readOnly>
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">성별 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="userSex" readOnly>
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">핸드폰번호 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="mobile">
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">우편번호 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="post">
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">우편번호주소 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="address1">
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">상세주소 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="address2">
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">체형 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="bodyType">
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">회원등급 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="grade">
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">선호브랜드 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="preferBrand">
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">가입일 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="dateENT" readOnly>
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">회원상태 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="condition">
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">마지막변경일 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="dateLast" readOnly>
			</div>
		</div>
		<div class="trStyle">	
			<div class="tdStyle textSize contentsColumn">활동횟수 : </div>
			<div class="tdStyle">
				<input class="tb_normal" type = "text" name="actCNT" readOnly>
			</div>
		</div>	
		<div class="trStyle">
			<input class="bt_size" type="submit" value="수정">
			<input class="bt_size" type="button" value="취소" onClick="cancel()">
		</div>
	</div>
	</form>
</div>
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>