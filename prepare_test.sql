/*
Purpose: Script file running prepared statement tests
Date: April 4, 2014

Mark Lane , Crunchy Data Solutions

Note this is example code only.

*/

--drop and recreate result table
drop table if exists results;

create table results 
	(
	   trial serial not null
	 , details character varying
	 , cnt bigint
	 , start_time timestamp not null default clock_timestamp()
	 , end_time timestamp null
	 , constraint results_pk primary key (trial)
	);



--small scale single table insert trial
	INSERT INTO results(details,cnt)
	values ('single table select', 20);

	 SELECT * FROM ta where a = 100; 
	 SELECT * FROM ta where a = 101; 
	 SELECT * FROM ta where a = 102; 
	 SELECT * FROM ta where a = 103; 
	 SELECT * FROM ta where a = 104; 
	 SELECT * FROM ta where a = 105; 
	 SELECT * FROM ta where a = 106; 
	 SELECT * FROM ta where a = 107;
	 SELECT * FROM ta where a = 108; 
	 SELECT * FROM ta where a = 109; 
	 SELECT * FROM ta where a = 110; 
	 SELECT * FROM ta where a = 111; 
	 SELECT * FROM ta where a = 112; 
	 SELECT * FROM ta where a = 113; 
	 SELECT * FROM ta where a = 114; 
	 SELECT * FROM ta where a = 115; 
	 SELECT * FROM ta where a = 116; 
	 SELECT * FROM ta where a = 117;
	 SELECT * FROM ta where a = 118; 
	 SELECT * FROM ta where a = 119; 

	--get the current_time
	 update results 
	 set end_time = clock_timestamp() 
	 where trial = (select max(trial) from results where end_time is null);

--new trial - prepared statements
	INSERT INTO results(details,cnt)
	values ('prepared single table select', 20);

 	PREPARE ta_sin_sel(integer) AS
 	 SELECT * FROM ta where a = $1;

	 EXECUTE ta_sin_sel(100); 
	 EXECUTE ta_sin_sel(101); 
	 EXECUTE ta_sin_sel(102); 
	 EXECUTE ta_sin_sel(103); 
	 EXECUTE ta_sin_sel(104); 
	 EXECUTE ta_sin_sel(105); 
	 EXECUTE ta_sin_sel(106); 
	 EXECUTE ta_sin_sel(107);
	 EXECUTE ta_sin_sel(108); 
	 EXECUTE ta_sin_sel(109); 
	 EXECUTE ta_sin_sel(110); 
	 EXECUTE ta_sin_sel(111); 
	 EXECUTE ta_sin_sel(112); 
	 EXECUTE ta_sin_sel(113); 
	 EXECUTE ta_sin_sel(114); 
	 EXECUTE ta_sin_sel(115); 
	 EXECUTE ta_sin_sel(116); 
	 EXECUTE ta_sin_sel(117);
	 EXECUTE ta_sin_sel(118); 
	 EXECUTE ta_sin_sel(119); 

	 DEALLOCATE ta_sin_sel;

	 update results 
	 set end_time = clock_timestamp()
	 where trial = (select max(trial) from results where end_time is null);


--larger scale single
	INSERT INTO results(details,cnt)
	values ('single table select', 200);

	 SELECT * FROM ta where a = 100; 
	 SELECT * FROM ta where a = 101; 
	 SELECT * FROM ta where a = 102; 
	 SELECT * FROM ta where a = 103; 
	 SELECT * FROM ta where a = 104; 
	 SELECT * FROM ta where a = 105; 
	 SELECT * FROM ta where a = 106; 
	 SELECT * FROM ta where a = 107;
	 SELECT * FROM ta where a = 108; 
	 SELECT * FROM ta where a = 109; 
	 SELECT * FROM ta where a = 110; 
	 SELECT * FROM ta where a = 111; 
	 SELECT * FROM ta where a = 112; 
	 SELECT * FROM ta where a = 113; 
	 SELECT * FROM ta where a = 114; 
	 SELECT * FROM ta where a = 115; 
	 SELECT * FROM ta where a = 116; 
	 SELECT * FROM ta where a = 117;
	 SELECT * FROM ta where a = 118; 
	 SELECT * FROM ta where a = 119; 
	 SELECT * FROM ta where a = 120; 
	 SELECT * FROM ta where a = 121; 
	 SELECT * FROM ta where a = 122; 
	 SELECT * FROM ta where a = 123; 
	 SELECT * FROM ta where a = 124; 
	 SELECT * FROM ta where a = 125; 
	 SELECT * FROM ta where a = 126; 
	 SELECT * FROM ta where a = 127;
	 SELECT * FROM ta where a = 128; 
	 SELECT * FROM ta where a = 129; 
	 SELECT * FROM ta where a = 130; 
	 SELECT * FROM ta where a = 131; 
	 SELECT * FROM ta where a = 132; 
	 SELECT * FROM ta where a = 133; 
	 SELECT * FROM ta where a = 134; 
	 SELECT * FROM ta where a = 135; 
	 SELECT * FROM ta where a = 136; 
	 SELECT * FROM ta where a = 137;
	 SELECT * FROM ta where a = 138; 
	 SELECT * FROM ta where a = 139; 
	 SELECT * FROM ta where a = 140; 
	 SELECT * FROM ta where a = 141; 
	 SELECT * FROM ta where a = 142; 
	 SELECT * FROM ta where a = 143; 
	 SELECT * FROM ta where a = 144; 
	 SELECT * FROM ta where a = 145; 
	 SELECT * FROM ta where a = 146; 
	 SELECT * FROM ta where a = 147;
	 SELECT * FROM ta where a = 148; 
	 SELECT * FROM ta where a = 149; 
	 SELECT * FROM ta where a = 150; 
	 SELECT * FROM ta where a = 151; 
	 SELECT * FROM ta where a = 152; 
	 SELECT * FROM ta where a = 153; 
	 SELECT * FROM ta where a = 154; 
	 SELECT * FROM ta where a = 155; 
	 SELECT * FROM ta where a = 156; 
	 SELECT * FROM ta where a = 157;
	 SELECT * FROM ta where a = 158; 
	 SELECT * FROM ta where a = 159; 
	 SELECT * FROM ta where a = 160; 
	 SELECT * FROM ta where a = 161; 
	 SELECT * FROM ta where a = 162; 
	 SELECT * FROM ta where a = 163; 
	 SELECT * FROM ta where a = 164; 
	 SELECT * FROM ta where a = 165; 
	 SELECT * FROM ta where a = 166; 
	 SELECT * FROM ta where a = 167;
	 SELECT * FROM ta where a = 168; 
	 SELECT * FROM ta where a = 169; 
	 SELECT * FROM ta where a = 170; 
	 SELECT * FROM ta where a = 171; 
	 SELECT * FROM ta where a = 172; 
	 SELECT * FROM ta where a = 173; 
	 SELECT * FROM ta where a = 174; 
	 SELECT * FROM ta where a = 175; 
	 SELECT * FROM ta where a = 176; 
	 SELECT * FROM ta where a = 177;
	 SELECT * FROM ta where a = 178; 
	 SELECT * FROM ta where a = 179; 
	 SELECT * FROM ta where a = 180; 
	 SELECT * FROM ta where a = 181; 
	 SELECT * FROM ta where a = 182; 
	 SELECT * FROM ta where a = 183; 
	 SELECT * FROM ta where a = 184; 
	 SELECT * FROM ta where a = 185; 
	 SELECT * FROM ta where a = 186; 
	 SELECT * FROM ta where a = 187;
	 SELECT * FROM ta where a = 188; 
	 SELECT * FROM ta where a = 189; 
	 SELECT * FROM ta where a = 190; 
	 SELECT * FROM ta where a = 191; 
	 SELECT * FROM ta where a = 192; 
	 SELECT * FROM ta where a = 193; 
	 SELECT * FROM ta where a = 194; 
	 SELECT * FROM ta where a = 195; 
	 SELECT * FROM ta where a = 196; 
	 SELECT * FROM ta where a = 197;
	 SELECT * FROM ta where a = 198; 
	 SELECT * FROM ta where a = 199; 
	 SELECT * FROM ta where a = 200; 
	 SELECT * FROM ta where a = 201; 
	 SELECT * FROM ta where a = 202; 
	 SELECT * FROM ta where a = 203; 
	 SELECT * FROM ta where a = 204; 
	 SELECT * FROM ta where a = 205; 
	 SELECT * FROM ta where a = 206; 
	 SELECT * FROM ta where a = 207;
	 SELECT * FROM ta where a = 208; 
	 SELECT * FROM ta where a = 209; 
	 SELECT * FROM ta where a = 210; 
	 SELECT * FROM ta where a = 211; 
	 SELECT * FROM ta where a = 212; 
	 SELECT * FROM ta where a = 213; 
	 SELECT * FROM ta where a = 214; 
	 SELECT * FROM ta where a = 215; 
	 SELECT * FROM ta where a = 216; 
	 SELECT * FROM ta where a = 217;
	 SELECT * FROM ta where a = 218; 
	 SELECT * FROM ta where a = 219; 
	 SELECT * FROM ta where a = 220; 
	 SELECT * FROM ta where a = 221; 
	 SELECT * FROM ta where a = 222; 
	 SELECT * FROM ta where a = 223; 
	 SELECT * FROM ta where a = 224; 
	 SELECT * FROM ta where a = 225; 
	 SELECT * FROM ta where a = 226; 
	 SELECT * FROM ta where a = 227;
	 SELECT * FROM ta where a = 228; 
	 SELECT * FROM ta where a = 229; 
	 SELECT * FROM ta where a = 230; 
	 SELECT * FROM ta where a = 231; 
	 SELECT * FROM ta where a = 232; 
	 SELECT * FROM ta where a = 233; 
	 SELECT * FROM ta where a = 234; 
	 SELECT * FROM ta where a = 235; 
	 SELECT * FROM ta where a = 236; 
	 SELECT * FROM ta where a = 237;
	 SELECT * FROM ta where a = 238; 
	 SELECT * FROM ta where a = 239; 
	 SELECT * FROM ta where a = 240; 
	 SELECT * FROM ta where a = 241; 
	 SELECT * FROM ta where a = 242; 
	 SELECT * FROM ta where a = 243; 
	 SELECT * FROM ta where a = 244; 
	 SELECT * FROM ta where a = 245; 
	 SELECT * FROM ta where a = 246; 
	 SELECT * FROM ta where a = 247;
	 SELECT * FROM ta where a = 248; 
	 SELECT * FROM ta where a = 249; 
	 SELECT * FROM ta where a = 250; 
	 SELECT * FROM ta where a = 251; 
	 SELECT * FROM ta where a = 252; 
	 SELECT * FROM ta where a = 253; 
	 SELECT * FROM ta where a = 254; 
	 SELECT * FROM ta where a = 255; 
	 SELECT * FROM ta where a = 256; 
	 SELECT * FROM ta where a = 257;
	 SELECT * FROM ta where a = 258; 
	 SELECT * FROM ta where a = 259; 
	 SELECT * FROM ta where a = 260; 
	 SELECT * FROM ta where a = 261; 
	 SELECT * FROM ta where a = 262; 
	 SELECT * FROM ta where a = 263; 
	 SELECT * FROM ta where a = 264; 
	 SELECT * FROM ta where a = 265; 
	 SELECT * FROM ta where a = 266; 
	 SELECT * FROM ta where a = 267;
	 SELECT * FROM ta where a = 268; 
	 SELECT * FROM ta where a = 269; 
	 SELECT * FROM ta where a = 270; 
	 SELECT * FROM ta where a = 271; 
	 SELECT * FROM ta where a = 272; 
	 SELECT * FROM ta where a = 273; 
	 SELECT * FROM ta where a = 274; 
	 SELECT * FROM ta where a = 275; 
	 SELECT * FROM ta where a = 276; 
	 SELECT * FROM ta where a = 277;
	 SELECT * FROM ta where a = 278; 
	 SELECT * FROM ta where a = 279; 
	 SELECT * FROM ta where a = 280; 
	 SELECT * FROM ta where a = 281; 
	 SELECT * FROM ta where a = 282; 
	 SELECT * FROM ta where a = 283; 
	 SELECT * FROM ta where a = 284; 
	 SELECT * FROM ta where a = 285; 
	 SELECT * FROM ta where a = 286; 
	 SELECT * FROM ta where a = 287;
	 SELECT * FROM ta where a = 288; 
	 SELECT * FROM ta where a = 289; 
	 SELECT * FROM ta where a = 290; 
	 SELECT * FROM ta where a = 291; 
	 SELECT * FROM ta where a = 292; 
	 SELECT * FROM ta where a = 293; 
	 SELECT * FROM ta where a = 294; 
	 SELECT * FROM ta where a = 295; 
	 SELECT * FROM ta where a = 296; 
	 SELECT * FROM ta where a = 297;
	 SELECT * FROM ta where a = 298; 
	 SELECT * FROM ta where a = 299; 


	 update results 
	 set end_time = clock_timestamp() 
	 where trial = (select max(trial) from results where end_time is null);

	INSERT INTO results(details,cnt)
	values ('prepared single table select', 200);

