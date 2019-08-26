create database if not exists bookstore;
use bookstore;

drop table if exists users;
create table if not exists users
(
    u_id int(4) primary key auto_increment,
    u_name varchar(8) not null unique,
    u_password varchar(20) not null,
    u_realname 	varchar(20) not null,
    u_regdt timestamp default current_timestamp,
    u_phone varchar(11) not null,
    u_role 	int(1) default 1,
    u_mark 	varchar(20) 
);
insert into users(u_name,u_password,u_realname,u_phone,u_role,u_mark)
values('admin','111','张浩然','15478693698',1,'啥都管'),('zhangsan','123','张三','15478693698',0,'啥都不管');


drop table if exists booktypes;
create table if not exists booktypes
(
	bt_id int(4) primary key auto_increment,
	bt_name varchar(50) not null unique
)auto_increment=1000001;
insert into booktypes(bt_name)
values('少儿'),('军事'),('IT');


drop table if exists books;
create table if not exists books
(
	b_id int(8) primary key auto_increment,
	b_isbn varchar(13) not null unique,
	b_name varchar(50) not null,
	b_author varchar(30) not null,
	b_publisher varchar(20) not null,
	b_price float not null,
	bt_id int(8) not null references booktypes(bt_id),
	b_image varchar(50) not null,
	b_stock int(6) not null,
	b_content varchar(2000),
	b_regdt timestamp default current_timestamp,
	b_sales int(10) default 0
)auto_increment=100001;


insert into books(b_isbn,b_name,b_author,b_publisher,b_price,bt_id,b_image,b_stock,b_content)
values ('9787302517597','java从入门到精通','张三','清华大学',139.6,1000001,'images/book/book_01.gif','2000','入门到入土，包教包会'),
('9787302274629','计算机网络(第5版)','(美)特南鲍姆 韦瑟罗尔','清华大学',89.5,1000001,'images/book/book_02.gif',10000,'考研必考,可以用电脑控制挖掘机炒菜'),
('9787106850210','TCP/IP详解卷1原书第2版','李四','机械工业',242,1000001,'images/book/book_03.gif',10000,'别看了了，你要是能学会就有鬼了');


drop table if exists orders;
create table if not exists orders
(
	o_id int(4) primary key auto_increment,
	o_isbn varchar(13) not null,
	o_addr varchar(100) not null,
	o_date timestamp default current_timestamp,
	o_state int(1) not null default 0,
	o_mark varchar(50),
	u_name varchar(8) not null references users(u_name)
);


drop table if exists cart;
create table if not exists cart
(
	c_id int(6) primary key auto_increment,
	u_name varchar(8) not null references users(u_name),
	b_id int(8) not null references books(b_id),
	c_number int(3) not null
);



drop table if exists orderdetails;
create table if not exists orderdetails
(
	od_number int(3) not null,
	o_isbn varchar(13) references orders(o_isbn) ,
	b_id int(8) references books(b_id),
	primary key(o_isbn,b_id)
);
