
/* Drop Triggers */

DROP TRIGGER TRI_section_sec_code;



/* Drop Tables */

DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE dailyproduct CASCADE CONSTRAINTS;
DROP TABLE factory CASCADE CONSTRAINTS;
DROP TABLE inventory CASCADE CONSTRAINTS;
DROP TABLE kpi CASCADE CONSTRAINTS;
DROP TABLE kpiDivision CASCADE CONSTRAINTS;
DROP TABLE Shipping CASCADE CONSTRAINTS;
DROP TABLE supply CASCADE CONSTRAINTS;
DROP TABLE process CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE productinfo CASCADE CONSTRAINTS;
DROP TABLE Pur_orderrecords_detail CASCADE CONSTRAINTS;
DROP TABLE Pur_orderrecords CASCADE CONSTRAINTS;
DROP TABLE Pur_traderecords CASCADE CONSTRAINTS;
DROP TABLE Pur_rawmaterials CASCADE CONSTRAINTS;
DROP TABLE Pur_RM_daily_price CASCADE CONSTRAINTS;
DROP TABLE recipe CASCADE CONSTRAINTS;
DROP TABLE Stock CASCADE CONSTRAINTS;
DROP TABLE totalinfo CASCADE CONSTRAINTS;
DROP TABLE ramen CASCADE CONSTRAINTS;
DROP TABLE section CASCADE CONSTRAINTS;
DROP TABLE shop CASCADE CONSTRAINTS;
DROP TABLE Staff CASCADE CONSTRAINTS;
DROP TABLE Truck CASCADE CONSTRAINTS;
DROP TABLE warehouse CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_section_sec_code;




/* Create Sequences */

CREATE SEQUENCE SEQ_section_sec_code INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE address
(
	address_post varchar2(20) NOT NULL,
	address_detail1 varchar2(50) NOT NULL,
	address_detail2 varchar2(50) NOT NULL,
	address_detail3 varchar2(50) NOT NULL,
	address_detail4 varchar2(50),
	shop_code number(10,0),
	warehouse_code number
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
	-- 각 공장을 식별할 수 있는 고유 번호
	f_num number NOT NULL,
	PRIMARY KEY (product_num)
);


CREATE TABLE factory
(
	-- 각 공장을 식별할 수 있는 고유 번호
	f_num number NOT NULL,
	-- 해당 공장의 이름
	fac_name varchar2(50) NOT NULL,
	-- 해당 공장의 주소
	fac_address varchar2(50) NOT NULL,
	-- 해당 공장의 전화번호
	fac_tel varchar2(50) NOT NULL,
	-- 해당 공장이 생산할 수 있는 최대 생산량
	maxamount number NOT NULL,
	PRIMARY KEY (f_num)
);


CREATE TABLE inventory
(
	-- 생산에 필요한 재료의 재고 고유 번호
	materialnum number NOT NULL,
	-- 생산에 필요한 재료의 미름
	materialname varchar2(50) NOT NULL,
	-- 유지해야하는 안전 재고량
	m_min number NOT NULL,
	-- 현재 남아있는 재고량
	p_amount number,
	PRIMARY KEY (materialnum)
);


