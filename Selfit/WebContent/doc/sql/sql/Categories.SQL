-- 2017_0929 김재림 v 1.0
-- 초기데이터 설정
insert into CATEGORIES VALUES('100', 'T셔츠', '티셔츠입니다');
insert into CATEGORIES VALUES('200', 'Y셔츠', '티셔츠입니다');
insert into CATEGORIES VALUES('300', '팬츠', '티셔츠입니다');
insert into CATEGORIES VALUES('400', '테스트1', '테스트1');
insert into CATEGORIES VALUES('500', '테스트2', '테스트2');
insert into CATEGORIES VALUES('600', '테스트3', '테스트3');
insert into CATEGORIES VALUES('700', '테스트4', '테스트4');

-- 카테고리 전체 조회
select * from categories

-- 카테고리별 정보 조회
-- select * from categories where categories_id = ?
select * from categories where categories_id = '300';

-- 카테고리 수정
-- update categories set categories_name = ?, categories_desc = ? where categories_id = ?
update categories set categories_name = '치마', categories_desc = '치마' where categories_id = '200';

-- 카테고리 삭제
-- delete from categories where categories_id = ?
delete from categories where categories_id = 100;

