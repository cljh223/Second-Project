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
);

insert into shop values
(
	shop_code_SEQ.nextval
	, '�̸�Ʈ24 ��Ÿ�ʵ��ڿ�����1ȣ��'
	, '785695-11111111'
	, '���켮'
	, '03-4563-1235'
	, 2
);

insert into shop values
(
	shop_code_SEQ.nextval
	, '��� �Ե���ȭ��'
	, '352642-4569853'
	, '������'
	, '02-4532-7856'
	, 0
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
	, '111'
);

insert into staff values
(
	staff_code_SEQ.NEXTVAL
	, '���ؼ�'
	, '������'
	, '111'
);

insert into staff values
(
	staff_code_SEQ.NEXTVAL
	, '������'
	, '������'
	, '111'
);

insert into staff values
(
	staff_code_SEQ.NEXTVAL
	, '���¿�'
	, '������'
	, '111'
);

insert into Truck 
values
(seq_truck_code.nextval, '��', 300, 200, 100);

insert into shipping
values
(52, '������', '��ǰ3', 10, '������1', '2017-09-30', 'confirmed', 1, 1, 1);

insert into shipping
values
(53, '�����', '��ǰ1', 20, '������3', '2017-09-15', 'shipped', 1, 1, 1);

insert into shipping
values
(54, '���ź�', '��ǰ2', 40, '������2', '2017-09-27', 'rejected', 1, 1, 2);

insert into shipping
values
(55, '������', '��ǰ3', 10, '������1', '2017-09-30', 'ordered', 1, 1, 2);

insert into shipping
values
(56, '�����', '��ǰ1', 20, '������3', '2017-09-15', 'ordered', 2, 1, 1);

insert into shipping
values
(57, '���ź�', '��ǰ2', 40, '������2', '2017-09-27', 'ordered', 2, 1, 2);

insert into shipping
values
(58, '������', '��ǰ3', 10, '������1', '2017-09-30', 'ordered', 2, 1, 2);

insert into shipping
values
(59, '�����', '��ǰ1', 20, '������3', '2017-09-15', 'ordered', 2, 1, 1);

insert into shipping
values
(60, '���ź�', '��ǰ2', 40, '������2', '2017-09-27', 'ordered', 3, 1, 2);

insert into shipping
values
(61, '������', '��ǰ3', 10, '������1', '2017-09-30', 'ordered', 3, 1, 2);

insert into shipping
values
(62, '�����', '��ǰ1', 20, '������3', '2017-09-15', 'ordered', 3, 1, 1);

insert into shipping
values
(63, '���ź�', '��ǰ2', 40, '������2', '2017-09-27', 'ordered', 3, 1, 2);

insert into shipping
values
(64, '������', '��ǰ3', 10, '������1', '2017-09-30', 'ordered', 4, 1, 1);

insert into shipping
values
(65, '�����', '��ǰ1', 20, '������3', '2017-09-15', 'ordered', 4, 1, 1);

insert into shipping
values
(66, '���ź�', '��ǰ2', 40, '������2', '2017-09-27', 'ordered', 4, 1, 2);

insert into shipping
values
(67, '���ź�', '��ǰ2', 40, '������2', '2017-09-27', 'ordered', 4, 1, 2);

insert into shipping
values
(68, '������', '��ǰ3', 10, '������1', '2017-09-30', 'ordered', 4, 1, 1);

insert into shipping
values
(69, '�����', '��ǰ1', 20, '������3', '2017-09-15', 'ordered', 4, 1, 1);

insert into shipping
values
(70, '���ź�', '��ǰ2', 40, '������2', '2017-09-27', 'ordered', 2, 1, 2);

insert into shipping
values
(71, '������', '��ǰ3', 10, '������1', '2017-09-30', 'ordered', 1, 1, 2);

insert into shipping
values
(72, '�����', '��ǰ1', 20, '������3', '2017-09-15', 'ordered', 2, 1, 1);

insert into shipping
values
(73, '���ź�', '��ǰ2', 40, '������2', '2017-09-27', 'ordered', 2, 1, 2);

insert into factory values (1, '1st Ramen Factory', '��⵵ ������ ������', '031-450-5500', 15000);
insert into factory values (2, '2nd Ramen Factory', '��⵵ �Ⱦ�� ���ȱ� ���̵�', '031-421-2122', 15000);


insert into ramen values('p01', '�ȼ�����', '1st factory', 131, 125);
insert into ramen values('p02', '�Ŷ��', '1st factory', 126, 120);
insert into ramen values('p03', '�ʱ���', '1st factory', 126, 120);
insert into ramen values('p04', '��ġĮ�������', '1st factory', 104, 98);
insert into ramen values('p05', '�縮����', '1st factory', 116, 110);