CREATE TABLE kpi
(
	kpi_code number(10,0) NOT NULL,
	kpi_amount number(19,0) NOT NULL,
	-- 월간, 분기별, 연간 으로 구분
	kpi_start_date date NOT NULL,
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
	warehouse_code number NOT NULL,
	staff_code number(10,0) NOT NULL,
	shop_code number(10,0) NOT NULL,
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


CREATE TABLE productinfo
(
	-- 일 단위 생산 정보를 식별 할 수 있는 번호
	info_num varchar2(20) NOT NULL,
	-- 해당 라면 상품을 식별하는 고유 번호
	r_num varchar2(10) NOT NULL,
	-- 생산 제품의 이름
	r_name varchar2(50) NOT NULL,
	-- 해당 제품을 생산한 생산 라인을 식별 할 수 있는 번호
	line_num varchar2(10) NOT NULL,
	-- 해당 상품의 일 단위 총 생산량
	amount number NOT NULL,
	-- 해당 상품을 만드는데 필요한 인원
	inputman number NOT NULL,
	-- 설비가 실제로 가동된 시간
	worktime number NOT NULL,
	-- 부하시간 - 가동시간
	losstime number NOT NULL,
	-- 해당 공장의 해당 라인이 생산 가능한 용량
	capa number NOT NULL,
	-- 양품갯수/전체 생산량 * 100 
	goodrate number NOT NULL,
	-- 불량품 갯수
	fault number NOT NULL,
	-- 해당 제품이 생산된 날짜
	production_date date NOT NULL,
	PRIMARY KEY (info_num)
);


CREATE TABLE Pur_orderrecords
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
	staff_code number(10,0) NOT NULL,
	PRIMARY KEY (taskcode)
);


CREATE TABLE Pur_orderrecords_detail
(
	taskcode varchar2(300) NOT NULL,
	-- 구매요청원자재이름
	-- 
	RMname varchar2(500) NOT NULL,
	-- 원재료 주문수량
	quantity number(20,5) NOT NULL,
	-- 원자재가격
	price number(20,5) NOT NULL,
	-- 주문총액
	total number(20,5) NOT NULL
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
	RMvolume number(12) NOT NULL
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
	quantity number(20),
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
	-- 해당 상품이 생산되는 생산 라인의 식별 번호
	line_num varchar2(20) NOT NULL,
	-- 양품 판정을 받을 수 있는 규격 상한
	usl number NOT NULL,
	-- 양품 판정을 받을 수 있는 규격 하한
	lsl number NOT NULL,
	-- 생산 계획상 설비를 가동해야 할 시간
	loadtime number NOT NULL,
	-- 제품이 하나 생산되는 데 걸리는 기본 시간
	standardtime number NOT NULL,
	-- 공장이 가동되는 시간(24시간 기준)
	operatingtime number,
	PRIMARY KEY (r_num)
);


CREATE TABLE recipe
(
	-- 재료 식별 번호
	m_num varchar2(10) NOT NULL,
	-- 해당 라면 상품을 식별하는 고유 번호
	r_num varchar2(10) NOT NULL,
	-- 해당 상품 이름
	r_name varchar2(50) NOT NULL,
	-- 해당 상품에 들어가는 밀가루의 중량
	weat number NOT NULL,
	-- 해당 상품에 들어가는 감자전분의 중량
	potatostarch number NOT NULL,
	-- 해당 상품에 들어가는 팜오일의 중량
	palmoil number NOT NULL,
	-- 해당 상품에 들어가는 말린 소고기의 중량
	driedbeef number NOT NULL,
	-- 해당 상품에 들어가는 말린 멸치의 중량
	anchovy number NOT NULL,
	-- 해당 상품에 들어가는 마늘의 중량
	garlic number NOT NULL,
	-- 해당 상품에 들어가는 대파의 중량
	onion number NOT NULL,
	-- 해당 상품에 들어가는 당근의 중량
	carrot number NOT NULL,
	-- 해당 상품에 들어가는 소금의 중량
	salty number NOT NULL,
	-- 해당 상품에 들어가는 설탕의 중량
	sugar number NOT NULL,
	-- 해당 상품에 들어가는 고춧가루의 중량
	redpepperpowder number NOT NULL,
	-- 해당 상품에 들어가는 말린 버섯의 중량
	mushroom number NOT NULL,
	-- 해당 상품에 들어가는 말린 미역의 중량
	seaweed number NOT NULL,
	PRIMARY KEY (m_num)
);


CREATE TABLE section
(
	sec_code number NOT NULL,
	warehouse_code number NOT NULL,
	sec_name varchar2(30) NOT NULL,
	locationX1 number NOT NULL,
	locationY1 number NOT NULL,
	locationX2 number NOT NULL,
	locationY2 number NOT NULL,
	PRIMARY KEY (sec_code)
);


