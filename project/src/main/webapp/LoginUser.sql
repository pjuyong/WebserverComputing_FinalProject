create table LoginUser(
	id int auto_increment,
	username varchar(50) not null,
	password varchar(50) not null,
	primary key (id)
);

drop table loginuser;

create table LoginUser(
	id INT AUTO_INCREMENT,
	username varchar(50) not null,
	passwd varchar(50) not null,
	name varchar(10) not null,
	phone varchar(50) not null,
	sex varchar(10) not null,
	primary key (id)
);

select * from loginuser;
delete from loginuser;
ALTER TABLE LoginUser AUTO_INCREMENT = 1;

drop table loginuser;

create table LoginUser(
	username varchar(50) not null,
	passwd varchar(50) not null,
	name varchar(10) not null,
	phone varchar(50) not null,
	sex varchar(10) not null,
	primary key (username)
);

