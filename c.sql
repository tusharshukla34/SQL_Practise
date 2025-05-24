use coaching;


#column level
create table new (id int unique key not null,  age int not null , ids int primary key);
drop table new;
describe new;

-- concept of primary key and composite key , 
-- at column level we can only assing one primary key but 
-- at table level we can assing multiple primary key to colunm and the first column will indicate primary key 
-- and the other will called as composite key


#table level
create table new1(id int, age int not null,
primary key (id,age));

describe new1;