CREATE TABLE Shipping
(
	orderNum number NOT NULL,
	truck_code varchar2(30) NOT NULL,
	-- 알파벳 두글자 + 숫자 다섯자리
	process_code varchar2(7) NOT NULL,
	PRIMARY KEY (orderNum)
);


CREATE TABLE shop
(
	shop_code number(10,0) NOT NULL,
	shop_name varchar2(60) NOT NULL,
	shop_number varchar2(15) NOT NULL UNIQUE,
	shop_rep varchar2(15) NOT NULL,
	shop_tel varchar2(15) NOT NULL,
	shop_state varchar2(12) NOT NULL,
	shop_email varchar2(50),
	shop_SNS varchar2(50),
	shop_division varchar2(50),
	PRIMARY KEY (shop_code)
);


CREATE TABLE Staff
(
	staff_code number(10,0) NOT NULL,
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
	warehouse_code number NOT NULL,
	sec_code number NOT NULL,
	-- 해당 라면 상품을 식별하는 고유 번호
	r_num varchar2(10) NOT NULL,
	quantity number NOT NULL,
	inputdate date NOT NULL,
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


CREATE TABLE totalinfo
(
	-- 주문 단위 생산 정보의 고유 번호
	t_num number NOT NULL,
	-- 해당 라면 상품을 식별하는 고유 번호
	r_num varchar2(10) NOT NULL,
	-- 해당 주문의 생산 제품 이름
	r_name varchar2(50) NOT NULL,
	-- 해당 주문의 상품 총 생산량
	t_amount number NOT NULL,
	-- 해당 주문이 생산완료 되는 때까지의 기간
	t_time number NOT NULL,
	-- 해당 주문 완료시 까지 투입된 총 인원
	t_man number NOT NULL,
	-- 해당 주문의 생산 완료까지 소모된 총 재료비용
	t_cost number NOT NULL,
	-- 해당 주문의 생산 시작일
	startdate date NOT NULL,
	-- 해당 주문의 생산 종료일
	enddate date NOT NULL,
	-- 해당 주문에 소모된 재료들의 구매일
	buydate date NOT NULL,
	PRIMARY KEY (t_num)
);


CREATE TABLE Truck
(
	truck_code varchar2(30) NOT NULL,
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
	warehouse_tel number NOT NULL,
	PRIMARY KEY (warehouse_code)
);



/* Create Foreign Keys */

ALTER TABLE dailyproduct
	ADD FOREIGN KEY (f_num)
	REFERENCES factory (f_num)
;


ALTER TABLE kpi
	ADD FOREIGN KEY (kpiDivision_code)
	REFERENCES kpiDivision (kpiDivision_code)
;


ALTER TABLE Shipping
	ADD FOREIGN KEY (process_code)
	REFERENCES process (process_code)
;


ALTER TABLE supply
	ADD FOREIGN KEY (process_code)
	REFERENCES process (process_code)
;


ALTER TABLE supply
	ADD FOREIGN KEY (product_code)
	REFERENCES product (product_code)
;


ALTER TABLE Pur_orderrecords_detail
	ADD FOREIGN KEY (taskcode)
	REFERENCES Pur_orderrecords (taskcode)
;


ALTER TABLE Pur_traderecords
	ADD FOREIGN KEY (RMcode)
	REFERENCES Pur_rawmaterials (RMcode)
;


ALTER TABLE dailyproduct
	ADD FOREIGN KEY (r_num)
	REFERENCES ramen (r_num)
;


ALTER TABLE productinfo
	ADD FOREIGN KEY (r_num)
	REFERENCES ramen (r_num)
;


ALTER TABLE recipe
	ADD FOREIGN KEY (r_num)
	REFERENCES ramen (r_num)
;


ALTER TABLE Stock
	ADD FOREIGN KEY (r_num)
	REFERENCES ramen (r_num)
;


ALTER TABLE totalinfo
	ADD FOREIGN KEY (r_num)
	REFERENCES ramen (r_num)
;


ALTER TABLE Stock
	ADD FOREIGN KEY (sec_code)
	REFERENCES section (sec_code)
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


ALTER TABLE Pur_orderrecords
	ADD FOREIGN KEY (staff_code)
	REFERENCES Staff (staff_code)
;


ALTER TABLE Shipping
	ADD FOREIGN KEY (truck_code)
	REFERENCES Truck (truck_code)
;


ALTER TABLE address
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
;


ALTER TABLE process
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
;


ALTER TABLE section
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
;


ALTER TABLE Stock
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_section_sec_code BEFORE INSERT ON section
FOR EACH ROW
BEGIN
	SELECT SEQ_section_sec_code.nextval
	INTO :new.sec_code
	FROM dual;
END;

/




/* Comments */

COMMENT ON COLUMN dailyproduct.product_num IS '해당 일자에 생산된 라면 1개의 고유 식별 번호';
COMMENT ON COLUMN dailyproduct.line_num IS '해당 라면을 생산한 생산 라인을 식별할 수 있는 고유 번호';
COMMENT ON COLUMN dailyproduct.product_date IS '생산된 라면 상품의 생산 일자';
COMMENT ON COLUMN dailyproduct.weight IS '생산된 라면 상품의 중량';
COMMENT ON COLUMN dailyproduct.r_num IS '해당 라면 상품을 식별하는 고유 번호';
COMMENT ON COLUMN dailyproduct.f_num IS '각 공장을 식별할 수 있는 고유 번호';
COMMENT ON COLUMN factory.f_num IS '각 공장을 식별할 수 있는 고유 번호';
COMMENT ON COLUMN factory.fac_name IS '해당 공장의 이름';
COMMENT ON COLUMN factory.fac_address IS '해당 공장의 주소';
COMMENT ON COLUMN factory.fac_tel IS '해당 공장의 전화번호';
COMMENT ON COLUMN factory.maxamount IS '해당 공장이 생산할 수 있는 최대 생산량';
COMMENT ON COLUMN inventory.materialnum IS '생산에 필요한 재료의 재고 고유 번호';
COMMENT ON COLUMN inventory.materialname IS '생산에 필요한 재료의 미름';
COMMENT ON COLUMN inventory.m_min IS '유지해야하는 안전 재고량';
COMMENT ON COLUMN inventory.p_amount IS '현재 남아있는 재고량';
COMMENT ON COLUMN kpi.kpi_start_date IS '월간, 분기별, 연간 으로 구분';
COMMENT ON COLUMN kpi.kpiDivision_code IS '0 : 판매액
1 : 매출액
2 : 매출 총 이익';
COMMENT ON COLUMN kpiDivision.kpiDivision_code IS '0 : 판매액
1 : 매출액
2 : 매출 총 이익';
COMMENT ON COLUMN process.process_code IS '알파벳 두글자 + 숫자 다섯자리';
COMMENT ON COLUMN process.process_state IS '0 : 취소
1 : 종결
2 : 진행 중
3:  유효기간 초과';
COMMENT ON COLUMN product.product_code IS '자사 또는 경쟁사 구분 코드 알파벳 2자리 + 
숫자 다섯자리';
COMMENT ON COLUMN productinfo.info_num IS '일 단위 생산 정보를 식별 할 수 있는 번호';
COMMENT ON COLUMN productinfo.r_num IS '해당 라면 상품을 식별하는 고유 번호';
COMMENT ON COLUMN productinfo.r_name IS '생산 제품의 이름';
COMMENT ON COLUMN productinfo.line_num IS '해당 제품을 생산한 생산 라인을 식별 할 수 있는 번호';
COMMENT ON COLUMN productinfo.amount IS '해당 상품의 일 단위 총 생산량';
COMMENT ON COLUMN productinfo.inputman IS '해당 상품을 만드는데 필요한 인원';
COMMENT ON COLUMN productinfo.worktime IS '설비가 실제로 가동된 시간';
COMMENT ON COLUMN productinfo.losstime IS '부하시간 - 가동시간';
COMMENT ON COLUMN productinfo.capa IS '해당 공장의 해당 라인이 생산 가능한 용량';
COMMENT ON COLUMN productinfo.goodrate IS '양품갯수/전체 생산량 * 100 ';
COMMENT ON COLUMN productinfo.fault IS '불량품 갯수';
COMMENT ON COLUMN productinfo.production_date IS '해당 제품이 생산된 날짜';
COMMENT ON COLUMN Pur_orderrecords.requestdate IS '신청날짜
';
COMMENT ON COLUMN Pur_orderrecords.acceptdate IS '업무확인';
COMMENT ON COLUMN Pur_orderrecords.enddate IS '업무끝(수량을 보냈을때)';
COMMENT ON COLUMN Pur_orderrecords.etc IS '기타요청사랑';
COMMENT ON COLUMN Pur_orderrecords_detail.RMname IS '구매요청원자재이름
';
COMMENT ON COLUMN Pur_orderrecords_detail.quantity IS '원재료 주문수량';
COMMENT ON COLUMN Pur_orderrecords_detail.price IS '원자재가격';
COMMENT ON COLUMN Pur_orderrecords_detail.total IS '주문총액';
COMMENT ON COLUMN Pur_rawmaterials.RMcode IS 'RM=rawmaterial';
COMMENT ON COLUMN Pur_rawmaterials.RMname IS '원자재이름
';
COMMENT ON COLUMN Pur_rawmaterials.RMstock IS '원자재 재고수량';
COMMENT ON COLUMN Pur_rawmaterials.RMavgprice IS '원재료평균구매가격';
COMMENT ON COLUMN Pur_RM_daily_price.RMname IS '원자재이름
';
COMMENT ON COLUMN Pur_RM_daily_price.RMdate IS '해당 날짜의 원자재 가격
';
COMMENT ON COLUMN Pur_RM_daily_price.RMopen IS '시장개시가격
';
COMMENT ON COLUMN Pur_RM_daily_price.RMhigh IS '해당날짜의 가장 높았던 가격';
COMMENT ON COLUMN Pur_RM_daily_price.RMlow IS '해당일의 가장 낮은가격
';
COMMENT ON COLUMN Pur_RM_daily_price.RMclose IS '해당일 장종료 가격';
COMMENT ON COLUMN Pur_RM_daily_price.RMvolume IS '해당일의 거래량';
COMMENT ON COLUMN Pur_traderecords.dealdate IS 'deal date
';
COMMENT ON COLUMN Pur_traderecords.RMname IS 'raw material name
';
COMMENT ON COLUMN Pur_traderecords.RMcode IS 'RM=rawmaterial';
COMMENT ON COLUMN Pur_traderecords.dealtype IS 'buy, sell
';
COMMENT ON COLUMN Pur_traderecords.quantity IS '거래량';
COMMENT ON COLUMN Pur_traderecords.price IS 'raw material price';
COMMENT ON COLUMN Pur_traderecords.totalprice IS '거래총금액';
COMMENT ON COLUMN ramen.r_num IS '해당 라면 상품을 식별하는 고유 번호';
COMMENT ON COLUMN ramen.r_name IS '해당 라면 상품의 상품명';
COMMENT ON COLUMN ramen.r_factory IS '해당 라면 상품이 생산된 공장명';
COMMENT ON COLUMN ramen.line_num IS '해당 상품이 생산되는 생산 라인의 식별 번호';
COMMENT ON COLUMN ramen.usl IS '양품 판정을 받을 수 있는 규격 상한';
COMMENT ON COLUMN ramen.lsl IS '양품 판정을 받을 수 있는 규격 하한';
COMMENT ON COLUMN ramen.loadtime IS '생산 계획상 설비를 가동해야 할 시간';
COMMENT ON COLUMN ramen.standardtime IS '제품이 하나 생산되는 데 걸리는 기본 시간';
COMMENT ON COLUMN ramen.operatingtime IS '공장이 가동되는 시간(24시간 기준)';
COMMENT ON COLUMN recipe.m_num IS '재료 식별 번호';
COMMENT ON COLUMN recipe.r_num IS '해당 라면 상품을 식별하는 고유 번호';
COMMENT ON COLUMN recipe.r_name IS '해당 상품 이름';
COMMENT ON COLUMN recipe.weat IS '해당 상품에 들어가는 밀가루의 중량';
COMMENT ON COLUMN recipe.potatostarch IS '해당 상품에 들어가는 감자전분의 중량';
COMMENT ON COLUMN recipe.palmoil IS '해당 상품에 들어가는 팜오일의 중량';
COMMENT ON COLUMN recipe.driedbeef IS '해당 상품에 들어가는 말린 소고기의 중량';
COMMENT ON COLUMN recipe.anchovy IS '해당 상품에 들어가는 말린 멸치의 중량';
COMMENT ON COLUMN recipe.garlic IS '해당 상품에 들어가는 마늘의 중량';
COMMENT ON COLUMN recipe.onion IS '해당 상품에 들어가는 대파의 중량';
COMMENT ON COLUMN recipe.carrot IS '해당 상품에 들어가는 당근의 중량';
COMMENT ON COLUMN recipe.salty IS '해당 상품에 들어가는 소금의 중량';
COMMENT ON COLUMN recipe.sugar IS '해당 상품에 들어가는 설탕의 중량';
COMMENT ON COLUMN recipe.redpepperpowder IS '해당 상품에 들어가는 고춧가루의 중량';
COMMENT ON COLUMN recipe.mushroom IS '해당 상품에 들어가는 말린 버섯의 중량';
COMMENT ON COLUMN recipe.seaweed IS '해당 상품에 들어가는 말린 미역의 중량';
COMMENT ON COLUMN Shipping.process_code IS '알파벳 두글자 + 숫자 다섯자리';
COMMENT ON COLUMN Stock.r_num IS '해당 라면 상품을 식별하는 고유 번호';
COMMENT ON COLUMN supply.product_code IS '자사 또는 경쟁사 구분 코드 알파벳 2자리 + 
숫자 다섯자리';
COMMENT ON COLUMN supply.process_code IS '알파벳 두글자 + 숫자 다섯자리';
COMMENT ON COLUMN totalinfo.t_num IS '주문 단위 생산 정보의 고유 번호';
COMMENT ON COLUMN totalinfo.r_num IS '해당 라면 상품을 식별하는 고유 번호';
COMMENT ON COLUMN totalinfo.r_name IS '해당 주문의 생산 제품 이름';
COMMENT ON COLUMN totalinfo.t_amount IS '해당 주문의 상품 총 생산량';
COMMENT ON COLUMN totalinfo.t_time IS '해당 주문이 생산완료 되는 때까지의 기간';
COMMENT ON COLUMN totalinfo.t_man IS '해당 주문 완료시 까지 투입된 총 인원';
COMMENT ON COLUMN totalinfo.t_cost IS '해당 주문의 생산 완료까지 소모된 총 재료비용';
COMMENT ON COLUMN totalinfo.startdate IS '해당 주문의 생산 시작일';
COMMENT ON COLUMN totalinfo.enddate IS '해당 주문의 생산 종료일';
COMMENT ON COLUMN totalinfo.buydate IS '해당 주문에 소모된 재료들의 구매일';
COMMENT ON COLUMN warehouse.warehouse_type IS '0 : 물류창고
1 : 공장
2 : 외주공장';



