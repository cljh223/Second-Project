
/* Drop Tables */

DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE dailyproduct CASCADE CONSTRAINTS;
DROP TABLE factory CASCADE CONSTRAINTS;
DROP TABLE Inmotion CASCADE CONSTRAINTS;
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
DROP TABLE totalinfo CASCADE CONSTRAINTS;
DROP TABLE ramen CASCADE CONSTRAINTS;
DROP TABLE shop CASCADE CONSTRAINTS;
DROP TABLE Staff CASCADE CONSTRAINTS;
DROP TABLE Stock CASCADE CONSTRAINTS;
DROP TABLE Truck CASCADE CONSTRAINTS;
DROP TABLE warehouse CASCADE CONSTRAINTS;




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
	-- �ش� ���ڿ� ����� ��� 1���� ���� �ĺ� ��ȣ
	product_num varchar2(20) NOT NULL,
	-- �ش� ����� ������ ���� ������ �ĺ��� �� �ִ� ���� ��ȣ
	line_num varchar2(10) NOT NULL,
	-- ����� ��� ��ǰ�� ���� ����
	product_date date NOT NULL,
	-- ����� ��� ��ǰ�� �߷�
	weight number NOT NULL,
	-- �ش� ��� ��ǰ�� �ĺ��ϴ� ���� ��ȣ
	r_num varchar2(10) NOT NULL,
	-- �� ������ �ĺ��� �� �ִ� ���� ��ȣ
	fac_num number NOT NULL,
	PRIMARY KEY (product_num)
);


CREATE TABLE factory
(
	-- �� ������ �ĺ��� �� �ִ� ���� ��ȣ
	fac_num number NOT NULL,
	-- �ش� ������ �̸�
	fac_name varchar2(50) NOT NULL,
	-- �ش� ������ �ּ�
	fac_address urowid(50) NOT NULL,
	-- �ش� ������ ��ȭ��ȣ
	fac_tel varchar2(50) NOT NULL,
	-- �ش� ������ ������ �� �ִ� �ִ� ���귮
	maxamount number NOT NULL,
	PRIMARY KEY (fac_num)
);


CREATE TABLE Inmotion
(
	motion_code number NOT NULL,
	office varchar2(15) NOT NULL,
	goods varchar2(15) NOT NULL,
	quantity number NOT NULL,
	deliverydate date NOT NULL,
	status varchar2(15) NOT NULL,
	truck_code varchar2(30) NOT NULL,
	PRIMARY KEY (motion_code)
);


CREATE TABLE inventory
(
	-- ���꿡 �ʿ��� ����� ��� ���� ��ȣ
	materialnum number NOT NULL,
	-- ���꿡 �ʿ��� ����� �̸�
	materialname varchar2(50) NOT NULL,
	-- �����ؾ��ϴ� ���� ���
	m_min number NOT NULL,
	-- ���� �����ִ� ���
	p_amount number,
	PRIMARY KEY (materialnum)
);


CREATE TABLE kpi
(
	kpi_code number(10,0) NOT NULL,
	kpi_amount number(10,0) NOT NULL,
	-- ����, �б⺰, ���� ���� ����
	kpi_start_date date NOT NULL,
	shop_code number(10,0) NOT NULL,
	-- 0 : �Ǹž�
	-- 1 : �����
	-- 2 : ���� �� ����
	kpiDivision_code number NOT NULL,
	PRIMARY KEY (kpi_code)
);


CREATE TABLE kpiDivision
(
	-- 0 : �Ǹž�
	-- 1 : �����
	-- 2 : ���� �� ����
	kpiDivision_code number NOT NULL,
	kpiDivision_name varchar2(20) NOT NULL UNIQUE,
	PRIMARY KEY (kpiDivision_code)
);


CREATE TABLE process
(
	-- ���ĺ� �α��� + ���� �ټ��ڸ�
	process_code varchar2(7) NOT NULL,
	process_insert_date date NOT NULL,
	process_term date NOT NULL,
	process_end_date date NOT NULL,
	-- 0 : ���
	-- 1 : ����
	-- 2 : ���� ��
	-- 3:  ��ȿ�Ⱓ �ʰ�
	process_state number(1) NOT NULL,
	warehouse_code number NOT NULL,
	staff_code number(5,0) NOT NULL,
	shop_code number(10,0) NOT NULL,
	PRIMARY KEY (process_code)
);


