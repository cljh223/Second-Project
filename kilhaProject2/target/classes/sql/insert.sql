INSERT INTO warehouse VALUES
(
	warehouse_code_num_SEQ.NEXTVAL
	, '�������'
	, '����'
);

INSERT INTO warehouse VALUES
(
	warehouse_code_num_SEQ.NEXTVAL
	, '���â��'
	, '����â��'
);

insert into shop values
(
	shop_code_SEQ.nextval
	, '����� ��Ÿ�ʵ��ڿ�����4ȣ��'
	, '920223-11111111'
	, '���ؼ�'
	, '02-909-0031'
	, 1
	, 'cljh223@naver.com'
	, 'cljh223@naver.com'
	, '���� ��Ʈ'
);

insert into shop values
(
	shop_code_SEQ.nextval
	, '�̸�Ʈ24 ��Ÿ�ʵ��ڿ�����1ȣ��'
	, '785695-11111111'
	, '���켮'
	, '03-4563-1235'
	, 2
	, 'cljh223@naver.com'
	, 'cljh223@naver.com'
	, '���� ��Ʈ'
);

insert into shop values
(
	shop_code_SEQ.nextval
	, '��� �Ե���ȭ��'
	, '352642-4569853'
	, '������'
	, '02-4532-7856'
	, 0
	, 'cljh223@naver.com'
	, 'cljh223@naver.com'
	, '���� ��Ʈ'
);

INSERT INTO product VALUES
(
	'my00001'
	, '�����'
	, 20000
	, 30000
	, 'aaa'
	, 'box'
	, '40000'
);

INSERT INTO product VALUES
(
	'my00002'
	, '��«��'
	, 25000
	, 35000
	, 'bbb'
	, 'box'
	, '45000'
);

insert into address values
(
	'06164'
	, '����Ư����'
	, '������'
	, '������� 524'
	, ''
	, 1
);

insert into address values
(
	'06164'
	, '����Ư����'
	, '������'
	, '������� 513'
	, '�Ｚ���ڿ���'
	, 2
);

insert into address values
(
	'05554'
	, '����'
	, '���ı�'
	, '�ø��ȷ� 240'
	, ''
	, 3
);

insert into staff values
(
	staff_code_SEQ.NEXTVAL
	, '���켮'
	, '�����'
	, '2222'
	, '2222'
	, 'cowstone@kill.ah'
);

insert into staff values
(
	staff_code_SEQ.NEXTVAL
	, '���ؼ�'
	, '������'
	, '4444'
	, '4444'
	, 'handsomestone@killl.ah'
);

insert into staff values
(
	staff_code_SEQ.NEXTVAL
	, '������'
	, '������'
	, '3333'
	, '3333'
	, 'silvermouse@kill.ah'
);

insert into staff values
(
	staff_code_SEQ.NEXTVAL
	, '������'
	, '���ź�'
	, '1111'
	, '1111'
	, 'peartree@kill.ah'
);

insert into staff values
(
	staff_code_SEQ.NEXTVAL
	, 'ȫ����'
	, '�����'
	, '0000'
	, '0000'
	, 'redsilverground@kill.ah'
);


insert into kpiDivision values
(
	0
	, '�Ǹž�'
);

insert into kpiDivision values
(
	1
	, '�����'
);

