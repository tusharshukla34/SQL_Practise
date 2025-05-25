create database p55;
use p55;
create table library(lib_id int primary key,
`table number` int unique not null,
Subject varchar(30)
);

drop table library;

create table info(name varchar(40),
lib_id int,city varchar(30),
foreign key(lib_id) references library(lib_id)
);


-- i forgot to add a column in table so i write below query
alter table info add `phone no.` bigint;

-- then i forgot to give the primary key to the phone no. column so i write the below query
alter table info modify `phone no.` bigint primary key;

-- i am deleting the foreign key from the info table
alter table info drop foreign key info_ibfk_1;
alter table info drop key lib_id;

describe info;