CREATE TABLE product
(
	-- �ڻ� �Ǵ� ����� ���� �ڵ� ���ĺ� 2�ڸ� + 
	-- ���� �ټ��ڸ�
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
	-- �� ���� ���� ������ �ĺ� �� �� �ִ� ��ȣ
	info_num varchar2(20) NOT NULL,
	-- �ش� ��� ��ǰ�� �ĺ��ϴ� ���� ��ȣ
	r_num varchar2(10) NOT NULL,
	-- ���� ��ǰ�� �̸�
	r_name varchar2(50) NOT NULL,
	-- �ش� ��ǰ�� ������ ���� ������ �ĺ� �� �� �ִ� ��ȣ
	line_num varchar2(10) NOT NULL,
	-- �ش� ��ǰ�� �� ���� �� ���귮
	amount number NOT NULL,
	-- �ش� ��ǰ�� ����µ� �ʿ��� �ο�
	inputman number NOT NULL,
	-- ���� ������ ������ �ð�
	worktime number NOT NULL,
	-- ���Ͻð� - �����ð�
	losstime number NOT NULL,
	-- �ش� ������ �ش� ������ ���� ������ �뷮
	capa number NOT NULL,
	-- ��ǰ����/��ü ���귮 * 100 
	goodrate number NOT NULL,
	-- �ҷ�ǰ ����
	fault number NOT NULL,
	-- �ش� ��ǰ�� ����� ��¥
	production_date date NOT NULL,
	PRIMARY KEY (info_num)
);


CREATE TABLE Pur_orderrecords
(
	taskcode varchar2(300) NOT NULL,
	-- ��û��¥
	-- 
	requestdate date NOT NULL,
	-- ����Ȯ��
	acceptdate date,
	-- ������(������ ��������)
	enddate date,
	-- ��Ÿ��û���
	etc varchar2(4000),
	staff_code number(5,0) NOT NULL,
	PRIMARY KEY (taskcode)
);


CREATE TABLE Pur_orderrecords_detail
(
	taskcode varchar2(300) NOT NULL,
	-- ���ſ�û�������̸�
	-- 
	RMname varchar2(500) NOT NULL,
	-- ����� �ֹ�����
	quantity number(20,5) NOT NULL,
	-- �����簡��
	price number(20,5) NOT NULL,
	-- �ֹ��Ѿ�
	total number(20,5) NOT NULL
);


CREATE TABLE Pur_rawmaterials
(
	-- RM=rawmaterial
	RMcode varchar2(100) NOT NULL,
	-- �������̸�
	-- 
	RMname varchar2(100) NOT NULL,
	-- ������ ������
	RMstock number(7,0) NOT NULL,
	-- �������ձ��Ű���
	RMavgprice number(10,4) NOT NULL,
	PRIMARY KEY (RMcode)
);


CREATE TABLE Pur_RM_daily_price
(
	-- �������̸�
	-- 
	RMname varchar2(500) NOT NULL,
	-- �ش� ��¥�� ������ ����
	-- 
	RMdate date NOT NULL,
	-- ���尳�ð���
	-- 
	RMopen number(10,4) NOT NULL,
	-- �ش糯¥�� ���� ���Ҵ� ����
	RMhigh number(10,4) NOT NULL,
	-- �ش����� ���� ��������
	-- 
	RMlow number(10,4) NOT NULL,
	-- �ش��� ������ ����
	RMclose number(10,4) NOT NULL,
	-- �ش����� �ŷ���
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
	-- �ŷ���
	quantity number(20),
	-- raw material price
	price number(15,4),
	-- �ŷ��ѱݾ�
	totalprice number(15,4),
	profits number(15,4),
	profitrates number(10,4)
);


