--김재림 V1.0
--members DML에 해당하는 부분

--//회원 부분
--회원가입 후 DB 삽입(insert)
--insert into members values(?,?,?,?,?,?,?,?,?,?,?,'','','','','');
Insert into MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_SEX,MEMBER_PHONE,MEMBER_POST,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_BODY,MEMBER_GRADE,MEMBER_BRAND,MEMBER_ENT,MEMBER_STATUS,MEMBER_UPDATE,MEMBER_ACTCNT) values ('leewh3611@naver.com','80149076','이원호','1993.12.11','M','010-3611-3608','360-776',' 충북 청주시 상당구 율량동  현대아파트','11동 1001호','100','G',null,null,null,null,null);
Insert into MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_SEX,MEMBER_PHONE,MEMBER_POST,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_BODY,MEMBER_GRADE,MEMBER_BRAND,MEMBER_ENT,MEMBER_STATUS,MEMBER_UPDATE,MEMBER_ACTCNT) values ('kimbill@hanmail.net','kim1234','김지환','1991.03.04','M','010-2222-2222','140-723',' 서울 용산구 이촌1동  현대아파트','11동 1001호','100','G',null,null,null,null,null);
Insert into MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_SEX,MEMBER_PHONE,MEMBER_POST,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_BODY,MEMBER_GRADE,MEMBER_BRAND,MEMBER_ENT,MEMBER_STATUS,MEMBER_UPDATE,MEMBER_ACTCNT) values ('xmflrtm2@naver.com','aa54135413','박한울','1993.06.07','M','010-7108-4259','441-763',' 경기 수원시 권선구 서둔동  센트라우스아파트 (101∼117동)','115동 706호','600','G',null,null,null,null,null);
Insert into MEMBERS (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_SEX,MEMBER_PHONE,MEMBER_POST,MEMBER_ADDRESS1,MEMBER_ADDRESS2,MEMBER_BODY,MEMBER_GRADE,MEMBER_BRAND,MEMBER_ENT,MEMBER_STATUS,MEMBER_UPDATE,MEMBER_ACTCNT) values ('user001@hanmail.net','password01','사용자1','2000.01.01','W','010-1111-1111','140-774',' 서울 용산구 이촌1동  LG한강자이아파트 (101∼110동)','11동 1001호','200','G',null,null,null,null,null);

--회원 아이디 존재확인 / 회원 단일객체 조회(select)
select * from members where member_id=?

--회원 정보 수정(update)
update members set member_phone=?, member_post=?, member_address1=?, member_address2=?, member_body=? where member_id=?

--회원 아이디 찾기(select)
select member_id from members where member_name=? and member_birth=?

--회원 비밀번호 찾기(select)
select member_pw from members where member_id=? and member_birth=? and member_phone=?

--회원 비밀번호 변경(update)
update members set member_pw=? where member_id=?

--회원 로그인 시 정보일치 확인 조회 및 세션정보 불러오기(select)
select member_id, member_body, member_grade from members where member_id=? and member_pw=?

--//관리자 부분
--회원 전체조회(select)
select * from members;

--관리자 권한 회원 정보 수정(update)
update members set member_pw=?, member_name=?, member_phone=?, member_post=?, member_address1=?, member_address2=?, member_body=?, member_grade=?, member_brand=?, member_status=? where member_id=?