--larger number of prepared singles
	PREPARE ta_sin_sel(integer) AS
	 SELECT * FROM ta where a = $1;

	 EXECUTE ta_sin_sel(100); 
	 EXECUTE ta_sin_sel(101); 
	 EXECUTE ta_sin_sel(102); 
	 EXECUTE ta_sin_sel(103); 
	 EXECUTE ta_sin_sel(104); 
	 EXECUTE ta_sin_sel(105); 
	 EXECUTE ta_sin_sel(106); 
	 EXECUTE ta_sin_sel(107);
	 EXECUTE ta_sin_sel(108); 
	 EXECUTE ta_sin_sel(109); 
	 EXECUTE ta_sin_sel(110); 
	 EXECUTE ta_sin_sel(111); 
	 EXECUTE ta_sin_sel(112); 
	 EXECUTE ta_sin_sel(113); 
	 EXECUTE ta_sin_sel(114); 
	 EXECUTE ta_sin_sel(115); 
	 EXECUTE ta_sin_sel(116); 
	 EXECUTE ta_sin_sel(117);
	 EXECUTE ta_sin_sel(118); 
	 EXECUTE ta_sin_sel(119); 
	 EXECUTE ta_sin_sel(120); 
	 EXECUTE ta_sin_sel(121); 
	 EXECUTE ta_sin_sel(122); 
	 EXECUTE ta_sin_sel(123); 
	 EXECUTE ta_sin_sel(124); 
	 EXECUTE ta_sin_sel(125); 
	 EXECUTE ta_sin_sel(126); 
	 EXECUTE ta_sin_sel(127);
	 EXECUTE ta_sin_sel(128); 
	 EXECUTE ta_sin_sel(129); 
	 EXECUTE ta_sin_sel(130); 
	 EXECUTE ta_sin_sel(131); 
	 EXECUTE ta_sin_sel(132); 
	 EXECUTE ta_sin_sel(133); 
	 EXECUTE ta_sin_sel(134); 
	 EXECUTE ta_sin_sel(135); 
	 EXECUTE ta_sin_sel(136); 
	 EXECUTE ta_sin_sel(137);
	 EXECUTE ta_sin_sel(138); 
	 EXECUTE ta_sin_sel(139); 
	 EXECUTE ta_sin_sel(140); 
	 EXECUTE ta_sin_sel(141); 
	 EXECUTE ta_sin_sel(142); 
	 EXECUTE ta_sin_sel(143); 
	 EXECUTE ta_sin_sel(144); 
	 EXECUTE ta_sin_sel(145); 
	 EXECUTE ta_sin_sel(146); 
	 EXECUTE ta_sin_sel(147);
	 EXECUTE ta_sin_sel(148); 
	 EXECUTE ta_sin_sel(149); 
	 EXECUTE ta_sin_sel(150); 
	 EXECUTE ta_sin_sel(151); 
	 EXECUTE ta_sin_sel(152); 
	 EXECUTE ta_sin_sel(153); 
	 EXECUTE ta_sin_sel(154); 
	 EXECUTE ta_sin_sel(155); 
	 EXECUTE ta_sin_sel(156); 
	 EXECUTE ta_sin_sel(157);
	 EXECUTE ta_sin_sel(158); 
	 EXECUTE ta_sin_sel(159); 
	 EXECUTE ta_sin_sel(160); 
	 EXECUTE ta_sin_sel(161); 
	 EXECUTE ta_sin_sel(162); 
	 EXECUTE ta_sin_sel(163); 
	 EXECUTE ta_sin_sel(164); 
	 EXECUTE ta_sin_sel(165); 
	 EXECUTE ta_sin_sel(166); 
	 EXECUTE ta_sin_sel(167);
	 EXECUTE ta_sin_sel(168); 
	 EXECUTE ta_sin_sel(169); 
	 EXECUTE ta_sin_sel(170); 
	 EXECUTE ta_sin_sel(171); 
	 EXECUTE ta_sin_sel(172); 
	 EXECUTE ta_sin_sel(173); 
	 EXECUTE ta_sin_sel(174); 
	 EXECUTE ta_sin_sel(175); 
	 EXECUTE ta_sin_sel(176); 
	 EXECUTE ta_sin_sel(177);
	 EXECUTE ta_sin_sel(178); 
	 EXECUTE ta_sin_sel(179); 
	 EXECUTE ta_sin_sel(180); 
	 EXECUTE ta_sin_sel(181); 
	 EXECUTE ta_sin_sel(182); 
	 EXECUTE ta_sin_sel(183); 
	 EXECUTE ta_sin_sel(184); 
	 EXECUTE ta_sin_sel(185); 
	 EXECUTE ta_sin_sel(186); 
	 EXECUTE ta_sin_sel(187);
	 EXECUTE ta_sin_sel(188); 
	 EXECUTE ta_sin_sel(189); 
	 EXECUTE ta_sin_sel(190); 
	 EXECUTE ta_sin_sel(191); 
	 EXECUTE ta_sin_sel(192); 
	 EXECUTE ta_sin_sel(193); 
	 EXECUTE ta_sin_sel(194); 
	 EXECUTE ta_sin_sel(195); 
	 EXECUTE ta_sin_sel(196); 
	 EXECUTE ta_sin_sel(197);
	 EXECUTE ta_sin_sel(198); 
	 EXECUTE ta_sin_sel(199); 
	 EXECUTE ta_sin_sel(200); 
	 EXECUTE ta_sin_sel(201); 
	 EXECUTE ta_sin_sel(202); 
	 EXECUTE ta_sin_sel(203); 
	 EXECUTE ta_sin_sel(204); 
	 EXECUTE ta_sin_sel(205); 
	 EXECUTE ta_sin_sel(206); 
	 EXECUTE ta_sin_sel(207);
	 EXECUTE ta_sin_sel(208); 
	 EXECUTE ta_sin_sel(209); 
	 EXECUTE ta_sin_sel(210); 
	 EXECUTE ta_sin_sel(211); 
	 EXECUTE ta_sin_sel(212); 
	 EXECUTE ta_sin_sel(213); 
	 EXECUTE ta_sin_sel(214); 
	 EXECUTE ta_sin_sel(215); 
	 EXECUTE ta_sin_sel(216); 
	 EXECUTE ta_sin_sel(217);
	 EXECUTE ta_sin_sel(218); 
	 EXECUTE ta_sin_sel(219); 
	 EXECUTE ta_sin_sel(220); 
	 EXECUTE ta_sin_sel(221); 
	 EXECUTE ta_sin_sel(222); 
	 EXECUTE ta_sin_sel(223); 
	 EXECUTE ta_sin_sel(224); 
	 EXECUTE ta_sin_sel(225); 
	 EXECUTE ta_sin_sel(226); 
	 EXECUTE ta_sin_sel(227);
	 EXECUTE ta_sin_sel(228); 
	 EXECUTE ta_sin_sel(229); 
	 EXECUTE ta_sin_sel(230); 
	 EXECUTE ta_sin_sel(231); 
	 EXECUTE ta_sin_sel(232); 
	 EXECUTE ta_sin_sel(233); 
	 EXECUTE ta_sin_sel(234); 
	 EXECUTE ta_sin_sel(235); 
	 EXECUTE ta_sin_sel(236); 
	 EXECUTE ta_sin_sel(237);
	 EXECUTE ta_sin_sel(238); 
	 EXECUTE ta_sin_sel(239); 
	 EXECUTE ta_sin_sel(240); 
	 EXECUTE ta_sin_sel(241); 
	 EXECUTE ta_sin_sel(242); 
	 EXECUTE ta_sin_sel(243); 
	 EXECUTE ta_sin_sel(244); 
	 EXECUTE ta_sin_sel(245); 
	 EXECUTE ta_sin_sel(246); 
	 EXECUTE ta_sin_sel(247);
	 EXECUTE ta_sin_sel(248); 
	 EXECUTE ta_sin_sel(249); 
	 EXECUTE ta_sin_sel(250); 
	 EXECUTE ta_sin_sel(251); 
	 EXECUTE ta_sin_sel(252); 
	 EXECUTE ta_sin_sel(253); 
	 EXECUTE ta_sin_sel(254); 
	 EXECUTE ta_sin_sel(255); 
	 EXECUTE ta_sin_sel(256); 
	 EXECUTE ta_sin_sel(257);
	 EXECUTE ta_sin_sel(258); 
	 EXECUTE ta_sin_sel(259); 
	 EXECUTE ta_sin_sel(260); 
	 EXECUTE ta_sin_sel(261); 
	 EXECUTE ta_sin_sel(262); 
	 EXECUTE ta_sin_sel(263); 
	 EXECUTE ta_sin_sel(264); 
	 EXECUTE ta_sin_sel(265); 
	 EXECUTE ta_sin_sel(266); 
	 EXECUTE ta_sin_sel(267);
	 EXECUTE ta_sin_sel(268); 
	 EXECUTE ta_sin_sel(269); 
	 EXECUTE ta_sin_sel(270); 
	 EXECUTE ta_sin_sel(271); 
	 EXECUTE ta_sin_sel(272); 
	 EXECUTE ta_sin_sel(273); 
	 EXECUTE ta_sin_sel(274); 
	 EXECUTE ta_sin_sel(275); 
	 EXECUTE ta_sin_sel(276); 
	 EXECUTE ta_sin_sel(277);
	 EXECUTE ta_sin_sel(278); 
	 EXECUTE ta_sin_sel(279); 
	 EXECUTE ta_sin_sel(280); 
	 EXECUTE ta_sin_sel(281); 
	 EXECUTE ta_sin_sel(282); 
	 EXECUTE ta_sin_sel(283); 
	 EXECUTE ta_sin_sel(284); 
	 EXECUTE ta_sin_sel(285); 
	 EXECUTE ta_sin_sel(286); 
	 EXECUTE ta_sin_sel(287);
	 EXECUTE ta_sin_sel(288); 
	 EXECUTE ta_sin_sel(289); 
	 EXECUTE ta_sin_sel(290); 
	 EXECUTE ta_sin_sel(291); 
	 EXECUTE ta_sin_sel(292); 
	 EXECUTE ta_sin_sel(293); 
	 EXECUTE ta_sin_sel(294); 
	 EXECUTE ta_sin_sel(295); 
	 EXECUTE ta_sin_sel(296); 
	 EXECUTE ta_sin_sel(297);
	 EXECUTE ta_sin_sel(298); 
	 EXECUTE ta_sin_sel(299); 

	 DEALLOCATE ta_sin_sel;

	  update results 
	 set end_time = clock_timestamp()
	 where trial = (select max(trial) from results where end_time is null);



