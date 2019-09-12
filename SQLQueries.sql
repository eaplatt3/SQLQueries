alter table inspections_raw_data add constraint data_check_ck check(record_date >= inspection_date);

create table restaurant_names(names_of_restaurant) as select distinct dba from inspections_raw_data;

select count(*) from restaurant_names;

alter table restaurant_names add constraint rn_pk primary key('name_of_restaurant');

insert into inspections_raw_data(camis, dba, inspection_date, record_date) values (111111111, 'blah blah pizza', '21-Jan-15', '20-Jan-15');

create table delete_me (id int primarykey);

insert into delete_me(id) values(10);

alter table delete_me(id) drop constraint sys_c008205;



