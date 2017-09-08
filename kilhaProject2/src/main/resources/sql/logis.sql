
/* Drop Tables */

DROP TABLE inmotion CASCADE CONSTRAINTS;
DROP TABLE shipping CASCADE CONSTRAINTS;
DROP TABLE warehouse CASCADE CONSTRAINTS;
DROP TABLE facility CASCADE CONSTRAINTS;
DROP TABLE staff CASCADE CONSTRAINTS;
DROP TABLE truck CASCADE CONSTRAINTS;




/* Create Tables */


CREATE TABLE inmotion
(
	motion_code number NOT NULL,
	office varchar2(15) NOT NULL,
	goods varchar2(15) NOT NULL,
	quantity number NOT NULL,
	deliverydate date NOT NULL,
	status varchar2(15) NOT NULL,
	truck_code number NOT NULL,
	facility_code number NOT NULL,
	PRIMARY KEY (motion_code)
);


CREATE TABLE shipping
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
	facility_code number NOT NULL,
	PRIMARY KEY (orderNum)
);


CREATE TABLE staff
(
	staff_code number(5,0) NOT NULL,
	staff_name varchar2(15) NOT NULL,
	staff_id varchar2(15) NOT NULL,
	staff_password varchar2(15) NOT NULL,
	staff_department varchar2(50) NOT NULL,
	dept_code number(5,0) NOT NULL,
	PRIMARY KEY (staff_code)
);


CREATE TABLE truck
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
	stockNum number NOT NULL,
	locNum number NOT NULL,
	goods varchar2(30) NOT NULL,
	quantity number NOT NULL,
	inputdate date NOT NULL,
	facility_code number NOT NULL,
	PRIMARY KEY (stockNum)
);

create sequence seq_shipping_orderNum;



=================================================

CREATE TABLE staff
(
	staff_code number(5,0) NOT NULL,
	staff_name varchar2(15) NOT NULL,
	staff_password varchar2(15) NOT NULL,
	dept_code number(5,0) NOT NULL,
	PRIMARY KEY (staff_code)
);

insert into staff
values
(111, '价篮瘤', 111, 1);

CREATE TABLE facility
(
	facility_code number NOT NULL,
	facility_name varchar2(50) NOT NULL,
	facility_address varchar2(100) NOT NULL,
	PRIMARY KEY (facility_code)
);

create sequence seq_facility_code;

insert into facility
values
(seq_facility_code.nextval, '拱幅季磐1', '版扁档 荐盔矫 喉扼喉扼喉扼');

insert into facility
values
(seq_facility_code.nextval, '拱幅季磐2', '力林档 力林矫 喉扼喉扼喉扼');

insert into facility
values
(seq_facility_code.nextval, '拱幅季磐3', '傈扼合档 傈林矫 喉扼喉扼喉扼');

CREATE TABLE shipping
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
	facility_code number NOT NULL,
	PRIMARY KEY (orderNum)
);

insert into shipping
values
(52, '康诀何', '力前3', 10, '康诀家1', '2017-09-30', 'confirmed', 111, 0, 3);

insert into shipping
values
(53, '积魂何', '力前1', 20, '康诀家3', '2017-09-15', 'shipped', 111, 0, 1);

insert into shipping
values
(54, '备概何', '力前2', 40, '康诀家2', '2017-09-27', 'rejected', 111, 0, 2);

insert into shipping
values
(55, '康诀何', '力前3', 10, '康诀家1', '2017-09-30', 'ordered', 111, 0, 3);

insert into shipping
values
(56, '积魂何', '力前1', 20, '康诀家3', '2017-09-15', 'ordered', 111, 0, 1);

insert into shipping
values
(57, '备概何', '力前2', 40, '康诀家2', '2017-09-27', 'ordered', 111, 0, 2);

insert into shipping
values
(58, '康诀何', '力前3', 10, '康诀家1', '2017-09-30', 'ordered', 111, 0, 3);

insert into shipping
values
(59, '积魂何', '力前1', 20, '康诀家3', '2017-09-15', 'ordered', 111, 0, 1);

insert into shipping
values
(60, '备概何', '力前2', 40, '康诀家2', '2017-09-27', 'ordered', 111, 0, 2);

insert into shipping
values
(61, '康诀何', '力前3', 10, '康诀家1', '2017-09-30', 'ordered', 111, 0, 3);

insert into shipping
values
(62, '积魂何', '力前1', 20, '康诀家3', '2017-09-15', 'ordered', 111, 0, 1);

insert into shipping
values
(63, '备概何', '力前2', 40, '康诀家2', '2017-09-27', 'ordered', 111, 0, 2);

insert into shipping
values
(64, '康诀何', '力前3', 10, '康诀家1', '2017-09-30', 'ordered', 111, 0, 3);

insert into shipping
values
(65, '积魂何', '力前1', 20, '康诀家3', '2017-09-15', 'ordered', 111, 0, 1);

insert into shipping
values
(66, '备概何', '力前2', 40, '康诀家2', '2017-09-27', 'ordered', 111, 0, 2);

insert into shipping
values
(67, '备概何', '力前2', 40, '康诀家2', '2017-09-27', 'ordered', 111, 0, 2);

insert into shipping
values
(68, '康诀何', '力前3', 10, '康诀家1', '2017-09-30', 'ordered', 111, 0, 3);

insert into shipping
values
(69, '积魂何', '力前1', 20, '康诀家3', '2017-09-15', 'ordered', 111, 0, 1);

insert into shipping
values
(70, '备概何', '力前2', 40, '康诀家2', '2017-09-27', 'ordered', 111, 0, 2);

insert into shipping
values
(71, '康诀何', '力前3', 10, '康诀家1', '2017-09-30', 'ordered', 111, 0, 3);

insert into shipping
values
(72, '积魂何', '力前1', 20, '康诀家3', '2017-09-15', 'ordered', 111, 0, 1);

insert into shipping
values
(73, '备概何', '力前2', 40, '康诀家2', '2017-09-27', 'ordered', 111, 0, 2);