--more complicated select  - 20
	INSERT INTO results(details,cnt)
	values ('two table select', 20);

	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 100 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 101 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 102 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 103 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 104 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 105 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 106 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 107 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 108 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 109 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 110 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 111 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 112 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 113 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 114 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 115 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 116 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 117 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 118 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 119 group by ta;

	      
	 update results 
	 set end_time = clock_timestamp()
	 where trial = (select max(trial) from results where end_time is null);


--more complicated prepared select
	INSERT INTO results(details,cnt)
	values ('prepared two table select', 20);

	PREPARE ta_two_sel(integer) AS
	 select ta, sum(tb.c)
	 from ta
		join tb on ta.b = tb.b
	 where ta.a = $1
	 group by ta;
	      
	 EXECUTE ta_two_sel(100); 
	 EXECUTE ta_two_sel(101); 
	 EXECUTE ta_two_sel(102); 
	 EXECUTE ta_two_sel(103); 
	 EXECUTE ta_two_sel(104); 
	 EXECUTE ta_two_sel(105); 
	 EXECUTE ta_two_sel(106); 
	 EXECUTE ta_two_sel(107);
	 EXECUTE ta_two_sel(108); 
	 EXECUTE ta_two_sel(109); 
	 EXECUTE ta_two_sel(100); 
	 EXECUTE ta_two_sel(111); 
	 EXECUTE ta_two_sel(112); 
	 EXECUTE ta_two_sel(113); 
	 EXECUTE ta_two_sel(114); 
	 EXECUTE ta_two_sel(115); 
	 EXECUTE ta_two_sel(116); 
	 EXECUTE ta_two_sel(117);
	 EXECUTE ta_two_sel(118); 
	 EXECUTE ta_two_sel(119); 

	 DEALLOCATE ta_two_sel;

	 update results 
	 set end_time = clock_timestamp()
	 where trial = (select max(trial) from results where end_time is null);


--more complicated select- 200
	INSERT INTO results(details,cnt)
	values ('two table select', 200);

	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 100 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 101 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 102 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 103 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 104 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 105 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 106 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 107 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 108 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 109 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 110 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 111 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 112 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 113 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 114 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 115 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 116 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 117 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 118 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 119 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 120 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 121 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 122 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 123 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 124 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 125 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 126 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 127 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 128 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 129 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 130 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 131 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 132 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 133 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 134 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 135 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 136 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 137 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 138 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 139 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 140 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 141 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 142 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 143 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 144 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 145 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 146 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 147 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 148 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 149 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 150 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 151 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 152 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 153 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 154 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 155 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 156 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 157 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 158 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 159 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 160 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 161 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 162 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 163 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 164 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 165 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 166 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 167 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 168 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 169 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 170 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 171 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 172 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 173 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 174 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 175 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 176 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 177 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 178 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 179 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 180 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 181 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 182 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 183 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 184 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 185 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 186 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 187 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 188 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 189 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 190 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 191 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 192 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 193 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 194 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 195 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 196 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 197 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 198 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 199 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 100 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 101 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 102 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 103 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 104 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 105 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 106 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 107 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 108 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 109 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 110 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 111 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 112 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 113 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 114 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 115 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 116 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 117 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 118 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 119 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 120 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 121 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 122 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 123 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 124 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 125 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 126 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 127 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 128 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 129 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 130 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 131 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 132 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 133 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 134 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 135 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 136 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 137 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 138 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 139 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 140 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 141 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 142 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 143 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 144 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 145 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 146 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 147 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 148 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 149 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 150 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 151 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 152 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 153 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 154 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 155 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 156 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 157 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 158 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 159 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 160 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 161 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 162 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 163 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 164 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 165 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 166 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 167 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 168 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 169 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 170 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 171 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 172 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 173 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 174 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 175 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 176 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 177 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 178 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 179 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 180 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 181 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 182 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 183 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 184 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 185 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 186 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 187 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 188 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 189 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 190 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 191 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 192 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 193 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 194 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 195 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 196 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 197 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 198 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 199 group by ta;

	      
	 update results 
	 set end_time = clock_timestamp()
	 where trial = (select max(trial) from results where end_time is null);

