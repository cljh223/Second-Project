﻿
/* Drop Tables */

DROP TABLE supply CASCADE CONSTRAINTS;
DROP TABLE process CASCADE CONSTRAINTS;
DROP TABLE staff CASCADE CONSTRAINTS;
DROP TABLE department CASCADE CONSTRAINTS;
DROP TABLE warehouse CASCADE CONSTRAINTS;
DROP TABLE kpi CASCADE CONSTRAINTS;
DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE competitorSupply CASCADE CONSTRAINTS;
DROP TABLE shop CASCADE CONSTRAINTS;
DROP TABLE state CASCADE CONSTRAINTS;
DROP TABLE kpiDivision CASCADE CONSTRAINTS;
DROP TABLE competitor CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP SEQUENCE shop_code_SEQ;



/* Create Tables */

CREATE TABLE department
(
	dep_code number(5,0) NOT NULL,
	dep_name varchar2(30) NOT NULL UNIQUE,
	PRIMARY KEY (dep_code)
);


CREATE TABLE warehouse
(
	warehouse_code varchar2(7) NOT NULL,
	warehouse_name varchar2(60) NOT NULL,
	-- 0 : 물류창고
	-- 1 : 공장
	-- 2 : 외주공장
	warehouse_type number(1) NOT NULL,
	PRIMARY KEY (warehouse_code)
);


CREATE TABLE state
(
	-- 0 : 미거래
	-- 1 : 견적
	-- 2 : 수주
	-- 3 : 출고
	-- 4 : 수금
	state_code number(1) NOT NULL,
	state_name varchar2(30) NOT NULL,
	PRIMARY KEY (state_code)
);

insert into state values
(
	0
	, '미거래'
);

insert into state values
(
	1
	, '견적'
);

insert into state values
(
	2
	, '수주'
);

insert into state values
(
	3
	, '출고'
);

insert into state values
(
	4
	, '수금'
);

CREATE TABLE kpiDivision
(
	-- 0 : 판매액
	-- 1 : 매출액
	-- 2 : 매출 총 이익
	kpiDivision_code number NOT NULL,
	kpiDivision_name varchar2(20) NOT NULL UNIQUE,
	PRIMARY KEY (kpiDivision_code)
);


CREATE TABLE shop
(
	shop_code number NOT NULL,
	shop_name varchar2(60) NOT NULL,
	shop_number varchar2(15) NOT NULL UNIQUE,
	shop_rep varchar2(15) NOT NULL,
	shop_tel varchar2(15) NOT NULL,
	-- 0 : 미거래
	-- 1 : 견적
	-- 2 : 수주
	-- 3 : 출고
	-- 4 : 수금
	state_code number(1) NOT NULL UNIQUE,
	PRIMARY KEY (shop_code)
);

CREATE SEQUENCE shop_code_SEQ
START WITH 00001
INCREMENT BY 1;

insert into shop values
(
	shop_code_SEQ.nextval
	, '위드미 스타필드코엑스몰4호점'
	, '920223-11111111'
	, '조준석'
	, '02-909-0031'
	, 1
);

insert into shop values
(
	shop_code_SEQ.nextval
	, '이마트24 스타필드코엑스몰1호점'
	, '785695-11111111'
	, '정우석'
	, '03-4563-1235'
	, 2
);

insert into shop values
(
	shop_code_SEQ.nextval
	, '잠실 롯데백화점'
	, '352642-4569853'
	, '은지쏭'
	, '02-4532-7856'
	, 0
);

CREATE TABLE competitor
(
	competitor_code number(5,0) NOT NULL,
	competitor_name varchar2(90) NOT NULL,
	PRIMARY KEY (competitor_code)
);


CREATE TABLE competitorSupply
(
	-- 자사 또는 경쟁사 구분 코드 알파벳 2자리 + 
	-- 숫자 다섯자리
	product_code varchar2(8) NOT NULL,
	shop_code number(10,0) NOT NULL,
	competitor_code number(5,0) NOT NULL,
	competitorSupply_date date NOT NULL,
	competitorSupply_volume number(10,0) NOT NULL,
	competitorSupply_supply_price number(10,0),
	PRIMARY KEY (product_code, shop_code, competitor_code)
);


