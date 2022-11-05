use flight
create table flight(flight_no varchar(50) primary key,flight_desc varchar(100),flight_capacity int);

create table passenger(id int primary key auto_increment,name varchar(50),user_name varchar(50) unique,email varchar(50) unique,password varchar(10),mobile bigint,address varchar(200),dob date);
create table flight_schedule(s_id int primary key auto_increment,flight_from varchar(100),flight_to varchar(100),flight_date date,flight_time time,cost int,flight_no varchar(50),FOREIGN KEY (flight_no) REFERENCES flight(flight_no));
show tables;

insert into flight(flight_no,flight_desc,flight_capacity) values('A001','The National Carrier of India, offers connections to over 70 international',100),('A003','The National Carrier of India, offers connections to over 70 international ',150);


insert into passenger(name,user_name,email,password,mobile,address,dob)
values('Jinu','jinu01','jinu@gmail.com','jinu',9080706050,'Vadakkeveettil(H)','2000-05-30'),
('Jiji','jiji01','jiji@gmail.com','jiji',9080706051,'Vadakkl(H)','2003-06-3'),
('jjj','jjj','jjj@gmail.com','jjj',9080706059,'Vadakkeveettilll(H)','1999-11-30');

truncate passenger;

insert into flight_schedule(flight_from,flight_to,flight_date,flight_time,cost,flight_no)
values('kochi','Delhi','2023-03-30','10:30',10000,'A001');