--larger scale more complicted prepare - 200
	INSERT INTO results(details,cnt)
	values ('prepared two table select', 200);

	PREPARE ta_two_sel(integer) AS
	 select ta, sum(tb.c)
	 from ta
		join tb on ta.b = tb.b
	 where ta.a = $1
	 group by ta;
	      
	 EXECUTE ta_two_sel(100); 
	 EXECUTE ta_two_sel(101); 
	 EXECUTE ta_two_sel(102); 
	 EXECUTE ta_two_sel(103); 
	 EXECUTE ta_two_sel(104); 
	 EXECUTE ta_two_sel(105); 
	 EXECUTE ta_two_sel(106); 
	 EXECUTE ta_two_sel(107);
	 EXECUTE ta_two_sel(108); 
	 EXECUTE ta_two_sel(109); 
	 EXECUTE ta_two_sel(100); 
	 EXECUTE ta_two_sel(111); 
	 EXECUTE ta_two_sel(112); 
	 EXECUTE ta_two_sel(113); 
	 EXECUTE ta_two_sel(114); 
	 EXECUTE ta_two_sel(115); 
	 EXECUTE ta_two_sel(116); 
	 EXECUTE ta_two_sel(117);
	 EXECUTE ta_two_sel(118); 
	 EXECUTE ta_two_sel(119); 
	 EXECUTE ta_two_sel(120); 
	 EXECUTE ta_two_sel(121); 
	 EXECUTE ta_two_sel(122); 
	 EXECUTE ta_two_sel(123); 
	 EXECUTE ta_two_sel(124); 
	 EXECUTE ta_two_sel(125); 
	 EXECUTE ta_two_sel(126); 
	 EXECUTE ta_two_sel(127);
	 EXECUTE ta_two_sel(128); 
	 EXECUTE ta_two_sel(129); 
	 EXECUTE ta_two_sel(130); 
	 EXECUTE ta_two_sel(131); 
	 EXECUTE ta_two_sel(132); 
	 EXECUTE ta_two_sel(133); 
	 EXECUTE ta_two_sel(134); 
	 EXECUTE ta_two_sel(135); 
	 EXECUTE ta_two_sel(136); 
	 EXECUTE ta_two_sel(137);
	 EXECUTE ta_two_sel(138); 
	 EXECUTE ta_two_sel(139); 
	 EXECUTE ta_two_sel(140); 
	 EXECUTE ta_two_sel(141); 
	 EXECUTE ta_two_sel(142); 
	 EXECUTE ta_two_sel(143); 
	 EXECUTE ta_two_sel(144); 
	 EXECUTE ta_two_sel(145); 
	 EXECUTE ta_two_sel(146); 
	 EXECUTE ta_two_sel(147);
	 EXECUTE ta_two_sel(148); 
	 EXECUTE ta_two_sel(149); 
	 EXECUTE ta_two_sel(150); 
	 EXECUTE ta_two_sel(151); 
	 EXECUTE ta_two_sel(152); 
	 EXECUTE ta_two_sel(153); 
	 EXECUTE ta_two_sel(154); 
	 EXECUTE ta_two_sel(155); 
	 EXECUTE ta_two_sel(156); 
	 EXECUTE ta_two_sel(157);
	 EXECUTE ta_two_sel(158); 
	 EXECUTE ta_two_sel(159); 
	 EXECUTE ta_two_sel(160); 
	 EXECUTE ta_two_sel(161); 
	 EXECUTE ta_two_sel(162); 
	 EXECUTE ta_two_sel(163); 
	 EXECUTE ta_two_sel(164); 
	 EXECUTE ta_two_sel(165); 
	 EXECUTE ta_two_sel(166); 
	 EXECUTE ta_two_sel(167);
	 EXECUTE ta_two_sel(168); 
	 EXECUTE ta_two_sel(169); 
	 EXECUTE ta_two_sel(170); 
	 EXECUTE ta_two_sel(171); 
	 EXECUTE ta_two_sel(172); 
	 EXECUTE ta_two_sel(173); 
	 EXECUTE ta_two_sel(174); 
	 EXECUTE ta_two_sel(175); 
	 EXECUTE ta_two_sel(176); 
	 EXECUTE ta_two_sel(177);
	 EXECUTE ta_two_sel(178); 
	 EXECUTE ta_two_sel(179); 
	 EXECUTE ta_two_sel(180); 
	 EXECUTE ta_two_sel(181); 
	 EXECUTE ta_two_sel(182); 
	 EXECUTE ta_two_sel(183); 
	 EXECUTE ta_two_sel(184); 
	 EXECUTE ta_two_sel(185); 
	 EXECUTE ta_two_sel(186); 
	 EXECUTE ta_two_sel(187);
	 EXECUTE ta_two_sel(188); 
	 EXECUTE ta_two_sel(189); 
	 EXECUTE ta_two_sel(190); 
	 EXECUTE ta_two_sel(191); 
	 EXECUTE ta_two_sel(192); 
	 EXECUTE ta_two_sel(193); 
	 EXECUTE ta_two_sel(194); 
	 EXECUTE ta_two_sel(195); 
	 EXECUTE ta_two_sel(196); 
	 EXECUTE ta_two_sel(197);
	 EXECUTE ta_two_sel(198); 
	 EXECUTE ta_two_sel(199); 
	 EXECUTE ta_two_sel(100); 
	 EXECUTE ta_two_sel(101); 
	 EXECUTE ta_two_sel(102); 
	 EXECUTE ta_two_sel(103); 
	 EXECUTE ta_two_sel(104); 
	 EXECUTE ta_two_sel(105); 
	 EXECUTE ta_two_sel(106); 
	 EXECUTE ta_two_sel(107);
	 EXECUTE ta_two_sel(108); 
	 EXECUTE ta_two_sel(109); 
	 EXECUTE ta_two_sel(100); 
	 EXECUTE ta_two_sel(111); 
	 EXECUTE ta_two_sel(112); 
	 EXECUTE ta_two_sel(113); 
	 EXECUTE ta_two_sel(114); 
	 EXECUTE ta_two_sel(115); 
	 EXECUTE ta_two_sel(116); 
	 EXECUTE ta_two_sel(117);
	 EXECUTE ta_two_sel(118); 
	 EXECUTE ta_two_sel(119); 
	 EXECUTE ta_two_sel(120); 
	 EXECUTE ta_two_sel(121); 
	 EXECUTE ta_two_sel(122); 
	 EXECUTE ta_two_sel(123); 
	 EXECUTE ta_two_sel(124); 
	 EXECUTE ta_two_sel(125); 
	 EXECUTE ta_two_sel(126); 
	 EXECUTE ta_two_sel(127);
	 EXECUTE ta_two_sel(128); 
	 EXECUTE ta_two_sel(129); 
	 EXECUTE ta_two_sel(130); 
	 EXECUTE ta_two_sel(131); 
	 EXECUTE ta_two_sel(132); 
	 EXECUTE ta_two_sel(133); 
	 EXECUTE ta_two_sel(134); 
	 EXECUTE ta_two_sel(135); 
	 EXECUTE ta_two_sel(136); 
	 EXECUTE ta_two_sel(137);
	 EXECUTE ta_two_sel(138); 
	 EXECUTE ta_two_sel(139); 
	 EXECUTE ta_two_sel(140); 
	 EXECUTE ta_two_sel(141); 
	 EXECUTE ta_two_sel(142); 
	 EXECUTE ta_two_sel(143); 
	 EXECUTE ta_two_sel(144); 
	 EXECUTE ta_two_sel(145); 
	 EXECUTE ta_two_sel(146); 
	 EXECUTE ta_two_sel(147);
	 EXECUTE ta_two_sel(148); 
	 EXECUTE ta_two_sel(149); 
	 EXECUTE ta_two_sel(150); 
	 EXECUTE ta_two_sel(151); 
	 EXECUTE ta_two_sel(152); 
	 EXECUTE ta_two_sel(153); 
	 EXECUTE ta_two_sel(154); 
	 EXECUTE ta_two_sel(155); 
	 EXECUTE ta_two_sel(156); 
	 EXECUTE ta_two_sel(157);
	 EXECUTE ta_two_sel(158); 
	 EXECUTE ta_two_sel(159); 
	 EXECUTE ta_two_sel(160); 
	 EXECUTE ta_two_sel(161); 
	 EXECUTE ta_two_sel(162); 
	 EXECUTE ta_two_sel(163); 
	 EXECUTE ta_two_sel(164); 
	 EXECUTE ta_two_sel(165); 
	 EXECUTE ta_two_sel(166); 
	 EXECUTE ta_two_sel(167);
	 EXECUTE ta_two_sel(168); 
	 EXECUTE ta_two_sel(169); 
	 EXECUTE ta_two_sel(170); 
	 EXECUTE ta_two_sel(171); 
	 EXECUTE ta_two_sel(172); 
	 EXECUTE ta_two_sel(173); 
	 EXECUTE ta_two_sel(174); 
	 EXECUTE ta_two_sel(175); 
	 EXECUTE ta_two_sel(176); 
	 EXECUTE ta_two_sel(177);
	 EXECUTE ta_two_sel(178); 
	 EXECUTE ta_two_sel(179); 
	 EXECUTE ta_two_sel(180); 
	 EXECUTE ta_two_sel(181); 
	 EXECUTE ta_two_sel(182); 
	 EXECUTE ta_two_sel(183); 
	 EXECUTE ta_two_sel(184); 
	 EXECUTE ta_two_sel(185); 
	 EXECUTE ta_two_sel(186); 
	 EXECUTE ta_two_sel(187);
	 EXECUTE ta_two_sel(188); 
	 EXECUTE ta_two_sel(189); 
	 EXECUTE ta_two_sel(190); 
	 EXECUTE ta_two_sel(191); 
	 EXECUTE ta_two_sel(192); 
	 EXECUTE ta_two_sel(193); 
	 EXECUTE ta_two_sel(194); 
	 EXECUTE ta_two_sel(195); 
	 EXECUTE ta_two_sel(196); 
	 EXECUTE ta_two_sel(197);
	 EXECUTE ta_two_sel(198); 
	 EXECUTE ta_two_sel(199); 



	 DEALLOCATE ta_two_sel;

	 update results 
	 set end_time = clock_timestamp()
	 where trial = (select max(trial) from results where end_time is null);