CREATE TABLE ramen
(
	-- �ش� ��� ��ǰ�� �ĺ��ϴ� ���� ��ȣ
	r_num varchar2(10) NOT NULL,
	-- �ش� ��� ��ǰ�� ��ǰ��
	r_name varchar2(50) NOT NULL,
	-- �ش� ��� ��ǰ�� ����� �����
	r_factory varchar2(20) NOT NULL,
	-- �ش� ��ǰ�� ����Ǵ� ���� ������ �ĺ� ��ȣ
	line_num varchar2(20) NOT NULL,
	-- ��ǰ ������ ���� �� �ִ� �԰� ����
	usl number NOT NULL,
	-- ��ǰ ������ ���� �� �ִ� �԰� ����
	lsl number NOT NULL,
	-- ���� ��ȹ�� ���� �����ؾ� �� �ð�
	loadtime number NOT NULL,
	-- ��ǰ�� �ϳ� ����Ǵ� �� �ɸ��� �⺻ �ð�
	standardtime number NOT NULL,
	-- ������ �����Ǵ� �ð�(24�ð� ����)
	operatingtime number,
	PRIMARY KEY (r_num)
);


CREATE TABLE recipe
(
	-- ��� �ĺ� ��ȣ
	m_num varchar2(10) NOT NULL,
	-- �ش� ��� ��ǰ�� �ĺ��ϴ� ���� ��ȣ
	r_num varchar2(10) NOT NULL,
	-- �ش� ��ǰ �̸�
	r_name varchar2(50) NOT NULL,
	-- �ش� ��ǰ�� ���� �а����� �߷�
	weat number NOT NULL,
	-- �ش� ��ǰ�� ���� ���������� �߷�
	potatostarch number NOT NULL,
	-- �ش� ��ǰ�� ���� �ʿ����� �߷�
	palmoil number NOT NULL,
	-- �ش� ��ǰ�� ���� ���� �Ұ���� �߷�
	driedbeef number NOT NULL,
	-- �ش� ��ǰ�� ���� ���� ��ġ�� �߷�
	anchovy number NOT NULL,
	-- �ش� ��ǰ�� ���� ������ �߷�
	garlic number NOT NULL,
	-- �ش� ��ǰ�� ���� ������ �߷�
	onion number NOT NULL,
	-- �ش� ��ǰ�� ���� ����� �߷�
	carrot number NOT NULL,
	-- �ش� ��ǰ�� ���� �ұ��� �߷�
	salty number NOT NULL,
	-- �ش� ��ǰ�� ���� ������ �߷�
	sugar number NOT NULL,
	-- �ش� ��ǰ�� ���� ���尡���� �߷�
	redpepperpowder number NOT NULL,
	-- �ش� ��ǰ�� ���� ���� ������ �߷�
	mushroom number NOT NULL,
	-- �ش� ��ǰ�� ���� ���� �̿��� �߷�
	seaweed number NOT NULL,
	PRIMARY KEY (m_num)
);


CREATE TABLE Shipping
(
	orderNum number NOT NULL,
	dept varchar2(15) NOT NULL,
	goods varchar2(15) NOT NULL,
	quantity number,
	deliverydate date NOT NULL,
	status varchar2(50),
	staff_code number(5,0) NOT NULL,
	shop_code number(10,0) NOT NULL,
	truck_code varchar2(30) NOT NULL,
	warehouse_code number,
	-- ���ĺ� �α��� + ���� �ټ��ڸ�
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
	shop_state varchar2(6) NOT NULL,
	shop_email varchar2(50),
	shop_SNS varchar2(50),
	shop_division varchar2(50),
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
	-- �ڻ� �Ǵ� ����� ���� �ڵ� ���ĺ� 2�ڸ� + 
	-- ���� �ټ��ڸ�
	product_code varchar2(8) NOT NULL,
	-- ���ĺ� �α��� + ���� �ټ��ڸ�
	process_code varchar2(7) NOT NULL,
	supply_volume number(10,0) NOT NULL,
	supply_price number(10,0) NOT NULL,
	PRIMARY KEY (supply_num)
);


