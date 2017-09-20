INSERT INTO warehouse VALUES
(
	warehouse_code_num_SEQ.NEXTVAL
	, '성산공장'
	, '공장'
);

INSERT INTO warehouse VALUES
(
	warehouse_code_num_SEQ.NEXTVAL
	, '잠실창고'
	, '물류창고'
);

insert into shop values
(
	shop_code_SEQ.nextval
	, '위드미 스타필드코엑스몰4호점'
	, '920223-11111111'
	, '조준석'
	, '02-909-0031'
	, 1
	, 'cljh223@naver.com'
	, 'cljh223@naver.com'
	, '대형 마트'
);

insert into shop values
(
	shop_code_SEQ.nextval
	, '이마트24 스타필드코엑스몰1호점'
	, '785695-11111111'
	, '정우석'
	, '03-4563-1235'
	, 2
	, 'cljh223@naver.com'
	, 'cljh223@naver.com'
	, '대형 마트'
);

insert into shop values
(
	shop_code_SEQ.nextval
	, '잠실 롯데백화점'
	, '352642-4569853'
	, '은지쏭'
	, '02-4532-7856'
	, 0
	, 'cljh223@naver.com'
	, 'cljh223@naver.com'
	, '대형 마트'
);

INSERT INTO product VALUES
(
	'my00001'
	, '진라면'
	, 20000
	, 30000
	, 'aaa'
	, 'box'
	, '40000'
);

INSERT INTO product VALUES
(
	'my00002'
	, '진짬뽕'
	, 25000
	, 35000
	, 'bbb'
	, 'box'
	, '45000'
);

insert into address values
(
	'06164'
	, '서울특별시'
	, '강남구'
	, '봉은사로 524'
	, ''
	, 1
);

insert into address values
(
	'06164'
	, '서울특별시'
	, '강남구'
	, '영동대로 513'
	, '삼성동코엑스'
	, 2
);

insert into address values
(
	'05554'
	, '서울'
	, '송파구'
	, '올림픽로 240'
	, ''
	, 3
);

insert into staff values
(
	staff_code_SEQ.NEXTVAL
	, '정우석'
	, '생산부'
	, '2222'
	, '2222'
	, 'cowstone@kill.ah'
);

insert into staff values
(
	staff_code_SEQ.NEXTVAL
	, '조준석'
	, '영업부'
	, '4444'
	, '4444'
	, 'handsomestone@killl.ah'
);

insert into staff values
(
	staff_code_SEQ.NEXTVAL
	, '송은지'
	, '물류부'
	, '3333'
	, '3333'
	, 'silvermouse@kill.ah'
);

insert into staff values
(
	staff_code_SEQ.NEXTVAL
	, '이재준'
	, '구매부'
	, '1111'
	, '1111'
	, 'peartree@kill.ah'
);

insert into staff values
(
	staff_code_SEQ.NEXTVAL
	, '홍은기'
	, '기술부'
	, '0000'
	, '0000'
	, 'redsilverground@kill.ah'
);


insert into kpiDivision values
(
	0
	, '판매액'
);

insert into kpiDivision values
(
	1
	, '매출액'
);

insert into kpiDivision values
(
	2
	, '매출 총 이익'
);

insert into kpi values
(
	1
	, 50000000
	, '2017-10-01'
	, '2017-10-30'
	, '2'
	, '0'
);

insert into kpi values
(
	2
	, 5000000000
	, '2017-10-01'
	, '2017-10-30'
	, '2'
	, '1'
);

insert into kpi values
(
	3
	, 8000000000
	, '2017-10-01'
	, '2017-10-30'
	, '2'
	, '2'
);

insert into Truck 
values
(seq_truck_code.nextval, '대', 300, 200, 100);

insert into shipping
values
(52, '영업부', '제품3', 10, '영업소1', '2017-09-30', 'confirmed', 1, 1, 1);

insert into shipping
values
(53, '생산부', '제품1', 20, '영업소3', '2017-09-15', 'shipped', 1, 1, 1);

insert into shipping
values
(54, '구매부', '제품2', 40, '영업소2', '2017-09-27', 'rejected', 1, 1, 2);

insert into shipping
values
(55, '영업부', '제품3', 10, '영업소1', '2017-09-30', 'ordered', 1, 1, 2);

insert into shipping
values
(56, '생산부', '제품1', 20, '영업소3', '2017-09-15', 'ordered', 2, 1, 1);