/*
--simple
EXPLAIN ANALYZE SELECT * FROM ta where a = 100; 
	 

--more complex
EXPLAIN ANALYZE select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 130 group by ta;
*/

--switch testing order to check caching
--small scale single

	--new trial
	INSERT INTO results(details,cnt)
	values ('prepared single table select', 20);

 	PREPARE ta_sin_sel(integer) AS
 	 SELECT * FROM ta where a = $1;

	 EXECUTE ta_sin_sel(100); 
	 EXECUTE ta_sin_sel(101); 
	 EXECUTE ta_sin_sel(102); 
	 EXECUTE ta_sin_sel(103); 
	 EXECUTE ta_sin_sel(104); 
	 EXECUTE ta_sin_sel(105); 
	 EXECUTE ta_sin_sel(106); 
	 EXECUTE ta_sin_sel(107);
	 EXECUTE ta_sin_sel(108); 
	 EXECUTE ta_sin_sel(109); 
	 EXECUTE ta_sin_sel(110); 
	 EXECUTE ta_sin_sel(111); 
	 EXECUTE ta_sin_sel(112); 
	 EXECUTE ta_sin_sel(113); 
	 EXECUTE ta_sin_sel(114); 
	 EXECUTE ta_sin_sel(115); 
	 EXECUTE ta_sin_sel(116); 
	 EXECUTE ta_sin_sel(117);
	 EXECUTE ta_sin_sel(118); 
	 EXECUTE ta_sin_sel(119); 

	 DEALLOCATE ta_sin_sel;

	 update results 
	 set end_time = clock_timestamp()
	 where trial = (select max(trial) from results where end_time is null);

	INSERT INTO results(details,cnt)
	values ('single table select', 20);

	 SELECT * FROM ta where a = 100; 
	 SELECT * FROM ta where a = 101; 
	 SELECT * FROM ta where a = 102; 
	 SELECT * FROM ta where a = 103; 
	 SELECT * FROM ta where a = 104; 
	 SELECT * FROM ta where a = 105; 
	 SELECT * FROM ta where a = 106; 
	 SELECT * FROM ta where a = 107;
	 SELECT * FROM ta where a = 108; 
	 SELECT * FROM ta where a = 109; 
	 SELECT * FROM ta where a = 110; 
	 SELECT * FROM ta where a = 111; 
	 SELECT * FROM ta where a = 112; 
	 SELECT * FROM ta where a = 113; 
	 SELECT * FROM ta where a = 114; 
	 SELECT * FROM ta where a = 115; 
	 SELECT * FROM ta where a = 116; 
	 SELECT * FROM ta where a = 117;
	 SELECT * FROM ta where a = 118; 
	 SELECT * FROM ta where a = 119; 


	 update results 
	 set end_time = clock_timestamp() 
	 where trial = (select max(trial) from results where end_time is null);