CREATE TABLE totalinfo
(
	-- �ֹ� ���� ���� ������ ���� ��ȣ
	t_num number NOT NULL,
	-- �ش� ��� ��ǰ�� �ĺ��ϴ� ���� ��ȣ
	r_num varchar2(10) NOT NULL,
	-- �ش� �ֹ��� ���� ��ǰ �̸�
	r_name varchar2(50) NOT NULL,
	-- �ش� �ֹ��� ��ǰ �� ���귮
	t_amount number NOT NULL,
	-- �ش� �ֹ��� ����Ϸ� �Ǵ� �������� �Ⱓ
	t_time number NOT NULL,
	-- �ش� �ֹ� �Ϸ�� ���� ���Ե� �� �ο�
	t_man number NOT NULL,
	-- �ش� �ֹ��� ���� �Ϸ���� �Ҹ�� �� �����
	t_cost number NOT NULL,
	-- �ش� �ֹ��� ���� ������
	startdate date NOT NULL,
	-- �ش� �ֹ��� ���� ������
	enddate number NOT NULL,
	-- �ش� �ֹ��� �Ҹ�� ������ ������
	buydate number NOT NULL,
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
	-- 0 : ����â��
	-- 1 : ����
	-- 2 : ���ְ���
	warehouse_type varchar2(15) NOT NULL,
	PRIMARY KEY (warehouse_code)
);



/* Create Foreign Keys */

ALTER TABLE dailyproduct
	ADD FOREIGN KEY (fac_num)
	REFERENCES factory (fac_num)
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


ALTER TABLE totalinfo
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


ALTER TABLE Shipping
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


ALTER TABLE address
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
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



/* Comments */

