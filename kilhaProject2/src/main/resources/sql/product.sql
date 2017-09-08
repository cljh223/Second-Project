select * from factory;
select * from ramen;
select * from DAILYPRODUCT order by product_num;

delete from ramen;
delete from factory;
delete from dailyproduct;

drop table ramen;
drop table dailyproduct;

create table ramen(
  r_num varchar(10) primary key,
  r_name varchar(50) not null,
  r_factory varchar(20) not null,
  usl number not null,
  lsl number not null
);

create table factory(
    fac_num number primary key,
    fac_name varchar2(50),
    fac_address varchar2(50),
    fac_tel varchar2(50),
    maxamount number
);

create table dailyproduct(
    product_num varchar(20) primary key,
    r_num varchar(10),
    line_num varchar(10) not null,
    product_date date not null,
    weight number not null,
    CONSTRAINT fk_r_num FOREIGN KEY(r_num) references ramen(r_num)
);

insert into factory values (1, '1st Ramen Factory', '경기도 군포시 당정동', '031-450-5500', 15000);
insert into factory values (2, '2nd Ramen Factory', '경기도 안양시 동안구 평촌동', '031-421-2122', 15000);


insert into ramen values('p01', '안성탕면', '1st factory', 131, 125);
insert into ramen values('p02', '신라면', '1st factory', 126, 120);
insert into ramen values('p03', '너구리', '1st factory', 126, 120);
insert into ramen values('p04', '멸치칼국수라면', '1st factory', 104, 98);
insert into ramen values('p05', '사리곰탕', '1st factory', 116, 110);

commit;