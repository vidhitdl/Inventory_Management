create table userinfo(
name varchar(20),
uid varchar(20) primary key,
username varchar(20),
password varchar(20),
address varchar(20),
phone_number varchar(20));



create table category(
cid varchar(20) primary key,
userid varchar(20),
name varchar(20),
description varchar(20),
date_encoded DATE,
constraint fk_userinfo foreign key(userid) references userinfo(uid));




create table sales(
sid varchar(20) primary key,
quantity varchar(20),
total varchar(20),
date_encoded DATE,
userid varchar(20),
constraint fk_userinfo foreign key(userid) references userinfo(uid));



create table invoice(
iid varchar(20) primary key,
date_encoded DATE,
discount_price varchar(20),
total_amount varchar(20) ,
userid varchar(20) ,
constraint fk_userinfo foreign key(userid) references userinfo(uid));




create table unit(
unid varchar(20) primary key,
name varchar(20),
userid varchar(20),
date_encoded DATE,
description varchar(20),
constraint fk_userinfo foreign key(userid) references userinfo(uid));




create table product(
pid varchar(20) primary key,
userid varchar(20),
unitid varchar(20),
catid varchar(20),
date_encoded DATE,
stock_quantity varchar(20),
expiry_date DATE,
price varchar(20),
item_name varchar(20),
item_code varchar(20),
salesid varchar(20),
invoiceid varchar(20),
item_image bytea,
constraint fk_userinfo foreign key(userid) references userinfo(uid),
constraint fk_category foreign key(catid) references category(cid),
constraint fk_unit foreign key(unitid) references unit(unid),
constraint fk_sale foreign key(salesid) references sales(sid),
constraint fk_invoice foreign key(invoiceid) references invoice(iid));