--larger scale singles
	INSERT INTO results(details,cnt)
	values ('prepared single table select', 200);

	PREPARE ta_sin_sel(integer) AS
	 SELECT * FROM ta where a = $1;

	 EXECUTE ta_sin_sel(100); 
	 EXECUTE ta_sin_sel(101); 
	 EXECUTE ta_sin_sel(102); 
	 EXECUTE ta_sin_sel(103); 
	 EXECUTE ta_sin_sel(104); 
	 EXECUTE ta_sin_sel(105); 
	 EXECUTE ta_sin_sel(106); 
	 EXECUTE ta_sin_sel(107);
	 EXECUTE ta_sin_sel(108); 
	 EXECUTE ta_sin_sel(109); 
	 EXECUTE ta_sin_sel(110); 
	 EXECUTE ta_sin_sel(111); 
	 EXECUTE ta_sin_sel(112); 
	 EXECUTE ta_sin_sel(113); 
	 EXECUTE ta_sin_sel(114); 
	 EXECUTE ta_sin_sel(115); 
	 EXECUTE ta_sin_sel(116); 
	 EXECUTE ta_sin_sel(117);
	 EXECUTE ta_sin_sel(118); 
	 EXECUTE ta_sin_sel(119); 
	 EXECUTE ta_sin_sel(120); 
	 EXECUTE ta_sin_sel(121); 
	 EXECUTE ta_sin_sel(122); 
	 EXECUTE ta_sin_sel(123); 
	 EXECUTE ta_sin_sel(124); 
	 EXECUTE ta_sin_sel(125); 
	 EXECUTE ta_sin_sel(126); 
	 EXECUTE ta_sin_sel(127);
	 EXECUTE ta_sin_sel(128); 
	 EXECUTE ta_sin_sel(129); 
	 EXECUTE ta_sin_sel(130); 
	 EXECUTE ta_sin_sel(131); 
	 EXECUTE ta_sin_sel(132); 
	 EXECUTE ta_sin_sel(133); 
	 EXECUTE ta_sin_sel(134); 
	 EXECUTE ta_sin_sel(135); 
	 EXECUTE ta_sin_sel(136); 
	 EXECUTE ta_sin_sel(137);
	 EXECUTE ta_sin_sel(138); 
	 EXECUTE ta_sin_sel(139); 
	 EXECUTE ta_sin_sel(140); 
	 EXECUTE ta_sin_sel(141); 
	 EXECUTE ta_sin_sel(142); 
	 EXECUTE ta_sin_sel(143); 
	 EXECUTE ta_sin_sel(144); 
	 EXECUTE ta_sin_sel(145); 
	 EXECUTE ta_sin_sel(146); 
	 EXECUTE ta_sin_sel(147);
	 EXECUTE ta_sin_sel(148); 
	 EXECUTE ta_sin_sel(149); 
	 EXECUTE ta_sin_sel(150); 
	 EXECUTE ta_sin_sel(151); 
	 EXECUTE ta_sin_sel(152); 
	 EXECUTE ta_sin_sel(153); 
	 EXECUTE ta_sin_sel(154); 
	 EXECUTE ta_sin_sel(155); 
	 EXECUTE ta_sin_sel(156); 
	 EXECUTE ta_sin_sel(157);
	 EXECUTE ta_sin_sel(158); 
	 EXECUTE ta_sin_sel(159); 
	 EXECUTE ta_sin_sel(160); 
	 EXECUTE ta_sin_sel(161); 
	 EXECUTE ta_sin_sel(162); 
	 EXECUTE ta_sin_sel(163); 
	 EXECUTE ta_sin_sel(164); 
	 EXECUTE ta_sin_sel(165); 
	 EXECUTE ta_sin_sel(166); 
	 EXECUTE ta_sin_sel(167);
	 EXECUTE ta_sin_sel(168); 
	 EXECUTE ta_sin_sel(169); 
	 EXECUTE ta_sin_sel(170); 
	 EXECUTE ta_sin_sel(171); 
	 EXECUTE ta_sin_sel(172); 
	 EXECUTE ta_sin_sel(173); 
	 EXECUTE ta_sin_sel(174); 
	 EXECUTE ta_sin_sel(175); 
	 EXECUTE ta_sin_sel(176); 
	 EXECUTE ta_sin_sel(177);
	 EXECUTE ta_sin_sel(178); 
	 EXECUTE ta_sin_sel(179); 
	 EXECUTE ta_sin_sel(180); 
	 EXECUTE ta_sin_sel(181); 
	 EXECUTE ta_sin_sel(182); 
	 EXECUTE ta_sin_sel(183); 
	 EXECUTE ta_sin_sel(184); 
	 EXECUTE ta_sin_sel(185); 
	 EXECUTE ta_sin_sel(186); 
	 EXECUTE ta_sin_sel(187);
	 EXECUTE ta_sin_sel(188); 
	 EXECUTE ta_sin_sel(189); 
	 EXECUTE ta_sin_sel(190); 
	 EXECUTE ta_sin_sel(191); 
	 EXECUTE ta_sin_sel(192); 
	 EXECUTE ta_sin_sel(193); 
	 EXECUTE ta_sin_sel(194); 
	 EXECUTE ta_sin_sel(195); 
	 EXECUTE ta_sin_sel(196); 
	 EXECUTE ta_sin_sel(197);
	 EXECUTE ta_sin_sel(198); 
	 EXECUTE ta_sin_sel(199); 
	 EXECUTE ta_sin_sel(200); 
	 EXECUTE ta_sin_sel(201); 
	 EXECUTE ta_sin_sel(202); 
	 EXECUTE ta_sin_sel(203); 
	 EXECUTE ta_sin_sel(204); 
	 EXECUTE ta_sin_sel(205); 
	 EXECUTE ta_sin_sel(206); 
	 EXECUTE ta_sin_sel(207);
	 EXECUTE ta_sin_sel(208); 
	 EXECUTE ta_sin_sel(209); 
	 EXECUTE ta_sin_sel(210); 
	 EXECUTE ta_sin_sel(211); 
	 EXECUTE ta_sin_sel(212); 
	 EXECUTE ta_sin_sel(213); 
	 EXECUTE ta_sin_sel(214); 
	 EXECUTE ta_sin_sel(215); 
	 EXECUTE ta_sin_sel(216); 
	 EXECUTE ta_sin_sel(217);
	 EXECUTE ta_sin_sel(218); 
	 EXECUTE ta_sin_sel(219); 
	 EXECUTE ta_sin_sel(220); 
	 EXECUTE ta_sin_sel(221); 
	 EXECUTE ta_sin_sel(222); 
	 EXECUTE ta_sin_sel(223); 
	 EXECUTE ta_sin_sel(224); 
	 EXECUTE ta_sin_sel(225); 
	 EXECUTE ta_sin_sel(226); 
	 EXECUTE ta_sin_sel(227);
	 EXECUTE ta_sin_sel(228); 
	 EXECUTE ta_sin_sel(229); 
	 EXECUTE ta_sin_sel(230); 
	 EXECUTE ta_sin_sel(231); 
	 EXECUTE ta_sin_sel(232); 
	 EXECUTE ta_sin_sel(233); 
	 EXECUTE ta_sin_sel(234); 
	 EXECUTE ta_sin_sel(235); 
	 EXECUTE ta_sin_sel(236); 
	 EXECUTE ta_sin_sel(237);
	 EXECUTE ta_sin_sel(238); 
	 EXECUTE ta_sin_sel(239); 
	 EXECUTE ta_sin_sel(240); 
	 EXECUTE ta_sin_sel(241); 
	 EXECUTE ta_sin_sel(242); 
	 EXECUTE ta_sin_sel(243); 
	 EXECUTE ta_sin_sel(244); 
	 EXECUTE ta_sin_sel(245); 
	 EXECUTE ta_sin_sel(246); 
	 EXECUTE ta_sin_sel(247);
	 EXECUTE ta_sin_sel(248); 
	 EXECUTE ta_sin_sel(249); 
	 EXECUTE ta_sin_sel(250); 
	 EXECUTE ta_sin_sel(251); 
	 EXECUTE ta_sin_sel(252); 
	 EXECUTE ta_sin_sel(253); 
	 EXECUTE ta_sin_sel(254); 
	 EXECUTE ta_sin_sel(255); 
	 EXECUTE ta_sin_sel(256); 
	 EXECUTE ta_sin_sel(257);
	 EXECUTE ta_sin_sel(258); 
	 EXECUTE ta_sin_sel(259); 
	 EXECUTE ta_sin_sel(260); 
	 EXECUTE ta_sin_sel(261); 
	 EXECUTE ta_sin_sel(262); 
	 EXECUTE ta_sin_sel(263); 
	 EXECUTE ta_sin_sel(264); 
	 EXECUTE ta_sin_sel(265); 
	 EXECUTE ta_sin_sel(266); 
	 EXECUTE ta_sin_sel(267);
	 EXECUTE ta_sin_sel(268); 
	 EXECUTE ta_sin_sel(269); 
	 EXECUTE ta_sin_sel(270); 
	 EXECUTE ta_sin_sel(271); 
	 EXECUTE ta_sin_sel(272); 
	 EXECUTE ta_sin_sel(273); 
	 EXECUTE ta_sin_sel(274); 
	 EXECUTE ta_sin_sel(275); 
	 EXECUTE ta_sin_sel(276); 
	 EXECUTE ta_sin_sel(277);
	 EXECUTE ta_sin_sel(278); 
	 EXECUTE ta_sin_sel(279); 
	 EXECUTE ta_sin_sel(280); 
	 EXECUTE ta_sin_sel(281); 
	 EXECUTE ta_sin_sel(282); 
	 EXECUTE ta_sin_sel(283); 
	 EXECUTE ta_sin_sel(284); 
	 EXECUTE ta_sin_sel(285); 
	 EXECUTE ta_sin_sel(286); 
	 EXECUTE ta_sin_sel(287);
	 EXECUTE ta_sin_sel(288); 
	 EXECUTE ta_sin_sel(289); 
	 EXECUTE ta_sin_sel(290); 
	 EXECUTE ta_sin_sel(291); 
	 EXECUTE ta_sin_sel(292); 
	 EXECUTE ta_sin_sel(293); 
	 EXECUTE ta_sin_sel(294); 
	 EXECUTE ta_sin_sel(295); 
	 EXECUTE ta_sin_sel(296); 
	 EXECUTE ta_sin_sel(297);
	 EXECUTE ta_sin_sel(298); 
	 EXECUTE ta_sin_sel(299); 

	 DEALLOCATE ta_sin_sel;

	  update results 
	 set end_time = clock_timestamp()
	 where trial = (select max(trial) from results where end_time is null);


	INSERT INTO results(details,cnt)
	values ('single table select', 200);

	 SELECT * FROM ta where a = 100; 
	 SELECT * FROM ta where a = 101; 
	 SELECT * FROM ta where a = 102; 
	 SELECT * FROM ta where a = 103; 
	 SELECT * FROM ta where a = 104; 
	 SELECT * FROM ta where a = 105; 
	 SELECT * FROM ta where a = 106; 
	 SELECT * FROM ta where a = 107;
	 SELECT * FROM ta where a = 108; 
	 SELECT * FROM ta where a = 109; 
	 SELECT * FROM ta where a = 110; 
	 SELECT * FROM ta where a = 111; 
	 SELECT * FROM ta where a = 112; 
	 SELECT * FROM ta where a = 113; 
	 SELECT * FROM ta where a = 114; 
	 SELECT * FROM ta where a = 115; 
	 SELECT * FROM ta where a = 116; 
	 SELECT * FROM ta where a = 117;
	 SELECT * FROM ta where a = 118; 
	 SELECT * FROM ta where a = 119; 
	 SELECT * FROM ta where a = 120; 
	 SELECT * FROM ta where a = 121; 
	 SELECT * FROM ta where a = 122; 
	 SELECT * FROM ta where a = 123; 
	 SELECT * FROM ta where a = 124; 
	 SELECT * FROM ta where a = 125; 
	 SELECT * FROM ta where a = 126; 
	 SELECT * FROM ta where a = 127;
	 SELECT * FROM ta where a = 128; 
	 SELECT * FROM ta where a = 129; 
	 SELECT * FROM ta where a = 130; 
	 SELECT * FROM ta where a = 131; 
	 SELECT * FROM ta where a = 132; 
	 SELECT * FROM ta where a = 133; 
	 SELECT * FROM ta where a = 134; 
	 SELECT * FROM ta where a = 135; 
	 SELECT * FROM ta where a = 136; 
	 SELECT * FROM ta where a = 137;
	 SELECT * FROM ta where a = 138; 
	 SELECT * FROM ta where a = 139; 
	 SELECT * FROM ta where a = 140; 
	 SELECT * FROM ta where a = 141; 
	 SELECT * FROM ta where a = 142; 
	 SELECT * FROM ta where a = 143; 
	 SELECT * FROM ta where a = 144; 
	 SELECT * FROM ta where a = 145; 
	 SELECT * FROM ta where a = 146; 
	 SELECT * FROM ta where a = 147;
	 SELECT * FROM ta where a = 148; 
	 SELECT * FROM ta where a = 149; 
	 SELECT * FROM ta where a = 150; 
	 SELECT * FROM ta where a = 151; 
	 SELECT * FROM ta where a = 152; 
	 SELECT * FROM ta where a = 153; 
	 SELECT * FROM ta where a = 154; 
	 SELECT * FROM ta where a = 155; 
	 SELECT * FROM ta where a = 156; 
	 SELECT * FROM ta where a = 157;
	 SELECT * FROM ta where a = 158; 
	 SELECT * FROM ta where a = 159; 
	 SELECT * FROM ta where a = 160; 
	 SELECT * FROM ta where a = 161; 
	 SELECT * FROM ta where a = 162; 
	 SELECT * FROM ta where a = 163; 
	 SELECT * FROM ta where a = 164; 
	 SELECT * FROM ta where a = 165; 
	 SELECT * FROM ta where a = 166; 
	 SELECT * FROM ta where a = 167;
	 SELECT * FROM ta where a = 168; 
	 SELECT * FROM ta where a = 169; 
	 SELECT * FROM ta where a = 170; 
	 SELECT * FROM ta where a = 171; 
	 SELECT * FROM ta where a = 172; 
	 SELECT * FROM ta where a = 173; 
	 SELECT * FROM ta where a = 174; 
	 SELECT * FROM ta where a = 175; 
	 SELECT * FROM ta where a = 176; 
	 SELECT * FROM ta where a = 177;
	 SELECT * FROM ta where a = 178; 
	 SELECT * FROM ta where a = 179; 
	 SELECT * FROM ta where a = 180; 
	 SELECT * FROM ta where a = 181; 
	 SELECT * FROM ta where a = 182; 
	 SELECT * FROM ta where a = 183; 
	 SELECT * FROM ta where a = 184; 
	 SELECT * FROM ta where a = 185; 
	 SELECT * FROM ta where a = 186; 
	 SELECT * FROM ta where a = 187;
	 SELECT * FROM ta where a = 188; 
	 SELECT * FROM ta where a = 189; 
	 SELECT * FROM ta where a = 190; 
	 SELECT * FROM ta where a = 191; 
	 SELECT * FROM ta where a = 192; 
	 SELECT * FROM ta where a = 193; 
	 SELECT * FROM ta where a = 194; 
	 SELECT * FROM ta where a = 195; 
	 SELECT * FROM ta where a = 196; 
	 SELECT * FROM ta where a = 197;
	 SELECT * FROM ta where a = 198; 
	 SELECT * FROM ta where a = 199; 
	 SELECT * FROM ta where a = 200; 
	 SELECT * FROM ta where a = 201; 
	 SELECT * FROM ta where a = 202; 
	 SELECT * FROM ta where a = 203; 
	 SELECT * FROM ta where a = 204; 
	 SELECT * FROM ta where a = 205; 
	 SELECT * FROM ta where a = 206; 
	 SELECT * FROM ta where a = 207;
	 SELECT * FROM ta where a = 208; 
	 SELECT * FROM ta where a = 209; 
	 SELECT * FROM ta where a = 210; 
	 SELECT * FROM ta where a = 211; 
	 SELECT * FROM ta where a = 212; 
	 SELECT * FROM ta where a = 213; 
	 SELECT * FROM ta where a = 214; 
	 SELECT * FROM ta where a = 215; 
	 SELECT * FROM ta where a = 216; 
	 SELECT * FROM ta where a = 217;
	 SELECT * FROM ta where a = 218; 
	 SELECT * FROM ta where a = 219; 
	 SELECT * FROM ta where a = 220; 
	 SELECT * FROM ta where a = 221; 
	 SELECT * FROM ta where a = 222; 
	 SELECT * FROM ta where a = 223; 
	 SELECT * FROM ta where a = 224; 
	 SELECT * FROM ta where a = 225; 
	 SELECT * FROM ta where a = 226; 
	 SELECT * FROM ta where a = 227;
	 SELECT * FROM ta where a = 228; 
	 SELECT * FROM ta where a = 229; 
	 SELECT * FROM ta where a = 230; 
	 SELECT * FROM ta where a = 231; 
	 SELECT * FROM ta where a = 232; 
	 SELECT * FROM ta where a = 233; 
	 SELECT * FROM ta where a = 234; 
	 SELECT * FROM ta where a = 235; 
	 SELECT * FROM ta where a = 236; 
	 SELECT * FROM ta where a = 237;
	 SELECT * FROM ta where a = 238; 
	 SELECT * FROM ta where a = 239; 
	 SELECT * FROM ta where a = 240; 
	 SELECT * FROM ta where a = 241; 
	 SELECT * FROM ta where a = 242; 
	 SELECT * FROM ta where a = 243; 
	 SELECT * FROM ta where a = 244; 
	 SELECT * FROM ta where a = 245; 
	 SELECT * FROM ta where a = 246; 
	 SELECT * FROM ta where a = 247;
	 SELECT * FROM ta where a = 248; 
	 SELECT * FROM ta where a = 249; 
	 SELECT * FROM ta where a = 250; 
	 SELECT * FROM ta where a = 251; 
	 SELECT * FROM ta where a = 252; 
	 SELECT * FROM ta where a = 253; 
	 SELECT * FROM ta where a = 254; 
	 SELECT * FROM ta where a = 255; 
	 SELECT * FROM ta where a = 256; 
	 SELECT * FROM ta where a = 257;
	 SELECT * FROM ta where a = 258; 
	 SELECT * FROM ta where a = 259; 
	 SELECT * FROM ta where a = 260; 
	 SELECT * FROM ta where a = 261; 
	 SELECT * FROM ta where a = 262; 
	 SELECT * FROM ta where a = 263; 
	 SELECT * FROM ta where a = 264; 
	 SELECT * FROM ta where a = 265; 
	 SELECT * FROM ta where a = 266; 
	 SELECT * FROM ta where a = 267;
	 SELECT * FROM ta where a = 268; 
	 SELECT * FROM ta where a = 269; 
	 SELECT * FROM ta where a = 270; 
	 SELECT * FROM ta where a = 271; 
	 SELECT * FROM ta where a = 272; 
	 SELECT * FROM ta where a = 273; 
	 SELECT * FROM ta where a = 274; 
	 SELECT * FROM ta where a = 275; 
	 SELECT * FROM ta where a = 276; 
	 SELECT * FROM ta where a = 277;
	 SELECT * FROM ta where a = 278; 
	 SELECT * FROM ta where a = 279; 
	 SELECT * FROM ta where a = 280; 
	 SELECT * FROM ta where a = 281; 
	 SELECT * FROM ta where a = 282; 
	 SELECT * FROM ta where a = 283; 
	 SELECT * FROM ta where a = 284; 
	 SELECT * FROM ta where a = 285; 
	 SELECT * FROM ta where a = 286; 
	 SELECT * FROM ta where a = 287;
	 SELECT * FROM ta where a = 288; 
	 SELECT * FROM ta where a = 289; 
	 SELECT * FROM ta where a = 290; 
	 SELECT * FROM ta where a = 291; 
	 SELECT * FROM ta where a = 292; 
	 SELECT * FROM ta where a = 293; 
	 SELECT * FROM ta where a = 294; 
	 SELECT * FROM ta where a = 295; 
	 SELECT * FROM ta where a = 296; 
	 SELECT * FROM ta where a = 297;
	 SELECT * FROM ta where a = 298; 
	 SELECT * FROM ta where a = 299; 


	 update results 
	 set end_time = clock_timestamp() 
	 where trial = (select max(trial) from results where end_time is null);



