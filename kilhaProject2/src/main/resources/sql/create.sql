
/* Drop Tables */

DROP TABLE Pur_orderrecords_detail CASCADE CONSTRAINTS;
DROP TABLE Pur_orderrecords CASCADE CONSTRAINTS;
DROP TABLE supply CASCADE CONSTRAINTS;
DROP TABLE Shipping CASCADE CONSTRAINTS;
DROP TABLE process CASCADE CONSTRAINTS;
DROP TABLE Truck CASCADE CONSTRAINTS;
DROP TABLE Stock CASCADE CONSTRAINTS;
DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE warehouse CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE Pur_traderecords CASCADE CONSTRAINTS;
DROP TABLE Pur_rawmaterials CASCADE CONSTRAINTS;
DROP TABLE Staff CASCADE CONSTRAINTS;
DROP TABLE Pur_RM_daily_price CASCADE CONSTRAINTS;
DROP TABLE kpi CASCADE CONSTRAINTS;
DROP TABLE kpiDivision CASCADE CONSTRAINTS;
DROP TABLE shop CASCADE CONSTRAINTS;
DROP TABLE dailyproduct CASCADE CONSTRAINTS;
DROP TABLE factory CASCADE CONSTRAINTS;
DROP TABLE inventory CASCADE CONSTRAINTS;
DROP TABLE totalinfo CASCADE CONSTRAINTS;
DROP TABLE recipe CASCADE CONSTRAINTS;
DROP TABLE productinfo CASCADE CONSTRAINTS;
DROP TABLE ramen CASCADE CONSTRAINTS;
DROP TABLE section CASCADE CONSTRAINTS;

DROP SEQUENCE shop_code_SEQ;
DROP SEQUENCE warehouse_code_num_SEQ;
DROP SEQUENCE staff_code_SEQ;
DROP SEQUENCE supply_num_seq;
DROP SEQUENCE seq_shipping_orderNum;
DROP SEQUENCE seq_truck_code;
DROP SEQUENCE process_code_seq;
DROP SEQUENCE kpi_code_seq;
DROP SEQUENCE seq_sec_code; 
DROP SEQUENCE stockNum_SEQ;

/* Create Tables */

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


CREATE TABLE Truck
(
	truck_code varchar2(30) NOT NULL,
	space varchar2(10) NOT NULL,
	width number NOT NULL,
	length number NOT NULL,
	height number NOT NULL,
	PRIMARY KEY (truck_code)
);