CREATE TABLE process
(
	-- 알파벳 두글자 + 숫자 다섯자리
	process_code varchar2(7) NOT NULL,
	process_insert_date date NOT NULL,
	process_term date NOT NULL,
	process_end_date date NOT NULL,
	-- 0 : 취소
	-- 1 : 종결
	-- 2 : 진행 중
	-- 3:  유효기간 초과
	process_state number(1) NOT NULL,
	shop_code number(10,0) NOT NULL,
	staff_code number(5,0) NOT NULL,
	warehouse_code varchar2(7) NOT NULL,
	PRIMARY KEY (process_code)
);


CREATE TABLE product
(
	-- 자사 또는 경쟁사 구분 코드 알파벳 2자리 + 
	-- 숫자 다섯자리
	product_code varchar2(8) NOT NULL,
	product_name varchar2(60) NOT NULL,
	product_unit_price number(10,0) NOT NULL,
	product_release_price number(10,0) NOT NULL,
	product_image varchar2(100),
	product_unit varchar2(30) NOT NULL,
	product_sales_price number(10,0) NOT NULL,
	PRIMARY KEY (product_code)
);


CREATE TABLE address
(
	address_post varchar2(7) NOT NULL,
	address_detail1 varchar2(60) NOT NULL,
	address_detail2 varchar2(60) NOT NULL,
	address_detail3 varchar2(60) NOT NULL,
	address_detail4 varchar2(50),
	shop_code number(10,0) NOT NULL
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

CREATE TABLE supply
(
	-- 자사 또는 경쟁사 구분 코드 알파벳 2자리 + 
	-- 숫자 다섯자리
	product_code varchar2(8) NOT NULL,
	-- 알파벳 두글자 + 숫자 다섯자리
	process_code varchar2(7) NOT NULL,
	supply_volume number(10,0) NOT NULL,
	supply_price number(10,0) NOT NULL,
	PRIMARY KEY (product_code, process_code)
);


CREATE TABLE kpi
(
	kpi_code number(10,0) NOT NULL,
	kpi_amount number(10,0) NOT NULL,
	-- 월간, 분기별, 연간 으로 구분
	kpi_start_date date NOT NULL,
	kpi_end_date date NOT NULL,
	shop_code number(10,0) NOT NULL,
	-- 0 : 판매액
	-- 1 : 매출액
	-- 2 : 매출 총 이익
	kpiDivision_code number NOT NULL,
	PRIMARY KEY (kpi_code)
);


CREATE TABLE staff
(
	staff_code number(5,0) NOT NULL,
	staff_name varchar2(15) NOT NULL,
	dep_code number(5,0) NOT NULL,
	PRIMARY KEY (staff_code)
);



/* Create Foreign Keys */

ALTER TABLE staff
	ADD FOREIGN KEY (dep_code)
	REFERENCES department (dep_code)
;


ALTER TABLE process
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
;


ALTER TABLE shop
	ADD FOREIGN KEY (state_code)
	REFERENCES state (state_code)
;


ALTER TABLE kpi
	ADD FOREIGN KEY (kpiDivision_code)
	REFERENCES kpiDivision (kpiDivision_code)
;


ALTER TABLE process
	ADD FOREIGN KEY (shop_code)
	REFERENCES shop (shop_code)
;


ALTER TABLE kpi
	ADD FOREIGN KEY (shop_code)
	REFERENCES shop (shop_code)
;


ALTER TABLE address
	ADD FOREIGN KEY (shop_code)
	REFERENCES shop (shop_code)
;


ALTER TABLE competitorSupply
	ADD FOREIGN KEY (shop_code)
	REFERENCES shop (shop_code)
;


ALTER TABLE competitorSupply
	ADD FOREIGN KEY (competitor_code)
	REFERENCES competitor (competitor_code)
;


ALTER TABLE supply
	ADD FOREIGN KEY (process_code)
	REFERENCES process (process_code)
;


ALTER TABLE competitorSupply
	ADD FOREIGN KEY (product_code)
	REFERENCES product (product_code)
;


ALTER TABLE supply
	ADD FOREIGN KEY (product_code)
	REFERENCES product (product_code)
;


ALTER TABLE process
	ADD FOREIGN KEY (staff_code)
	REFERENCES staff (staff_code)
;