--more complicated - 20
	INSERT INTO results(details,cnt)
	values ('prepared two table select', 20);

	PREPARE ta_two_sel(integer) AS
	 select ta, sum(tb.c)
	 from ta
		join tb on ta.b = tb.b
	 where ta.a = $1
	 group by ta;
	      
	 EXECUTE ta_two_sel(100); 
	 EXECUTE ta_two_sel(101); 
	 EXECUTE ta_two_sel(102); 
	 EXECUTE ta_two_sel(103); 
	 EXECUTE ta_two_sel(104); 
	 EXECUTE ta_two_sel(105); 
	 EXECUTE ta_two_sel(106); 
	 EXECUTE ta_two_sel(107);
	 EXECUTE ta_two_sel(108); 
	 EXECUTE ta_two_sel(109); 
	 EXECUTE ta_two_sel(100); 
	 EXECUTE ta_two_sel(111); 
	 EXECUTE ta_two_sel(112); 
	 EXECUTE ta_two_sel(113); 
	 EXECUTE ta_two_sel(114); 
	 EXECUTE ta_two_sel(115); 
	 EXECUTE ta_two_sel(116); 
	 EXECUTE ta_two_sel(117);
	 EXECUTE ta_two_sel(118); 
	 EXECUTE ta_two_sel(119); 

	 DEALLOCATE ta_two_sel;

	 update results 
	 set end_time = clock_timestamp()
	 where trial = (select max(trial) from results where end_time is null);

	INSERT INTO results(details,cnt)
	values ('two table select', 20);

	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 100 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 101 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 102 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 103 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 104 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 105 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 106 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 107 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 108 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 109 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 110 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 111 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 112 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 113 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 114 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 115 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 116 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 117 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 118 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 119 group by ta;

	      
	 update results 
	 set end_time = clock_timestamp()
	 where trial = (select max(trial) from results where end_time is null);