CREATE TABLE Stock
(
	stockNum number NOT NULL,
	warehouse_code number NOT NULL,
	sec_code number NOT NULL,
	r_num varchar2(10) NOT NULL,
	quantity number NOT NULL,
	inputdate date NOT NULL,
	PRIMARY KEY (stockNum)
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


CREATE TABLE kpiDivision
(
	-- 0 : �Ǹž�
	-- 1 : �����
	-- 2 : ���� �� ����
	kpiDivision_code number NOT NULL,
	kpiDivision_name varchar2(20) NOT NULL UNIQUE,
	PRIMARY KEY (kpiDivision_code)
);


CREATE TABLE Shipping
(
	orderNum number NOT NULL,
	truck_code varchar2(30) NOT NULL,
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


CREATE TABLE kpi
(
	kpi_code number(10,0) NOT NULL,
	kpi_amount number(19,0) NOT NULL,
	-- ����, �б⺰, ���� ���� ����
	kpi_start_date date NOT NULL,
	shop_code number(10,0) NOT NULL,
	-- 0 : �Ǹž�
	-- 1 : �����
	-- 2 : ���� �� ����
	kpiDivision_code number NOT NULL,
	PRIMARY KEY (kpi_code)
);


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


CREATE TABLE factory
(
	-- �� ������ �ĺ��� �� �ִ� ���� ��ȣ
	f_num number NOT NULL,
	-- �ش� ������ �̸�
	fac_name varchar2(50) NOT NULL,
	-- �ش� ������ �ּ�
	fac_address varchar2(50) NOT NULL,
	-- �ش� ������ ��ȭ��ȣ
	fac_tel varchar2(50) NOT NULL,
	-- �ش� ������ ������ �� �ִ� �ִ� ���귮
	maxamount number NOT NULL,
	PRIMARY KEY (f_num)
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
	enddate date NOT NULL,
	-- �ش� �ֹ��� �Ҹ�� ������ ������
	buydate date NOT NULL,
	PRIMARY KEY (t_num)
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
	f_num number NOT NULL,
	PRIMARY KEY (product_num)
);

CREATE TABLE section
(
	sec_code number NOT NULL,
	warehouse_code number NOT NULL,
	sec_name varchar2(30) NOT NULL,
	-- �ش� ��� ��ǰ�� �ĺ��ϴ� ���� ��ȣ
	locationX1 number NOT NULL,
	locationY1 number NOT NULL,
	locationX2 number NOT NULL,
	locationY2 number NOT NULL,
	PRIMARY KEY (sec_code)
);



/* Create Foreign Keys */

ALTER TABLE Pur_orderrecords_detail
	ADD FOREIGN KEY (taskcode)
	REFERENCES Pur_orderrecords (taskcode)
;


ALTER TABLE supply
	ADD FOREIGN KEY (process_code)
	REFERENCES process (process_code)
;


ALTER TABLE Shipping
	ADD FOREIGN KEY (process_code)
	REFERENCES process (process_code)
;


ALTER TABLE Shipping
	ADD FOREIGN KEY (truck_code)
	REFERENCES Truck (truck_code)
;


ALTER TABLE address
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
;


ALTER TABLE Stock
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
;


ALTER TABLE process
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
;


ALTER TABLE supply
	ADD FOREIGN KEY (product_code)
	REFERENCES product (product_code)
;


ALTER TABLE Pur_traderecords
	ADD FOREIGN KEY (RMcode)
	REFERENCES Pur_rawmaterials (RMcode)
;


ALTER TABLE Pur_orderrecords
	ADD FOREIGN KEY (staff_code)
	REFERENCES Staff (staff_code)
;


ALTER TABLE process
	ADD FOREIGN KEY (staff_code)
	REFERENCES Staff (staff_code)
;


ALTER TABLE kpi
	ADD FOREIGN KEY (kpiDivision_code)
	REFERENCES kpiDivision (kpiDivision_code)
;


ALTER TABLE process
	ADD FOREIGN KEY (shop_code)
	REFERENCES shop (shop_code)
;


ALTER TABLE address
	ADD FOREIGN KEY (shop_code)
	REFERENCES shop (shop_code)
;


ALTER TABLE kpi
	ADD FOREIGN KEY (shop_code)
	REFERENCES shop (shop_code)
;


ALTER TABLE dailyproduct
	ADD FOREIGN KEY (f_num)
	REFERENCES factory (f_num)
;


ALTER TABLE totalinfo
	ADD FOREIGN KEY (r_num)
	REFERENCES ramen (r_num)
;


ALTER TABLE recipe
	ADD FOREIGN KEY (r_num)
	REFERENCES ramen (r_num)
;


ALTER TABLE productinfo
	ADD FOREIGN KEY (r_num)
	REFERENCES ramen (r_num)
;


ALTER TABLE dailyproduct
	ADD FOREIGN KEY (r_num)
	REFERENCES ramen (r_num)
;

ALTER TABLE section
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
;

ALTER TABLE Stock
	ADD FOREIGN KEY (sec_code)
	REFERENCES section (sec_code)
;


ALTER TABLE Stock
	ADD FOREIGN KEY (warehouse_code)
	REFERENCES warehouse (warehouse_code)
;

ALTER TABLE Stock
	ADD FOREIGN KEY (r_num)
	REFERENCES ramen (r_num)
;




CREATE SEQUENCE warehouse_code_num_SEQ;

CREATE SEQUENCE shop_code_SEQ
START WITH 50
INCREMENT BY 1;

CREATE SEQUENCE supply_num_seq
START WITH 50
INCREMENT BY 1;

CREATE SEQUENCE kpi_code_seq
START WITH 50
INCREMENT BY 1;

CREATE SEQUENCE staff_code_SEQ;

create sequence seq_shipping_orderNum;

create sequence seq_truck_code; 

CREATE SEQUENCE process_code_seq
START WITH 50
INCREMENT BY 1;

create sequence seq_sec_code;

create sequence stockNum_SEQ;

