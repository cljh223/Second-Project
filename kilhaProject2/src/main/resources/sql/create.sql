
/* Drop Tables */

DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE dailyproduct CASCADE CONSTRAINTS;
DROP TABLE factory CASCADE CONSTRAINTS;
DROP TABLE Inmotion CASCADE CONSTRAINTS;
DROP TABLE kpi CASCADE CONSTRAINTS;
DROP TABLE kpiDivision CASCADE CONSTRAINTS;
DROP TABLE supply CASCADE CONSTRAINTS;
DROP TABLE process CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE Pur_taskrecords_detail CASCADE CONSTRAINTS;
DROP TABLE Pur_taskrecords CASCADE CONSTRAINTS;
DROP TABLE Pur_traderecords CASCADE CONSTRAINTS;
DROP TABLE Pur_rawmaterials CASCADE CONSTRAINTS;
DROP TABLE Pur_RM_daily_price CASCADE CONSTRAINTS;
DROP TABLE ramen CASCADE CONSTRAINTS;
DROP TABLE Shipping CASCADE CONSTRAINTS;
DROP TABLE shop CASCADE CONSTRAINTS;
DROP TABLE Staff CASCADE CONSTRAINTS;
DROP TABLE Stock CASCADE CONSTRAINTS;
DROP TABLE Truck CASCADE CONSTRAINTS;
DROP TABLE warehouse CASCADE CONSTRAINTS;
DROP SEQUENCE shop_code_SEQ;
DROP SEQUENCE warehouse_code_num_SEQ;
DROP SEQUENCE staff_code_SEQ;
DROP SEQUENCE supply_num_seq;
DROP SEQUENCE seq_shipping_orderNum;
DROP SEQUENCE seq_truck_code;



/* Create Tables */

CREATE TABLE address
(
	address_post varchar2(20) NOT NULL,
	address_detail1 varchar2(50) NOT NULL,
	address_detail2 varchar2(50) NOT NULL,
	address_detail3 varchar2(50) NOT NULL,
	address_detail4 varchar2(50),
	shop_code number(10,0) NOT NULL
);


CREATE TABLE dailyproduct
(
	-- 해당 일자에 생산된 라면 1개의 고유 식별 번호
	product_num varchar2(20) NOT NULL,
	-- 해당 라면을 생산한 생산 라인을 식별할 수 있는 고유 번호
	line_num varchar2(10) NOT NULL,
	-- 생산된 라면 상품의 생산 일자
	product_date date NOT NULL,
	-- 생산된 라면 상품의 중량
	weight number NOT NULL,
	-- 해당 라면 상품을 식별하는 고유 번호
	r_num varchar2(10) NOT NULL,
	PRIMARY KEY (product_num)
);


CREATE TABLE factory
(
	-- 각 공장을 식별할 수 있는 고유 번호
	fc_num number NOT NULL,
	-- 해당 공장의 이름
	fac_name varchar2(50) NOT NULL,
	-- 해당 공장의 주소
	fac_address varchar2(50) NOT NULL,
	-- 해당 공장의 전화번호
	fac_tel varchar2(50) NOT NULL,
	-- 해당 공장이 생산할 수 있는 최대 생산량
	maxamount number NOT NULL,
	PRIMARY KEY (fc_num)
);