--more complicated - 200
	INSERT INTO results(details,cnt)
	values ('prepared two table select', 200);

	PREPARE ta_two_sel(integer) AS
	 select ta, sum(tb.c)
	 from ta
		join tb on ta.b = tb.b
	 where ta.a = $1
	 group by ta;
	      
	 EXECUTE ta_two_sel(100); 
	 EXECUTE ta_two_sel(101); 
	 EXECUTE ta_two_sel(102); 
	 EXECUTE ta_two_sel(103); 
	 EXECUTE ta_two_sel(104); 
	 EXECUTE ta_two_sel(105); 
	 EXECUTE ta_two_sel(106); 
	 EXECUTE ta_two_sel(107);
	 EXECUTE ta_two_sel(108); 
	 EXECUTE ta_two_sel(109); 
	 EXECUTE ta_two_sel(100); 
	 EXECUTE ta_two_sel(111); 
	 EXECUTE ta_two_sel(112); 
	 EXECUTE ta_two_sel(113); 
	 EXECUTE ta_two_sel(114); 
	 EXECUTE ta_two_sel(115); 
	 EXECUTE ta_two_sel(116); 
	 EXECUTE ta_two_sel(117);
	 EXECUTE ta_two_sel(118); 
	 EXECUTE ta_two_sel(119); 
	 EXECUTE ta_two_sel(120); 
	 EXECUTE ta_two_sel(121); 
	 EXECUTE ta_two_sel(122); 
	 EXECUTE ta_two_sel(123); 
	 EXECUTE ta_two_sel(124); 
	 EXECUTE ta_two_sel(125); 
	 EXECUTE ta_two_sel(126); 
	 EXECUTE ta_two_sel(127);
	 EXECUTE ta_two_sel(128); 
	 EXECUTE ta_two_sel(129); 
	 EXECUTE ta_two_sel(130); 
	 EXECUTE ta_two_sel(131); 
	 EXECUTE ta_two_sel(132); 
	 EXECUTE ta_two_sel(133); 
	 EXECUTE ta_two_sel(134); 
	 EXECUTE ta_two_sel(135); 
	 EXECUTE ta_two_sel(136); 
	 EXECUTE ta_two_sel(137);
	 EXECUTE ta_two_sel(138); 
	 EXECUTE ta_two_sel(139); 
	 EXECUTE ta_two_sel(140); 
	 EXECUTE ta_two_sel(141); 
	 EXECUTE ta_two_sel(142); 
	 EXECUTE ta_two_sel(143); 
	 EXECUTE ta_two_sel(144); 
	 EXECUTE ta_two_sel(145); 
	 EXECUTE ta_two_sel(146); 
	 EXECUTE ta_two_sel(147);
	 EXECUTE ta_two_sel(148); 
	 EXECUTE ta_two_sel(149); 
	 EXECUTE ta_two_sel(150); 
	 EXECUTE ta_two_sel(151); 
	 EXECUTE ta_two_sel(152); 
	 EXECUTE ta_two_sel(153); 
	 EXECUTE ta_two_sel(154); 
	 EXECUTE ta_two_sel(155); 
	 EXECUTE ta_two_sel(156); 
	 EXECUTE ta_two_sel(157);
	 EXECUTE ta_two_sel(158); 
	 EXECUTE ta_two_sel(159); 
	 EXECUTE ta_two_sel(160); 
	 EXECUTE ta_two_sel(161); 
	 EXECUTE ta_two_sel(162); 
	 EXECUTE ta_two_sel(163); 
	 EXECUTE ta_two_sel(164); 
	 EXECUTE ta_two_sel(165); 
	 EXECUTE ta_two_sel(166); 
	 EXECUTE ta_two_sel(167);
	 EXECUTE ta_two_sel(168); 
	 EXECUTE ta_two_sel(169); 
	 EXECUTE ta_two_sel(170); 
	 EXECUTE ta_two_sel(171); 
	 EXECUTE ta_two_sel(172); 
	 EXECUTE ta_two_sel(173); 
	 EXECUTE ta_two_sel(174); 
	 EXECUTE ta_two_sel(175); 
	 EXECUTE ta_two_sel(176); 
	 EXECUTE ta_two_sel(177);
	 EXECUTE ta_two_sel(178); 
	 EXECUTE ta_two_sel(179); 
	 EXECUTE ta_two_sel(180); 
	 EXECUTE ta_two_sel(181); 
	 EXECUTE ta_two_sel(182); 
	 EXECUTE ta_two_sel(183); 
	 EXECUTE ta_two_sel(184); 
	 EXECUTE ta_two_sel(185); 
	 EXECUTE ta_two_sel(186); 
	 EXECUTE ta_two_sel(187);
	 EXECUTE ta_two_sel(188); 
	 EXECUTE ta_two_sel(189); 
	 EXECUTE ta_two_sel(190); 
	 EXECUTE ta_two_sel(191); 
	 EXECUTE ta_two_sel(192); 
	 EXECUTE ta_two_sel(193); 
	 EXECUTE ta_two_sel(194); 
	 EXECUTE ta_two_sel(195); 
	 EXECUTE ta_two_sel(196); 
	 EXECUTE ta_two_sel(197);
	 EXECUTE ta_two_sel(198); 
	 EXECUTE ta_two_sel(199); 
	 EXECUTE ta_two_sel(100); 
	 EXECUTE ta_two_sel(101); 
	 EXECUTE ta_two_sel(102); 
	 EXECUTE ta_two_sel(103); 
	 EXECUTE ta_two_sel(104); 
	 EXECUTE ta_two_sel(105); 
	 EXECUTE ta_two_sel(106); 
	 EXECUTE ta_two_sel(107);
	 EXECUTE ta_two_sel(108); 
	 EXECUTE ta_two_sel(109); 
	 EXECUTE ta_two_sel(100); 
	 EXECUTE ta_two_sel(111); 
	 EXECUTE ta_two_sel(112); 
	 EXECUTE ta_two_sel(113); 
	 EXECUTE ta_two_sel(114); 
	 EXECUTE ta_two_sel(115); 
	 EXECUTE ta_two_sel(116); 
	 EXECUTE ta_two_sel(117);
	 EXECUTE ta_two_sel(118); 
	 EXECUTE ta_two_sel(119); 
	 EXECUTE ta_two_sel(120); 
	 EXECUTE ta_two_sel(121); 
	 EXECUTE ta_two_sel(122); 
	 EXECUTE ta_two_sel(123); 
	 EXECUTE ta_two_sel(124); 
	 EXECUTE ta_two_sel(125); 
	 EXECUTE ta_two_sel(126); 
	 EXECUTE ta_two_sel(127);
	 EXECUTE ta_two_sel(128); 
	 EXECUTE ta_two_sel(129); 
	 EXECUTE ta_two_sel(130); 
	 EXECUTE ta_two_sel(131); 
	 EXECUTE ta_two_sel(132); 
	 EXECUTE ta_two_sel(133); 
	 EXECUTE ta_two_sel(134); 
	 EXECUTE ta_two_sel(135); 
	 EXECUTE ta_two_sel(136); 
	 EXECUTE ta_two_sel(137);
	 EXECUTE ta_two_sel(138); 
	 EXECUTE ta_two_sel(139); 
	 EXECUTE ta_two_sel(140); 
	 EXECUTE ta_two_sel(141); 
	 EXECUTE ta_two_sel(142); 
	 EXECUTE ta_two_sel(143); 
	 EXECUTE ta_two_sel(144); 
	 EXECUTE ta_two_sel(145); 
	 EXECUTE ta_two_sel(146); 
	 EXECUTE ta_two_sel(147);
	 EXECUTE ta_two_sel(148); 
	 EXECUTE ta_two_sel(149); 
	 EXECUTE ta_two_sel(150); 
	 EXECUTE ta_two_sel(151); 
	 EXECUTE ta_two_sel(152); 
	 EXECUTE ta_two_sel(153); 
	 EXECUTE ta_two_sel(154); 
	 EXECUTE ta_two_sel(155); 
	 EXECUTE ta_two_sel(156); 
	 EXECUTE ta_two_sel(157);
	 EXECUTE ta_two_sel(158); 
	 EXECUTE ta_two_sel(159); 
	 EXECUTE ta_two_sel(160); 
	 EXECUTE ta_two_sel(161); 
	 EXECUTE ta_two_sel(162); 
	 EXECUTE ta_two_sel(163); 
	 EXECUTE ta_two_sel(164); 
	 EXECUTE ta_two_sel(165); 
	 EXECUTE ta_two_sel(166); 
	 EXECUTE ta_two_sel(167);
	 EXECUTE ta_two_sel(168); 
	 EXECUTE ta_two_sel(169); 
	 EXECUTE ta_two_sel(170); 
	 EXECUTE ta_two_sel(171); 
	 EXECUTE ta_two_sel(172); 
	 EXECUTE ta_two_sel(173); 
	 EXECUTE ta_two_sel(174); 
	 EXECUTE ta_two_sel(175); 
	 EXECUTE ta_two_sel(176); 
	 EXECUTE ta_two_sel(177);
	 EXECUTE ta_two_sel(178); 
	 EXECUTE ta_two_sel(179); 
	 EXECUTE ta_two_sel(180); 
	 EXECUTE ta_two_sel(181); 
	 EXECUTE ta_two_sel(182); 
	 EXECUTE ta_two_sel(183); 
	 EXECUTE ta_two_sel(184); 
	 EXECUTE ta_two_sel(185); 
	 EXECUTE ta_two_sel(186); 
	 EXECUTE ta_two_sel(187);
	 EXECUTE ta_two_sel(188); 
	 EXECUTE ta_two_sel(189); 
	 EXECUTE ta_two_sel(190); 
	 EXECUTE ta_two_sel(191); 
	 EXECUTE ta_two_sel(192); 
	 EXECUTE ta_two_sel(193); 
	 EXECUTE ta_two_sel(194); 
	 EXECUTE ta_two_sel(195); 
	 EXECUTE ta_two_sel(196); 
	 EXECUTE ta_two_sel(197);
	 EXECUTE ta_two_sel(198); 
	 EXECUTE ta_two_sel(199); 



	 DEALLOCATE ta_two_sel;

	 update results 
	 set end_time = clock_timestamp()
	 where trial = (select max(trial) from results where end_time is null);

	INSERT INTO results(details,cnt)
	values ('two table select', 200);

	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 100 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 101 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 102 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 103 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 104 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 105 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 106 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 107 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 108 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 109 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 110 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 111 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 112 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 113 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 114 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 115 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 116 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 117 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 118 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 119 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 120 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 121 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 122 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 123 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 124 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 125 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 126 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 127 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 128 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 129 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 130 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 131 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 132 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 133 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 134 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 135 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 136 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 137 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 138 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 139 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 140 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 141 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 142 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 143 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 144 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 145 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 146 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 147 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 148 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 149 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 150 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 151 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 152 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 153 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 154 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 155 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 156 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 157 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 158 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 159 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 160 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 161 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 162 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 163 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 164 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 165 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 166 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 167 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 168 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 169 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 170 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 171 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 172 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 173 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 174 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 175 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 176 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 177 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 178 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 179 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 180 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 181 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 182 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 183 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 184 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 185 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 186 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 187 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 188 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 189 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 190 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 191 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 192 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 193 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 194 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 195 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 196 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 197 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 198 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 199 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 100 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 101 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 102 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 103 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 104 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 105 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 106 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 107 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 108 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 109 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 110 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 111 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 112 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 113 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 114 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 115 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 116 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 117 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 118 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 119 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 120 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 121 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 122 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 123 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 124 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 125 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 126 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 127 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 128 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 129 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 130 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 131 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 132 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 133 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 134 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 135 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 136 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 137 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 138 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 139 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 140 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 141 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 142 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 143 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 144 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 145 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 146 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 147 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 148 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 149 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 150 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 151 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 152 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 153 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 154 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 155 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 156 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 157 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 158 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 159 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 160 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 161 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 162 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 163 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 164 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 165 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 166 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 167 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 168 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 169 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 170 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 171 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 172 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 173 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 174 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 175 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 176 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 177 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 178 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 179 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 180 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 181 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 182 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 183 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 184 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 185 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 186 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 187 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 188 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 189 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 190 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 191 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 192 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 193 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 194 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 195 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 196 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 197 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 198 group by ta;
	 select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 199 group by ta;

	      
	 update results 
	 set end_time = clock_timestamp()
	 where trial = (select max(trial) from results where end_time is null);



/*
--simple
EXPLAIN ANALYZE SELECT * FROM ta where a = 100; 
	 

--more complex
EXPLAIN ANALYZE select ta, sum(tb.c) from ta join tb on ta.b = tb.b where ta.a = 130 group by ta;
*/



--results
select trial,details,cnt,age(end_time, start_time) 
from results;