insert into shipping
values
(57, '구매부', '제품2', 40, '영업소2', '2017-09-27', 'ordered', 2, 1, 2);

insert into shipping
values
(58, '영업부', '제품3', 10, '영업소1', '2017-09-30', 'ordered', 2, 1, 2);

insert into shipping
values
(59, '생산부', '제품1', 20, '영업소3', '2017-09-15', 'ordered', 2, 1, 1);

insert into shipping
values
(60, '구매부', '제품2', 40, '영업소2', '2017-09-27', 'ordered', 3, 1, 2);

insert into shipping
values
(61, '영업부', '제품3', 10, '영업소1', '2017-09-30', 'ordered', 3, 1, 2);

insert into shipping
values
(62, '생산부', '제품1', 20, '영업소3', '2017-09-15', 'ordered', 3, 1, 1);

insert into shipping
values
(63, '구매부', '제품2', 40, '영업소2', '2017-09-27', 'ordered', 3, 1, 2);

insert into shipping
values
(64, '영업부', '제품3', 10, '영업소1', '2017-09-30', 'ordered', 4, 1, 1);

insert into shipping
values
(65, '생산부', '제품1', 20, '영업소3', '2017-09-15', 'ordered', 4, 1, 1);

insert into shipping
values
(66, '구매부', '제품2', 40, '영업소2', '2017-09-27', 'ordered', 4, 1, 2);

insert into shipping
values
(67, '구매부', '제품2', 40, '영업소2', '2017-09-27', 'ordered', 4, 1, 2);

insert into shipping
values
(68, '영업부', '제품3', 10, '영업소1', '2017-09-30', 'ordered', 4, 1, 1);

insert into shipping
values
(69, '생산부', '제품1', 20, '영업소3', '2017-09-15', 'ordered', 4, 1, 1);

insert into shipping
values
(70, '구매부', '제품2', 40, '영업소2', '2017-09-27', 'ordered', 2, 1, 2);

insert into shipping
values
(71, '영업부', '제품3', 10, '영업소1', '2017-09-30', 'ordered', 1, 1, 2);

insert into shipping
values
(72, '생산부', '제품1', 20, '영업소3', '2017-09-15', 'ordered', 2, 1, 1);

insert into shipping
values
(73, '구매부', '제품2', 40, '영업소2', '2017-09-27', 'ordered', 2, 1, 2);

insert into factory values (1, '1st Ramen Factory', '경기도 군포시 당정동', '031-450-5500', 15000);
insert into factory values (2, '2nd Ramen Factory', '경기도 안양시 동안구 평촌동', '031-421-2122', 15000);


insert into ramen values('p01', '안성탕면', '1st factory', 131, 125);
insert into ramen values('p02', '신라면', '1st factory', 126, 120);
insert into ramen values('p03', '너구리', '1st factory', 126, 120);
insert into ramen values('p04', '멸치칼국수라면', '1st factory', 104, 98);
insert into ramen values('p05', '사리곰탕', '1st factory', 116, 110);


/* Insert data */

/* Insert data RM basic data*/

insert into Pur_rawmaterials VALUES
(
'noodle-01', 'wheat', 0,0
);

insert into Pur_rawmaterials VALUES
(
'noodle-02', 'potatostarch', 0,0
);

insert into Pur_rawmaterials VALUES
(
'noodle-03', 'palmoil', 0,0
);

insert into Pur_rawmaterials VALUES
(
'flake-01', 'anchovy',  0,0
);

insert into Pur_rawmaterials VALUES
(
'flake-02', 'carrot',  0,0
);

insert into Pur_rawmaterials VALUES
(
'flake-03', 'driedbeef',  0,0
);

insert into Pur_rawmaterials VALUES
(
'flake-04', 'garlic',  0,0
);
insert into Pur_rawmaterials VALUES
(
'flake-05', 'mushroom', 0,0
);

insert into Pur_rawmaterials VALUES
(
'flake-06', 'onion', 0,0
);

insert into Pur_rawmaterials VALUES
(
'flake-07', 'redpepperpowder', 0,0
);

insert into Pur_rawmaterials VALUES
(
'flake-08', 'salt', 0,0
);

insert into Pur_rawmaterials VALUES
(
'flake-09', 'seaweed', 0,0
);

insert into Pur_rawmaterials VALUES
(
'flake-10', 'sugar', 0,0
);