CREATE TABLE Inmotion
(
	motion_code number NOT NULL,
	office varchar2(15) NOT NULL,
	goods varchar2(15) NOT NULL,
	quantity number NOT NULL,
	deliverydate date NOT NULL,
	status varchar2(15) NOT NULL,
	truck_code number NOT NULL,
	PRIMARY KEY (motion_code)
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


CREATE TABLE kpiDivision
(
	-- 0 : 판매액
	-- 1 : 매출액
	-- 2 : 매출 총 이익
	kpiDivision_code number NOT NULL,
	kpiDivision_name varchar2(20) NOT NULL UNIQUE,
	PRIMARY KEY (kpiDivision_code)
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
	warehouse_code number NOT NULL,
	staff_code number(5,0) NOT NULL,
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


CREATE TABLE Pur_rawmaterials
(
	-- RM=rawmaterial
	RMcode varchar2(100) NOT NULL,
	-- 원자재이름
	-- 
	RMname varchar2(100) NOT NULL,
	-- 원자재 재고수량
	RMstock number(7,0) NOT NULL,
	-- 원재료평균구매가격
	RMavgprice number(10,4) NOT NULL,
	PRIMARY KEY (RMcode)
);


CREATE TABLE Pur_RM_daily_price
(
	-- 원자재이름
	-- 
	RMname varchar2(500) NOT NULL,
	-- 해당 날짜의 원자재 가격
	-- 
	RMdate date NOT NULL,
	-- 시장개시가격
	-- 
	RMopen number(10,4) NOT NULL,
	-- 해당날짜의 가장 높았던 가격
	RMhigh number(10,4) NOT NULL,
	-- 해당일의 가장 낮은가격
	-- 
	RMlow number(10,4) NOT NULL,
	-- 해당일 장종료 가격
	RMclose number(10,4) NOT NULL,
	-- 해당일의 거래량
	RMvolume number(4,0) NOT NULL
);


CREATE TABLE Pur_taskrecords
(
	taskcode varchar2(300) NOT NULL,
	-- 신청날짜
	-- 
	requestdate date NOT NULL,
	-- 업무확인
	acceptdate date,
	-- 업무끝(수량을 보냈을때)
	enddate date,
	-- 기타요청사랑
	etc varchar2(4000),
	-- RM=rawmaterial
	RMcode varchar2(100) NOT NULL,
	staff_code number(5,0) NOT NULL,
	PRIMARY KEY (taskcode)
);


CREATE TABLE Pur_taskrecords_detail
(
	taskcode varchar2(300) NOT NULL,
	-- 구매요청원자재이름
	-- 
	RMname varchar2(200) NOT NULL,
	-- 원재료 주문수량
	quantity number(5,0) NOT NULL,
	-- 원자재가격
	price number(10,4) NOT NULL,
	-- 주문총액
	total number(10,4) NOT NULL
);


CREATE TABLE Pur_traderecords
(
	-- deal date
	-- 
	dealdate date,
	-- raw material name
	-- 
	RMname varchar2(100),
	-- RM=rawmaterial
	RMcode varchar2(100) NOT NULL,
	-- buy, sell
	-- 
	dealtype varchar2(100),
	-- 거래량
	quantity number(10),
	-- raw material price
	price number(15,4),
	-- 거래총금액
	totalprice number(15,4),
	profits number(15,4),
	profitrates number(10,4)
);


CREATE TABLE ramen
(
	-- 해당 라면 상품을 식별하는 고유 번호
	r_num varchar2(10) NOT NULL,
	-- 해당 라면 상품의 상품명
	r_name varchar2(50) NOT NULL,
	-- 해당 라면 상품이 생산된 공장명
	r_factory varchar2(20) NOT NULL,
	-- 양품 판정을 받을 수 있는 규격 상한
	usl number NOT NULL,
	-- 양품 판정을 받을 수 있는 규격 하한
	lsl number NOT NULL,
	PRIMARY KEY (r_num)
);


CREATE TABLE Shipping
(
	orderNum number NOT NULL,
	dept varchar2(15) NOT NULL,
	goods varchar2(15) NOT NULL,
	quantity number,
	office varchar2(15),
	deliverydate date NOT NULL,
	status varchar2(50),
	staff_code number(5,0) NOT NULL,
	truck_code number,
	warehouse_code number,
	PRIMARY KEY (orderNum)
);


CREATE TABLE shop
(
	shop_code number(10,0) NOT NULL,
	shop_name varchar2(60) NOT NULL,
	shop_number varchar2(15) NOT NULL UNIQUE,
	shop_rep varchar2(15) NOT NULL,
	shop_tel varchar2(15) NOT NULL,
	shop_state varchar2(6) NOT NULL,
	PRIMARY KEY (shop_code)
);


CREATE TABLE Staff
(
	staff_code number(5,0) NOT NULL,
	staff_name varchar2(15) NOT NULL,
	staff_department varchar2(50) NOT NULL,
	staff_password varchar2(15) NOT NULL,
	staff_tel varchar2(30),
	staff_email varchar2(50),
	PRIMARY KEY (staff_code)
);


CREATE TABLE Stock
(
	stockNum number NOT NULL,
	locNum number NOT NULL,
	goods varchar2(30) NOT NULL,
	quantity number NOT NULL,
	inputdate date NOT NULL,
	warehouse_code number NOT NULL,
	PRIMARY KEY (stockNum)
);


CREATE TABLE supply
(
	supply_num number(10,0) NOT NULL,
	-- 자사 또는 경쟁사 구분 코드 알파벳 2자리 + 
	-- 숫자 다섯자리
	product_code varchar2(8) NOT NULL,
	-- 알파벳 두글자 + 숫자 다섯자리
	process_code varchar2(7) NOT NULL,
	supply_volume number(10,0) NOT NULL,
	supply_price number(10,0) NOT NULL,
	PRIMARY KEY (supply_num)
);


CREATE TABLE Truck
(
	truck_code number NOT NULL,
	space varchar2(10) NOT NULL,
	width number NOT NULL,
	length number NOT NULL,
	height number NOT NULL,
	PRIMARY KEY (truck_code)
);


CREATE TABLE warehouse
(
	warehouse_code number NOT NULL,
	warehouse_name varchar2(60) NOT NULL,
	-- 0 : 물류창고
	-- 1 : 공장
	-- 2 : 외주공장
	warehouse_type varchar2(15) NOT NULL,
	PRIMARY KEY (warehouse_code)
);



/* Create Foreign Keys */

ALTER TABLE kpi
	ADD FOREIGN KEY (kpiDivision_code)
	REFERENCES kpiDivision (kpiDivision_code)
;


ALTER TABLE supply
	ADD FOREIGN KEY (process_code)
	REFERENCES process (process_code)
;


ALTER TABLE supply
	ADD FOREIGN KEY (product_code)
	REFERENCES product (product_code)
;


ALTER TABLE Pur_taskrecords
	ADD FOREIGN KEY (RMcode)
	REFERENCES Pur_rawmaterials (RMcode)
;


ALTER TABLE Pur_traderecords
	ADD FOREIGN KEY (RMcode)
	REFERENCES Pur_rawmaterials (RMcode)
;


ALTER TABLE Pur_taskrecords_detail
	ADD FOREIGN KEY (taskcode)
	REFERENCES Pur_taskrecords (taskcode)
;


ALTER TABLE dailyproduct
	ADD FOREIGN KEY (r_num)
	REFERENCES ramen (r_num)
;


ALTER TABLE address
	ADD FOREIGN KEY (shop_code)
	REFERENCES shop (shop_code)
;


ALTER TABLE kpi
	ADD FOREIGN KEY (shop_code)
	REFERENCES shop (shop_code)
;


ALTER TABLE process
	ADD FOREIGN KEY (shop_code)
	REFERENCES shop (shop_code)
;


ALTER TABLE process
	ADD FOREIGN KEY (staff_code)
	REFERENCES Staff (staff_code)
;


ALTER TABLE Pur_taskrecords
	ADD FOREIGN KEY (staff_code)
	REFERENCES Staff (staff_code)
;


ALTER TABLE Shipping
	ADD FOREIGN KEY (staff_code)
	REFERENCES Staff (staff_code)
;


ALTER TABLE Inmotion
	ADD FOREIGN KEY (truck_code)
	REFERENCES Truck (truck_code)
;


ALTER TABLE Shipping
	ADD FOREIGN KEY (truck_code)
	REFERENCES Truck (truck_code)
;


ALTER TABLE process
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
;


ALTER TABLE Shipping
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
;


ALTER TABLE Stock
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
;



CREATE SEQUENCE warehouse_code_num_SEQ;

CREATE SEQUENCE shop_code_SEQ
START WITH 00001
INCREMENT BY 1;

CREATE SEQUENCE supply_num_seq;


CREATE SEQUENCE staff_code_SEQ;

create sequence seq_shipping_orderNum;

create sequence seq_truck_code; 