COMMENT ON COLUMN dailyproduct.product_num IS '�ش� ���ڿ� ����� ��� 1���� ���� �ĺ� ��ȣ';
COMMENT ON COLUMN dailyproduct.line_num IS '�ش� ����� ������ ���� ������ �ĺ��� �� �ִ� ���� ��ȣ';
COMMENT ON COLUMN dailyproduct.product_date IS '����� ��� ��ǰ�� ���� ����';
COMMENT ON COLUMN dailyproduct.weight IS '����� ��� ��ǰ�� �߷�';
COMMENT ON COLUMN dailyproduct.r_num IS '�ش� ��� ��ǰ�� �ĺ��ϴ� ���� ��ȣ';
COMMENT ON COLUMN dailyproduct.fac_num IS '�� ������ �ĺ��� �� �ִ� ���� ��ȣ';
COMMENT ON COLUMN factory.fac_num IS '�� ������ �ĺ��� �� �ִ� ���� ��ȣ';
COMMENT ON COLUMN factory.fac_name IS '�ش� ������ �̸�';
COMMENT ON COLUMN factory.fac_address IS '�ش� ������ �ּ�';
COMMENT ON COLUMN factory.fac_tel IS '�ش� ������ ��ȭ��ȣ';
COMMENT ON COLUMN factory.maxamount IS '�ش� ������ ������ �� �ִ� �ִ� ���귮';
COMMENT ON COLUMN inventory.materialnum IS '���꿡 �ʿ��� ����� ��� ���� ��ȣ';
COMMENT ON COLUMN inventory.materialname IS '���꿡 �ʿ��� ����� �̸�';
COMMENT ON COLUMN inventory.m_min IS '�����ؾ��ϴ� ���� ���';
COMMENT ON COLUMN inventory.p_amount IS '���� �����ִ� ���';
COMMENT ON COLUMN kpi.kpi_start_date IS '����, �б⺰, ���� ���� ����';
COMMENT ON COLUMN kpi.kpiDivision_code IS '0 : �Ǹž�
1 : �����
2 : ���� �� ����';
COMMENT ON COLUMN kpiDivision.kpiDivision_code IS '0 : �Ǹž�
1 : �����
2 : ���� �� ����';
COMMENT ON COLUMN process.process_code IS '���ĺ� �α��� + ���� �ټ��ڸ�';
COMMENT ON COLUMN process.process_state IS '0 : ���
1 : ����
2 : ���� ��
3:  ��ȿ�Ⱓ �ʰ�';
COMMENT ON COLUMN product.product_code IS '�ڻ� �Ǵ� ����� ���� �ڵ� ���ĺ� 2�ڸ� + 
���� �ټ��ڸ�';
COMMENT ON COLUMN productinfo.info_num IS '�� ���� ���� ������ �ĺ� �� �� �ִ� ��ȣ';
COMMENT ON COLUMN productinfo.r_num IS '�ش� ��� ��ǰ�� �ĺ��ϴ� ���� ��ȣ';
COMMENT ON COLUMN productinfo.r_name IS '���� ��ǰ�� �̸�';
COMMENT ON COLUMN productinfo.line_num IS '�ش� ��ǰ�� ������ ���� ������ �ĺ� �� �� �ִ� ��ȣ';
COMMENT ON COLUMN productinfo.amount IS '�ش� ��ǰ�� �� ���� �� ���귮';
COMMENT ON COLUMN productinfo.inputman IS '�ش� ��ǰ�� ����µ� �ʿ��� �ο�';
COMMENT ON COLUMN productinfo.worktime IS '���� ������ ������ �ð�';
COMMENT ON COLUMN productinfo.losstime IS '���Ͻð� - �����ð�';
COMMENT ON COLUMN productinfo.capa IS '�ش� ������ �ش� ������ ���� ������ �뷮';
COMMENT ON COLUMN productinfo.goodrate IS '��ǰ����/��ü ���귮 * 100 ';
COMMENT ON COLUMN productinfo.fault IS '�ҷ�ǰ ����';
COMMENT ON COLUMN productinfo.production_date IS '�ش� ��ǰ�� ����� ��¥';
COMMENT ON COLUMN Pur_orderrecords.requestdate IS '��û��¥
';
COMMENT ON COLUMN Pur_orderrecords.acceptdate IS '����Ȯ��';
COMMENT ON COLUMN Pur_orderrecords.enddate IS '������(������ ��������)';
COMMENT ON COLUMN Pur_orderrecords.etc IS '��Ÿ��û���';
COMMENT ON COLUMN Pur_orderrecords_detail.RMname IS '���ſ�û�������̸�
';
COMMENT ON COLUMN Pur_orderrecords_detail.quantity IS '����� �ֹ�����';
COMMENT ON COLUMN Pur_orderrecords_detail.price IS '�����簡��';
COMMENT ON COLUMN Pur_orderrecords_detail.total IS '�ֹ��Ѿ�';
COMMENT ON COLUMN Pur_rawmaterials.RMcode IS 'RM=rawmaterial';
COMMENT ON COLUMN Pur_rawmaterials.RMname IS '�������̸�
';
COMMENT ON COLUMN Pur_rawmaterials.RMstock IS '������ ������';
COMMENT ON COLUMN Pur_rawmaterials.RMavgprice IS '�������ձ��Ű���';
COMMENT ON COLUMN Pur_RM_daily_price.RMname IS '�������̸�
';
COMMENT ON COLUMN Pur_RM_daily_price.RMdate IS '�ش� ��¥�� ������ ����
';
COMMENT ON COLUMN Pur_RM_daily_price.RMopen IS '���尳�ð���
';
COMMENT ON COLUMN Pur_RM_daily_price.RMhigh IS '�ش糯¥�� ���� ���Ҵ� ����';
COMMENT ON COLUMN Pur_RM_daily_price.RMlow IS '�ش����� ���� ��������
';
COMMENT ON COLUMN Pur_RM_daily_price.RMclose IS '�ش��� ������ ����';
COMMENT ON COLUMN Pur_RM_daily_price.RMvolume IS '�ش����� �ŷ���';
COMMENT ON COLUMN Pur_traderecords.dealdate IS 'deal date
';
COMMENT ON COLUMN Pur_traderecords.RMname IS 'raw material name
';
COMMENT ON COLUMN Pur_traderecords.RMcode IS 'RM=rawmaterial';
COMMENT ON COLUMN Pur_traderecords.dealtype IS 'buy, sell
';
COMMENT ON COLUMN Pur_traderecords.quantity IS '�ŷ���';
COMMENT ON COLUMN Pur_traderecords.price IS 'raw material price';
COMMENT ON COLUMN Pur_traderecords.totalprice IS '�ŷ��ѱݾ�';
COMMENT ON COLUMN ramen.r_num IS '�ش� ��� ��ǰ�� �ĺ��ϴ� ���� ��ȣ';
COMMENT ON COLUMN ramen.r_name IS '�ش� ��� ��ǰ�� ��ǰ��';
COMMENT ON COLUMN ramen.r_factory IS '�ش� ��� ��ǰ�� ����� �����';
COMMENT ON COLUMN ramen.line_num IS '�ش� ��ǰ�� ����Ǵ� ���� ������ �ĺ� ��ȣ';
COMMENT ON COLUMN ramen.usl IS '��ǰ ������ ���� �� �ִ� �԰� ����';
COMMENT ON COLUMN ramen.lsl IS '��ǰ ������ ���� �� �ִ� �԰� ����';
COMMENT ON COLUMN ramen.loadtime IS '���� ��ȹ�� ���� �����ؾ� �� �ð�';
COMMENT ON COLUMN ramen.standardtime IS '��ǰ�� �ϳ� ����Ǵ� �� �ɸ��� �⺻ �ð�';
COMMENT ON COLUMN ramen.operatingtime IS '������ �����Ǵ� �ð�(24�ð� ����)';
COMMENT ON COLUMN recipe.m_num IS '��� �ĺ� ��ȣ';
COMMENT ON COLUMN recipe.r_num IS '�ش� ��� ��ǰ�� �ĺ��ϴ� ���� ��ȣ';
COMMENT ON COLUMN recipe.r_name IS '�ش� ��ǰ �̸�';
COMMENT ON COLUMN recipe.weat IS '�ش� ��ǰ�� ���� �а����� �߷�';
COMMENT ON COLUMN recipe.potatostarch IS '�ش� ��ǰ�� ���� ���������� �߷�';
COMMENT ON COLUMN recipe.palmoil IS '�ش� ��ǰ�� ���� �ʿ����� �߷�';
COMMENT ON COLUMN recipe.driedbeef IS '�ش� ��ǰ�� ���� ���� �Ұ���� �߷�';
COMMENT ON COLUMN recipe.anchovy IS '�ش� ��ǰ�� ���� ���� ��ġ�� �߷�';
COMMENT ON COLUMN recipe.garlic IS '�ش� ��ǰ�� ���� ������ �߷�';
COMMENT ON COLUMN recipe.onion IS '�ش� ��ǰ�� ���� ������ �߷�';
COMMENT ON COLUMN recipe.carrot IS '�ش� ��ǰ�� ���� ����� �߷�';
COMMENT ON COLUMN recipe.salty IS '�ش� ��ǰ�� ���� �ұ��� �߷�';
COMMENT ON COLUMN recipe.sugar IS '�ش� ��ǰ�� ���� ������ �߷�';
COMMENT ON COLUMN recipe.redpepperpowder IS '�ش� ��ǰ�� ���� ���尡���� �߷�';
COMMENT ON COLUMN recipe.mushroom IS '�ش� ��ǰ�� ���� ���� ������ �߷�';
COMMENT ON COLUMN recipe.seaweed IS '�ش� ��ǰ�� ���� ���� �̿��� �߷�';
COMMENT ON COLUMN Shipping.process_code IS '���ĺ� �α��� + ���� �ټ��ڸ�';
COMMENT ON COLUMN supply.product_code IS '�ڻ� �Ǵ� ����� ���� �ڵ� ���ĺ� 2�ڸ� + 
���� �ټ��ڸ�';
COMMENT ON COLUMN supply.process_code IS '���ĺ� �α��� + ���� �ټ��ڸ�';
COMMENT ON COLUMN totalinfo.t_num IS '�ֹ� ���� ���� ������ ���� ��ȣ';
COMMENT ON COLUMN totalinfo.r_num IS '�ش� ��� ��ǰ�� �ĺ��ϴ� ���� ��ȣ';
COMMENT ON COLUMN totalinfo.r_name IS '�ش� �ֹ��� ���� ��ǰ �̸�';
COMMENT ON COLUMN totalinfo.t_amount IS '�ش� �ֹ��� ��ǰ �� ���귮';
COMMENT ON COLUMN totalinfo.t_time IS '�ش� �ֹ��� ����Ϸ� �Ǵ� �������� �Ⱓ';
COMMENT ON COLUMN totalinfo.t_man IS '�ش� �ֹ� �Ϸ�� ���� ���Ե� �� �ο�';
COMMENT ON COLUMN totalinfo.t_cost IS '�ش� �ֹ��� ���� �Ϸ���� �Ҹ�� �� �����';
COMMENT ON COLUMN totalinfo.startdate IS '�ش� �ֹ��� ���� ������';
COMMENT ON COLUMN totalinfo.enddate IS '�ش� �ֹ��� ���� ������';
COMMENT ON COLUMN totalinfo.buydate IS '�ش� �ֹ��� �Ҹ�� ������ ������';
COMMENT ON COLUMN warehouse.warehouse_type IS '0 : ����â��
1 : ����
2 : ���ְ���';