insert into kpiDivision values
(
	2
	, '���� �� ����'
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
('11��1234', '��', 300, 200, 100);

insert into Truck 
values
('12��1234', '��', 300, 200, 100);

insert into Truck 
values
('13��1234', '��', 300, 200, 100);

insert into Truck 
values
('14��1234', '��', 300, 200, 100);

insert into Truck 
values
('15��1234', '��', 300, 200, 100);

insert into Truck 
values
('16��1234', '��', 300, 200, 100);

insert into Truck 
values
('17��1234', '��', 300, 200, 100);

insert into Truck 
values
('18��1234', '��', 300, 200, 100);

insert into Truck 
values
('19��1234', '��', 300, 200, 100);

insert into Truck 
values
('20��1234', '��', 300, 200, 100);

insert into Truck 
values
('21��1234', '��', 300, 200, 100);

insert into Truck 
values
('22��1234', '��', 300, 200, 100);

insert into Truck 
values
('23��1234', '��', 300, 200, 100);

insert into Truck 
values
('24��1234', '��', 300, 200, 100);

insert into Truck 
values
('25��1234', '��', 300, 200, 100);

insert into Truck 
values
('26��1234', '��', 300, 200, 100);

insert into Truck 
values
('27��1234', '��', 300, 200, 100);

insert into Truck 
values
('28��1234', '��', 300, 200, 100);

insert into Truck 
values
('29��1234', '��', 300, 200, 100);

insert into Truck 
values
('30��1234', '��', 300, 200, 100);

insert into Truck 
values
('31��1234', '��', 300, 200, 100);

insert into Truck 
values
('32��1234', '��', 300, 200, 100);

insert into shipping
values
(52, '������', '��ǰ3', 10, '2017-09-30', 'confirmed', 1, 1, '11��1234');

insert into shipping
values
(53, '�����', '��ǰ1', 20, '2017-09-15', 'shipped', 1, 1, '12��1234');

insert into shipping
values
(54, '���ź�', '��ǰ2', 40, '2017-09-27', 'rejected', 1, 1, '13��1234');

insert into shipping
values
(55, '������', '��ǰ3', 10, '2017-09-30', 'ordered', 1, 1, '14��1234');

insert into shipping
values
(56, '�����', '��ǰ1', 20, '2017-09-15', 'ordered', 2, 2, '15��1234');

insert into shipping
values
(57, '���ź�', '��ǰ2', 40, '2017-09-27', 'ordered', 2, 2, '16��1234');

insert into shipping
values
(58, '������', '��ǰ3', 10, '2017-09-30', 'ordered', 2, 2, '17��1234');

insert into shipping
values
(59, '�����', '��ǰ1', 20, '2017-09-15', 'ordered', 2, 2, '18��1234');

insert into shipping
values
(60, '���ź�', '��ǰ2', 40, '2017-09-27', 'ordered', 3, 3, '19��1234');

insert into shipping
values
(61, '������', '��ǰ3', 10, '2017-09-30', 'ordered', 3, 3, '20��1234');

insert into shipping
values
(62, '�����', '��ǰ1', 20, '2017-09-15', 'ordered', 3, 3, '21��1234');

insert into shipping
values
(63, '���ź�', '��ǰ2', 40, '2017-09-27', 'ordered', 3, 3, '22��1234');

insert into shipping
values
(64, '������', '��ǰ3', 10, '2017-09-30', 'ordered', 4, 1, '23��1234');

insert into shipping
values
(65, '�����', '��ǰ1', 20, '2017-09-15', 'ordered', 4, 2, '24��1234');

insert into shipping
values
(66, '���ź�', '��ǰ2', 40, '2017-09-27', 'ordered', 4, 3, '25��1234');

insert into shipping
values
(67, '���ź�', '��ǰ2', 40, '2017-09-27', 'ordered', 4, 1, '26��1234');

insert into shipping
values
(68, '������', '��ǰ3', 10, '2017-09-30', 'ordered', 4, 2, '27��1234');

insert into shipping
values
(69, '�����', '��ǰ1', 20, '2017-09-15', 'ordered', 4, 3, '28��1234');

insert into shipping
values
(70, '���ź�', '��ǰ2', 40, '2017-09-27', 'ordered', 2, 1, '29��1234');

insert into shipping
values
(71, '������', '��ǰ3', 10, '2017-09-30', 'ordered', 1, 2, '30��1234');

insert into shipping
values
(72, '�����', '��ǰ1', 20, '2017-09-15', 'ordered', 2, 3, '31��1234');

insert into shipping
values
(73, '���ź�', '��ǰ2', 40, '2017-09-27', 'ordered', 2, 1, '32��1234');

insert into factory values (1, '1st Ramen Factory', '��⵵ ������ ������', '031-450-5500', 15000);
insert into factory values (2, '2nd Ramen Factory', '��⵵ �Ⱦ�� ���ȱ� ���̵�', '031-421-2122', 15000);


insert into ramen values('p01', '�ȼ�����', '1st factory', 131, 125);
insert into ramen values('p02', '�Ŷ��', '1st factory', 126, 120);
insert into ramen values('p03', '�ʱ���', '1st factory', 126, 120);
insert into ramen values('p04', '��ġĮ�������', '1st factory', 104, 98);
insert into ramen values('p05', '�縮����', '1st factory', 116, 110);


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



