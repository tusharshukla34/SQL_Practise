use p55;


describe library;
describe info;


# we added the foreign key after the table creation 
alter table info add constraint foreign key(lib_id) references library (lib_id);

# change the table name of first  and then change column name of another table and then create a foreign key and then try to insert 

rename table library to libraries; 
alter table info rename column `phone no.` to contact;
alter table libraries rename column `table number` to table_number;


describe libraries;
describe info;





create table const(id int unique,name varchar(30) not null, age int check(age>18),status varchar(20) default 'active');


truncate table const;
insert into const(id,name,age)
values(1,"amit",19),(2,"suraj",22),(3,"yash",23);

select * from const;
describe const;


#----------------------------------------------To remove-------------------------------------------------------------------------

# first how to remove the unique constraint from the table
alter table const drop constraint id;

# to remove check const from the 
alter table const drop check const_chk_1;

# to remove null const from the 
alter table const modify column name varchar(40);

#to remove default const from the table
alter table const alter column status drop default;

describe const;




#----------------------------------------------To update-------------------------------------------------------------------------

#now to update the unique const
alter table const add constraint unique(id);

#now to update the null const
alter table const modify column name varchar(50) not null;

#now to update check const
alter table const add constraint age check(age>18);

#now to update the default const
alter table const alter column status set default 'active';



