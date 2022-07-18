create view unit_view as
select * from unit;


create view cat_view as
select * from caetgory;

create view sales_view as
select * from sales;

create view invoice_view as
select * from invoice;

create view product_view as
select pid,userid,unitid,catid,date_encoded,stock_quantity,expiry_date,price,item_name,item_code,salesid,invoiceid from product;