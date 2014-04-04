/*
Purpose: Script file that prepares test tables, loading functions
Date: April 4, 2014

Mark Lane , Crunchy Data Solutions

Note this is example code only.

*/

begin;
	--drop existing test objects and load functions
	drop table if exists ta ;
	drop table if exists tb ;
	drop table if exists tc ;
	drop table if exists td ;
	drop table if exists te ;

	drop function if exists data_load(integer, integer, integer, integer, integer);

	--make test tables
	create table ta 
		(
		   a serial not null
		 , b integer not null
		 , c real not null
		 , d timestamp not null default clock_timestamp()
		 , constraint ta_pk primary key (a)
		);

	create table tb 
		(
		   a serial not null
		 , b integer not null
		 , c real not null
		 , d timestamp not null default clock_timestamp()
		 , constraint tb_pk primary key (a)
		);

	create table tc 
		(
		   a serial not null
		 , b integer not null
		 , c real not null
		 , d timestamp not null default clock_timestamp()
		 , constraint tc_pk primary key (a)
		);


	create table td 
		(
		   a serial not null
		 , b integer not null
		 , c real not null
		 , d timestamp not null default clock_timestamp()
		 , constraint td_pk primary key (a)
		);
		

	create table te 
		(
		   a serial not null
		 , b integer not null
		 , c real not null
		 , d timestamp not null default clock_timestamp()
		 , constraint te_pk primary key (a)
		);

	--make the loading function
	 create function data_load (ta integer, tb integer, tc integer, td integer, te integer) 
	 returns character varying as

	 $$
	 declare i integer := 0;
	 begin 

	  -- load ta
	  while  i< ta loop
	    insert into ta (b,c)
	    values (ceiling(100*(random())), random());
	    i := i+1;
	  end loop;

	  --reset i
	  i:=0;

	  -- load tb
	  while  i< tb loop
	    insert into tb (b,c)
	    values (ceiling(100*(random())), random());
	    i := i+1;
	  end loop;

	  --reset i
	  i:=0;

	 -- load tc
	  while  i< tc loop
	    insert into tc (b,c)
	    values (ceiling(100*(random())), random());
	    i := i+1;
	  end loop;

	  --reset i
	  i:=0;

	 -- load td
	  while  i< td loop
	    insert into td (b,c)
	    values (ceiling(100*(random())), random());
	    i := i+1;
	  end loop;

	  --reset i
	  i:=0;

	 -- load te
	  while  i< te loop
	    insert into te (b,c)
	    values (ceiling(100*(random())), random());
	    i := i+1;
	  end loop;


	  return 'done';
	 end;
	 $$
	language plpgsql;

	--run the load function
	select * from data_load(1000,1000,1000,500,500);

	--report the counts for each table.
	      select 'ta', count(*) from ta
	union select 'tb', count(*) from tb
	union select 'tc', count(*) from tc
	union select 'td', count(*) from td
	union select 'te', count(*) from te
	;

commit;

analyze;

