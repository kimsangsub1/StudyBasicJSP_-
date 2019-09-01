use basicjsp;

desc board;
create table free_board select * from board;
create table real_estate select * from board;
drop table restaurant_review;
create table restaurant_review select * from board;
create table IDT_marketplace select * from board;
create table concern_counseling select * from board;
create table praise select * from board;

show tables;

alter table free_board change num num int(11) primary key auto_increment;
alter table real_estate change num num int(11) primary key auto_increment;
alter table restaurant_review change num num int(11) primary key auto_increment;
alter table IDT_marketplace change num num int(11) primary key auto_increment;
alter table concern_counseling change num num int(11) primary key auto_increment;
alter table praise change num num int(11) primary key auto_increment;

alter table free_board change writer writer varchar(40);
alter table real_estate change writer writer varchar(40);
alter table restaurant_review change writer writer varchar(40);
alter table IDT_marketplace change writer writer varchar(40);
alter table concern_counseling change writer writer varchar(40);
alter table praise change writer writer varchar(40);
desc free_board;


alter table restaurant_review change writer writer varchar(40);

desc restaurant_review;

desc board;
desc free_board;
desc real_estate;
desc restaurant_review;
desc IDT_marketplace;
desc concern_counseling;
desc praise;

desc concern_counseling;
desc praise;
desc IDT_marketplace;
desc real_estate;
desc restaurant_review;

select * from free_board;
select * from concern_counseling;
select * from praise;
select * from IDT_marketplace;
select * from real_estate;
select * from restaurant_review;

delete from free_board;
delete from concern_counseling;
delete from praise;
delete from IDT_marketplace;1
delete from real_estate;
delete from restaurant_review;


delete from restaurant_review;

desc restaurant_review;







<-- 로그인을 위한 DB -->
drop table member ;

create table member(

	email varchar(255) not null primary key,
	passwd varchar(16) not null,
	reg_date datetime not null

);

select * from member;

drop table checkidt;

create table checkidt(
	chno int(10) auto_increment primary key,
	ques varchar(100) not null,
	ans varchar(100) not null
);

show tables;
select * from checkidt;

desc member;
desc checkidt;

insert into member(email,passwd,reg_date)
values('idid@asianaidt.com','000',now());

delete from member;

drop table member;

insert into checkidt
values(NULL,'Telepia 홈페이지의 마지막 그리드 메뉴의 이름','사이버캠퍼스');


select passwd from member where email='a@asianaidt.com';

select * from member;
select * from checkidt;

select passwd from MEMBER where email='a@asianaidt.com';




create table free_board(
num int not null primary key auto_increment,
writer varchar(10) not null,
email varchar(30),
subject varchar(50) not null,
passwd varchar(12) not null,
reg_date datetime not null,
readcount int default 0,
ref int not null,
re_step smallint not null,
re_level smallint not null,
content text not null,
ip varchar(20) not null
);

create table IDT_marketplace(
num int not null primary key auto_increment,
writer varchar(10) not null,
email varchar(30),
subject varchar(50) not null,
passwd varchar(12) not null,
reg_date datetime not null,
readcount int default 0,
ref int not null,
re_step smallint not null,
re_level smallint not null,
content text not null,
ip varchar(20) not null
);

create table praise(
num int not null primary key auto_increment,
writer varchar(10) not null,
email varchar(30),
subject varchar(50) not null,
passwd varchar(12) not null,
reg_date datetime not null,
readcount int default 0,
ref int not null,
re_step smallint not null,
re_level smallint not null,
content text not null,
ip varchar(20) not null
);

create table board(
num int not null primary key auto_increment,
writer varchar(10) not null,
email varchar(30),
subject varchar(50) not null,
passwd varchar(12) not null,
reg_date datetime not null,
readcount int default 0,
ref int not null,
re_step smallint not null,
re_level smallint not null,
content text not null,
ip varchar(20) not null
);

create table concern_counseling(
num int not null primary key auto_increment,
writer varchar(10) not null,
email varchar(30),
subject varchar(50) not null,
passwd varchar(12) not null,
reg_date datetime not null,
readcount int default 0,
ref int not null,
re_step smallint not null,
re_level smallint not null,
content text not null,
ip varchar(20) not null
);


 
create table real_estate(
num int not null primary key auto_increment,
writer varchar(10) not null,
email varchar(30),
subject varchar(50) not null,
passwd varchar(12) not null,
reg_date datetime not null,
readcount int default 0,
ref int not null,
re_step smallint not null,
re_level smallint not null,
content text not null,
ip varchar(20) not null
);

create table restaurant_review (
num int not null primary key auto_increment,
writer varchar(10) not null,
email varchar(30),
subject varchar(50) not null,
passwd varchar(12) not null,
reg_date datetime not null,
readcount int default 0,
ref int not null,
re_step smallint not null,
re_level smallint not null,
content text not null,
ip varchar(20) not null
);


 
 
----------------------------------------------------------restaurant_review테이블 데이터입니다.-------------------------------------------
insert into restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','aaa@asianaidt.com','김치나베는 별로..','1111',now(),129,2,0,0,'저는 개인적으로 김치나베는 별로였어요 ㅠㅠ 그냥 돈까스가 짱!'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','ccc@asianaidt.com','자리가 좁아요','1111',now(),996,3,0,0,'사람들과 도란도란 앉아서 얘기나누는 것은 좋지만 너무 좁다는 느낌이 들어요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','aaa@asianaidt.com','돈까스 진짜맛있어요!','1111',now(),222,3,0,0,'돈까스가 튀김이 너무 바삭바삭하고 좋아요 ㅠㅠ '
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','bbb@asianaidt.com','김치나베 짜요','1111',now(),200,3,0,0,'김치나베 국물이 너무 짜요 ㅠㅠㅠ 아쉬워요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','abc@asianaidt.com','해장국으로제격','1111',now(),185,3,0,0,'1층에 해장국집있는데 진짜 맛있어요!! 그래서 살맛납니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','kka@asianaidt.com','별로에요','1111',now(),179,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','fff@asianaidt.com','괜찮은듯?','1111',now(),142,3,0,0,'남자혼자살기에는 진짜 딱 적당한것 같습니다.'
,'0:0:0:0:0:0:0:1');

insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','aaa@asianaidt.com','돈까스 진짜맛있어요!','1111',now(),222,3,0,0,'돈까스가 튀김이 너무 바삭바삭하고 좋아요 ㅠㅠ '
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','fff@asianaidt.com','괜찮은듯?','1111',now(),142,3,0,0,'남자혼자살기에는 진짜 딱 적당한것 같습니다.'
,'0:0:0:0:0:0:0:1');
insert into restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','aaa@asianaidt.com','김치나베는 별로..','111',now(),129,2,0,0,'저는 개인적으로 김치나베는 별로였어요 ㅠㅠ 그냥 돈까스가 짱!'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','ccc@asianaidt.com','자리가 좁아요','1111',now(),996,3,0,0,'사람들과 도란도란 앉아서 얘기나누는 것은 좋지만 너무 좁다는 느낌이 들어요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','bbb@asianaidt.com','김치나베 짜요','1111',now(),200,3,0,0,'김치나베 국물이 너무 짜요 ㅠㅠㅠ 아쉬워요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','abc@asianaidt.com','해장국으로제격','1111',now(),185,3,0,0,'1층에 해장국집있는데 진짜 맛있어요!! 그래서 살맛납니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','kka@asianaidt.com','별로에요','1111',now(),179,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');

insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','aaa@asianaidt.com','고등어찜 진짜맛있어요!','1111',now(),222,3,0,0,'돈까스가 튀김이 너무 바삭바삭하고 좋아요 ㅠㅠ '
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','fff@asianaidt.com','괜찮은듯?','1111',now(),142,3,0,0,'남자혼자살기에는 진짜 딱 적당한것 같습니다.'
,'0:0:0:0:0:0:0:1');
insert into restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','aaa@asianaidt.com','고등어뺴고는 별로..','111',now(),129,2,0,0,'저는 개인적으로 김치나베는 별로였어요 ㅠㅠ 그냥 돈까스가 짱!'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','ccc@asianaidt.com','깨끗해요!','1111',now(),996,3,0,0,'사람들과 도란도란 앉아서 얘기나누는 것은 좋지만 너무 좁다는 느낌이 들어요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','bbb@asianaidt.com','완전건강식!','1111',now(),200,3,0,0,'김치나베 국물이 너무 짜요 ㅠㅠㅠ 아쉬워요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','abc@asianaidt.com','해장국으로제격','1111',now(),185,3,0,0,'1층에 해장국집있는데 진짜 맛있어요!! 그래서 살맛납니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','kka@asianaidt.com','별로에요','1111',now(),179,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');
insert into restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[gaes]굳','aaa@asianaidt.com','삼계탕으로 해장이되네요','111',now(),1,2,0,0,'저는 개인적으로 김치나베는 별로였어요 ㅠㅠ 그냥 돈까스가 짱!'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[gaes]좋아','ccc@asianaidt.com','자리가 좁아요','1111',now(),996,3,0,0,'사람들과 도란도란 앉아서 얘기나누는 것은 좋지만 너무 좁다는 느낌이 들어요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[gaes]두리','aaa@asianaidt.com','김치가 맛있는데요?!','1111',now(),2,3,0,0,'돈까스가 튀김이 너무 바삭바삭하고 좋아요 ㅠㅠ '
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[gaes]프란','bbb@asianaidt.com','김치간이너무쎼요','1111',now(),200,3,0,0,'김치나베 국물이 너무 짜요 ㅠㅠㅠ 아쉬워요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[gaes]','abc@asianaidt.com','해장국으로제격','1111',now(),5,3,0,0,'1층에 해장국집있는데 진짜 맛있어요!! 그래서 살맛납니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[gaes]놉','kka@asianaidt.com','별로에요','1111',now(),19,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[gaes]','fff@asianaidt.com','괜찮은듯?','1111',now(),142,3,0,0,'남자혼자살기에는 진짜 딱 적당한것 같습니다.'
,'0:0:0:0:0:0:0:1');

insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[ddowat]저렴','aaa@asianaidt.com','가성비 최고인 곳','1111',now(),222,3,0,0,'돈까스가 튀김이 너무 바삭바삭하고 좋아요 ㅠㅠ '
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[ddowat]','fff@asianaidt.com','괜찮은듯?','1111',now(),142,3,0,0,'남자혼자살기에는 진짜 딱 적당한것 같습니다.'
,'0:0:0:0:0:0:0:1');
insert into restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[ddowat]','aaa@asianaidt.com','김치찌개진짜맛있네요','111',now(),129,2,0,0,'저는 개인적으로 김치나베는 별로였어요 ㅠㅠ 그냥 돈까스가 짱!'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[ddowat]','ccc@asianaidt.com','자리가 좁아요','1111',now(),996,3,0,0,'사람들과 도란도란 앉아서 얘기나누는 것은 좋지만 너무 좁다는 느낌이 들어요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[ddowat]롸','bbb@asianaidt.com','된장국수...특허내야하는거 아닌가요?','1111',now(),200,3,0,0,'김치나베 국물이 너무 짜요 ㅠㅠㅠ 아쉬워요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[ddowat]','abc@asianaidt.com','김치찌개가 완전 해장국으로제격','1111',now(),185,3,0,0,'1층에 해장국집있는데 진짜 맛있어요!! 그래서 살맛납니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[ddowat]','kka@asianaidt.com','별로에요','1111',now(),179,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');

insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[duckfm]덕킹','aaa@asianaidt.com','오리고기 먹고 든든합니다','1111',now(),222,3,0,0,'돈까스가 튀김이 너무 바삭바삭하고 좋아요 ㅠㅠ '
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[duckfm]','fff@asianaidt.com','괜찮은듯?','1111',now(),142,3,0,0,'남자혼자살기에는 진짜 딱 적당한것 같습니다.'
,'0:0:0:0:0:0:0:1');
insert into restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[duckfm]','aaa@asianaidt.com','반찬이 잘나왔으면 좋겠어요','111',now(),129,2,0,0,'저는 개인적으로 김치나베는 별로였어요 ㅠㅠ 그냥 돈까스가 짱!'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[duckfm]','ccc@asianaidt.com','깨끗해요!','1111',now(),6,3,0,0,'사람들과 도란도란 앉아서 얘기나누는 것은 좋지만 너무 좁다는 느낌이 들어요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[duckfm]','bbb@asianaidt.com','완전건강식!','1111',now(),200,3,0,0,'김치나베 국물이 너무 짜요 ㅠㅠㅠ 아쉬워요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[duckfm]','abc@asianaidt.com','해장국으로제격','1111',now(),18,3,0,0,'1층에 해장국집있는데 진짜 맛있어요!! 그래서 살맛납니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[duckfm]','kka@asianaidt.com','별로에요','1111',now(),179,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');
----------------------------------------------------------------------------------------------------------------------------------

 
show databases;

show tables;

desc free_board;
desc member;
desc restaurant_review;

desc free_board;

select * from free_board;
commit;
------------------------------------------free_board데이터입니다.-------------------------------------------------------------------
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('영화사랑','aaa@asianaidt.com','8월 영화 관람(엑시트)','1111',now(),20,3,0,0,'이번 영화 엑시트 본다고 하네요.많이 참여해주셨으면 좋겠습니다^^'
,'0:0:0:0:0:0:0:1');
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('코딩이좋아','bbb@asianaidt.com','UI&Server테스트 분리 방법','1111',now(),100,2,0,0,'분리 방법 쉽게 설명되어 있으니 참고하시면 됩니다!'
,'0:0:0:0:0:0:0:1');
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('따릉이','ccc@asianaidt.com','회사 근처 헬스장','1111',now(),200,2,0,0,'오쇠동 근처에 헬스장 없나요?이제 살뺴야하는데...'
,'0:0:0:0:0:0:0:1');
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('뮤직이즈마이라이프','ddd@asianaidt.com','레미제라블 뮤지컬 관람권','1111',now(),13,7,0,0,'레미제라블 뮤지컬 관람권이 있는데 못쓰게 되었습니다.
 혹시 가고싶으신 분 없나요?'
,'0:0:0:0:0:0:0:1');
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('아시아나idt죄고','eee@asianaidt.com','식신 10000원 나눔','1111',now(),300,9,0,0,'이번달이 끝나가는데 식신 잔돈이 많이 남았어요. 10000원드립니다!'
,'0:0:0:0:0:0:0:1');
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('코딩이좋아','fff@asianaidt.com','가장 빠른 로그 코딩 기법','1111',now(),404,3,0,0,'이 링크에 들어가시면 쉽게 배울 수 있어요. 추천드립니다!'
,'0:0:0:0:0:0:0:1');
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('영화사랑','ggg@asianaidt.com','9월 영화동아리 영화투표','1111',now(),20,3,0,0,'다음달에는 어떤 영화를 볼까요? 투표해주세요!'
,'0:0:0:0:0:0:0:1');
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('야구전문가','hhh@asianaidt.com','8/27일야구경기장소','1111',now(),20,3,0,0,'8월27일에 있을 야구는 
잠실 야구경기장에서 진행합니다. 구경하실 분들도 많이 참여해주세요~!!
'
,'0:0:0:0:0:0:0:1');
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('익명의순이','iii@asianaidt.com','미용실추천','1111',now(),15,7,0,0,' 종각역주변에 머리 잘하는 미용실이 어디인가요?추천부탁드립니다!ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('하하호호','aaa@asianaidt.com','한강요가축제','1111',now(),20,3,0,0,'다음주 주말에 한강에서 요가축제가있어요! 요가에 관심있으신분들 많이 참여해주세요'
,'0:0:0:0:0:0:0:1');
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('노래좋아','lala@asianaidt.com','노래추천','1111',now(),190,3,0,0,'비가 많이오네요. 비올 때 듣기 좋은 노래 리스트 추천해드립니다.'
,'0:0:0:0:0:0:0:1');
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('식신로드','abab@asianaidt.com','달의식당할인쿠폰','1111',now(),205,3,0,0,'여러분 달의식당 할인 쿠폰이 있는거 아시나요? 지금당장 다운받아요!'
,'0:0:0:0:0:0:0:1');
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('노래좋아','aacc@asianaidt.com','여름에듣기좋은음악','1111',now(),333,3,0,0,'여름에 듣기 좋은 노래 선별해봤습니다. 많이 이용해주세요'
,'0:0:0:0:0:0:0:1');
insert into free_board(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('영화사랑','adad@asianaidt.com','영화사자후기','1111',now(),99,3,0,0,'이번에 사자라는 영화 보고왔는데 무서운거 싫어하시는 분들은 보지마세요!'
,'0:0:0:0:0:0:0:1');
-------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------praise테이블 데이터입니다.------------------------------------------------------------


insert into praise(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('idt칭찬맨','aaa@asianaidt.com','경영지원팀의 안지연님!','1111',now(),99,3,0,0,'저번에 보니까 쓰레기를 열심히 주워주셨는데, 정말 감동을 먹었습니다. 정리를 잘 안하고 다니던 저에게 인생의 교훈을 깨우치게 해준 좋은 분이십니다~~'
,'0:0:0:0:0:0:0:1');
insert into praise(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('심슨','bbb@asianaidt.com','ict융합사업팀의 노진수님!','1111',now(),122,3,0,0,'진수님 항상 점심시간 틈틈히 개발 공부하는 것을 보았어요! 자기계발에 열중하는 모습 너무 보기 좋았어요!'
,'0:0:0:0:0:0:0:1');
insert into praise(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('도로시','ccc@asianaidt.com','항공영업팀의 정진환님!','1111',now(),21,3,0,0,'항상 탕비실에 과자와 음료수 정리하시던것을 보고 정말 같은 직원들을 신경써주시는 구나 라는 생각이 들었어요! 정말 천사십니다.*^^*'
,'0:0:0:0:0:0:0:1');
insert into praise(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('칭찬조하','ddd@asianaidt.com','법무팀의 최은혜님!','1111',now(),170,3,0,0,'지니가다가 저한테 지하에 맛집 소개시켜주셔서 진짜 갑작스러웠지만 너무 감사했어요! 은혜님의 친화력 저도 닮고 싶어요 ~ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into praise(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('idt는가족','eee@asianaidt.com','데이터센터팀의 김민지님!','1111',now(),68,3,0,0,'끝나고 모든 자리 의자를 정리하고 가시던 모습이 너무 인상깊었어요 정말 칭찬합니다!!'
,'0:0:0:0:0:0:0:1');
insert into praise(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('행복바이러스','fff@asianaidt.com','전략기획팀 전지혜님!','1111',now(),46,3,0,0,'전지혜님!항상 밝은 모습 너무 보기 좋아요 ㅠㅠ 행복바이러스 계속 뿜뿜해주세요 최고! ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into praise(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('musiclife','ggg@asianaidt.com','금융사업팀 유창식님!','1111',now(),355,3,0,0,'창식님 정말 힘드실텐데도 항상 웃고 다니시고 회식 떄마다 춤으로 저희를 즐겁게 해주셔서 정말 감사합니다 ㅠㅠ'
,'0:0:0:0:0:0:0:1');
insert into praise(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('dancing','hhh@asianaidt.com','ict연구소팀의 강병기님!','1111',now(),243,3,0,0,'병기님 항상 책들고 계시는데 정말 똑똑해보이세요. 친해지고 싶어요!!!!!!!무슨책인지도 알려주세요 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into praise(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('나는퀸카','kkk@asianaidt.com','온라인플랫폼팀의 김상섭님!','1111',now(),992,3,0,0,'김상섭님!! 항상 진지하시지만 장난칠 때는 잘 받아주셔서 너무 매력적이에요! 앞으로도 진지한 모습 계속 부탁드립니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into praise(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('호호호','aaa@asianaidt.com','항공관리팀의 하유진님!','1111',now(),123,3,0,0,'타자가 무지빨라요..!!!이게바로 미국스타일인가요? 멋있습니다!!! 나중에 한컴타자대결해요 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into praise(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('웃으면','adad@asianaidt.com','항공영업팀의 김나은님!','1111',now(),99,3,0,0,'나은님은 정말 미소천사같아요!!! 보고있으면 저도 기분이 좋아져요 ㅎㅎ 계속 그렇게 웃어주세요 ^^스마일~!'
,'0:0:0:0:0:0:0:1');
insert into praise(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('복이와요','aaa@asianaidt.com','금융사업팀의 안용호님!','1111',now(),179,3,0,0,'저번에 발표하시는 것을 보았는데, 정말 피피티 잘만드시더라구요!! 혹시...moka..?'
,'0:0:0:0:0:0:0:1');

--------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------member table데이터입니다.-------------------------------------------------------

desc member;

insert into member(email,passwd,reg_date) values('admin@asianaidt.com','admin',now());
insert into member(email,passwd,reg_date) values('aaa@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('bbb@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('ccc@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('ddd@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('eee@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('fff@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('ggg@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('hhh@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('iii@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('jjj@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('kkk@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('hhh@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('lll@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('mmm@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('nnn@asianaidt.com','1111',now());
insert into member(email,passwd,reg_date) values('ooo@asianaidt.com','1111',now());

select * from member;


---------------------------------------------------------------------------------------------------------------------------------------

------------------------------real_estate table 데이터입니다.-----------------------------------------------------------------------------
desc real_estate;
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[sky21]','bbb@asianaidt.com','여기좋아요','1111',now(),200,3,0,0,'여기 진짜 괜찮아요!!! 깔끔하고 신축이랍니다!'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[sky21]','aaa@asianaidt.com','밤길이 좀 위험함','1111',now(),222,3,0,0,'여자들은 살기에 조금 위험한 것 같습니다. 밤에 혼자가기 무서워요 ㅠㅠ'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[sky21]','ccc@asianaidt.com','주방이 좁음','1111',now(),996,3,0,0,'주방에서 뭐 요리해먹기 불편해요 ㅠ 요리많이해드시는 분은 다른 곳 추천드려요'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[sky21]','fff@asianaidt.com','괜찮은듯?','1111',now(),142,3,0,0,'남자혼자살기에는 진짜 딱 적당한것 같습니다.'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[sky21]','aaa@asianaidt.com','월세가비싸요','111',now(),129,2,0,0,'저축을 원하는 사람들에게는 월세가 너무 높은 감이 없지 않아 있어요'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[sky21]','kka@asianaidt.com','별로에요','1111',now(),179,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[sky21]','abc@asianaidt.com','해장국 맛있어요','1111',now(),185,3,0,0,'1층에 해장국집있는데 진짜 맛있어요!! 그래서 살맛납니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');

insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[swthome]','ccc@asianaidt.com','주방이 좁음','1111',now(),996,3,0,0,'주방에서 뭐 요리해먹기 불편해요 ㅠ 요리많이해드시는 분은 다른 곳 추천드려요'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[swthome]','aaa@asianaidt.com','밤길이 좀 위험함','1111',now(),222,3,0,0,'여자들은 살기에 조금 위험한 것 같습니다. 밤에 혼자가기 무서워요 ㅠㅠ'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[swthome]','bbb@asianaidt.com','여기좋아요','1111',now(),200,3,0,0,'여기 진짜 괜찮아요!!! 깔끔하고 신축이랍니다!'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[swthome]','kka@asianaidt.com','별로에요','1111',now(),179,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[swthome]','fff@asianaidt.com','괜찮은듯?','1111',now(),142,3,0,0,'남자혼자살기에는 진짜 딱 적당한것 같습니다.'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[swthome]','aaa@asianaidt.com','월세가비싸요','111',now(),129,2,0,0,'저축을 원하는 사람들에게는 월세가 너무 높은 감이 없지 않아 있어요'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[swthome]','abc@asianaidt.com','해장국 맛있어요','1111',now(),185,3,0,0,'1층에 해장국집있는데 진짜 맛있어요!! 그래서 살맛납니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');

delete from real_estate where writer = "[campT]";

insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[campT]','aaa@asianaidt.com','월세가비싸요','111',now(),129,2,0,0,'저축을 원하는 사람들에게는 월세가 너무 높은 감이 없지 않아 있어요'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[campT]','ccc@asianaidt.com','주방이 좁음','1111',now(),996,3,0,0,'주방에서 뭐 요리해먹기 불편해요 ㅠ 요리많이해드시는 분은 다른 곳 추천드려요'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[campT]','aaa@asianaidt.com','밤길이 좀 위험함','1111',now(),222,3,0,0,'여자들은 살기에 조금 위험한 것 같습니다. 밤에 혼자가기 무서워요 ㅠㅠ'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[campT]','bbb@asianaidt.com','여기좋아요','1111',now(),200,3,0,0,'여기 진짜 괜찮아요!!! 깔끔하고 신축이랍니다!'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[campT]','abc@asianaidt.com','해장국 맛있어요','1111',now(),185,3,0,0,'1층에 해장국집있는데 진짜 맛있어요!! 그래서 살맛납니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[campT]','kka@asianaidt.com','별로에요','1111',now(),179,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');
insert into real_estate(writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[campT]','fff@asianaidt.com','괜찮은듯?','1111',now(),142,3,0,0,'남자혼자살기에는 진짜 딱 적당한것 같습니다.'
,'0:0:0:0:0:0:0:1');

------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------restaurant_review테이블 데이터입니다.-------------------------------------------
insert into restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','aaa@asianaidt.com','김치나베는 별로..','111',now(),129,2,0,0,'저는 개인적으로 김치나베는 별로였어요 ㅠㅠ 그냥 돈까스가 짱!'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','ccc@asianaidt.com','자리가 좁아요','1111',now(),996,3,0,0,'사람들과 도란도란 앉아서 얘기나누는 것은 좋지만 너무 좁다는 느낌이 들어요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','aaa@asianaidt.com','돈까스 진짜맛있어요!','1111',now(),222,3,0,0,'돈까스가 튀김이 너무 바삭바삭하고 좋아요 ㅠㅠ '
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','bbb@asianaidt.com','김치나베 짜요','1111',now(),200,3,0,0,'김치나베 국물이 너무 짜요 ㅠㅠㅠ 아쉬워요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','abc@asianaidt.com','해장국으로제격','1111',now(),185,3,0,0,'1층에 해장국집있는데 진짜 맛있어요!! 그래서 살맛납니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','kka@asianaidt.com','별로에요','1111',now(),179,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Baren]','fff@asianaidt.com','괜찮은듯?','1111',now(),142,3,0,0,'남자혼자살기에는 진짜 딱 적당한것 같습니다.'
,'0:0:0:0:0:0:0:1');

insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','aaa@asianaidt.com','돈까스 진짜맛있어요!','1111',now(),222,3,0,0,'돈까스가 튀김이 너무 바삭바삭하고 좋아요 ㅠㅠ '
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','fff@asianaidt.com','괜찮은듯?','1111',now(),142,3,0,0,'남자혼자살기에는 진짜 딱 적당한것 같습니다.'
,'0:0:0:0:0:0:0:1');
insert into restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','aaa@asianaidt.com','김치나베는 별로..','111',now(),129,2,0,0,'저는 개인적으로 김치나베는 별로였어요 ㅠㅠ 그냥 돈까스가 짱!'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','ccc@asianaidt.com','자리가 좁아요','1111',now(),996,3,0,0,'사람들과 도란도란 앉아서 얘기나누는 것은 좋지만 너무 좁다는 느낌이 들어요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','bbb@asianaidt.com','김치나베 짜요','1111',now(),200,3,0,0,'김치나베 국물이 너무 짜요 ㅠㅠㅠ 아쉬워요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','abc@asianaidt.com','해장국으로제격','1111',now(),185,3,0,0,'1층에 해장국집있는데 진짜 맛있어요!! 그래서 살맛납니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Allback]','kka@asianaidt.com','별로에요','1111',now(),179,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');

insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','aaa@asianaidt.com','고등어찜 진짜맛있어요!','1111',now(),222,3,0,0,'돈까스가 튀김이 너무 바삭바삭하고 좋아요 ㅠㅠ '
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','fff@asianaidt.com','괜찮은듯?','1111',now(),142,3,0,0,'남자혼자살기에는 진짜 딱 적당한것 같습니다.'
,'0:0:0:0:0:0:0:1');
insert into restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','aaa@asianaidt.com','고등어뺴고는 별로..','111',now(),129,2,0,0,'저는 개인적으로 김치나베는 별로였어요 ㅠㅠ 그냥 돈까스가 짱!'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','ccc@asianaidt.com','깨끗해요!','1111',now(),996,3,0,0,'사람들과 도란도란 앉아서 얘기나누는 것은 좋지만 너무 좁다는 느낌이 들어요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','bbb@asianaidt.com','완전건강식!','1111',now(),200,3,0,0,'김치나베 국물이 너무 짜요 ㅠㅠㅠ 아쉬워요'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','abc@asianaidt.com','해장국으로제격','1111',now(),185,3,0,0,'1층에 해장국집있는데 진짜 맛있어요!! 그래서 살맛납니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','kka@asianaidt.com','별로에요','1111',now(),179,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');

insert into  restaurant_review (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[Doma]','kka@asianaidt.com','별로에요','1111',now(),179,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');
----------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------concern_counseling 테이블입니다------------------------------------------------------------

desc concern_couseling;

insert into  concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[diary]','aaa@asianaidt.com','집값때문에 고민이에요..','1111',now(),222,3,0,0,'본사에서 근무하게 됐는데 집값이 너무 비싸네요....가진 돈은 없고...요즘 고민이 많습니다. '
,'0:0:0:0:0:0:0:1');
insert into  concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[diary]','fff@asianaidt.com','인생이란 뭘까?','1111',now(),142,3,0,0,'멀리서보면 희극 가까이에서보면 비극이 아닐까? '
,'0:0:0:0:0:0:0:1');
insert into concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[diary]','aaa@asianaidt.com','공부..해야할까요?','111',now(),129,2,0,0,'요즘실력이부족하다는 걸 많이 느껴요..따로..공부해야할까요?'
,'0:0:0:0:0:0:0:1');
insert into  concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[diary]','ccc@asianaidt.com','결혼문제','1111',now(),996,3,0,0,'결혼하려니 결혼식 잡는 것도 만만치가 않네요...'
,'0:0:0:0:0:0:0:1');
insert into  concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[diary]','bbb@asianaidt.com','고객클레임','1111',now(),200,3,0,0,'고객클레임때문에 스트레스받을떄가 많아요 ㅠ 혹시 잘 대처하는 법 아시나요?'
,'0:0:0:0:0:0:0:1');
insert into  concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[diary]','abc@asianaidt.com','지하철에서','1111',now(),185,3,0,0,'오늘 지하철 너무 사람이 많았어요...출퇴근시간을 바꿔야할까요?'
,'0:0:0:0:0:0:0:1');
insert into  concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[diary]','kka@asianaidt.com','벌레..','1111',now(),179,3,0,0,'요즘 밤만되면 벌레들이 달라붙어요..씻고 자는데 ㅠㅠ뭐가문제일까요?'
,'0:0:0:0:0:0:0:1');

insert into  concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[family]','aaa@asianaidt.com','자식교육','1111',now(),222,3,0,0,'자식 교육이 쉽지가 않네요...잘키우고 싶은데..처음이라 여러 시행착오가 많네요'
,'0:0:0:0:0:0:0:1');
insert into  concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[family]','fff@asianaidt.com','병원','1111',now(),142,3,0,0,'부모님께서 병원에 많이 가시기 시작하니 마음이 아픕니다.'
,'0:0:0:0:0:0:0:1');
insert into concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[family]','aaa@asianaidt.com','애완동물','111',now(),129,2,0,0,'혼자사는데 강아지가 너무 키우고 싶어요. 강아지한테는 좋은 환경이 아니겠죠..?'
,'0:0:0:0:0:0:0:1');
insert into  concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[family]','ccc@asianaidt.com','깨끗해요!','1111',now(),996,3,0,0,'사람들과 도란도란 앉아서 얘기나누는 것은 좋지만 너무 좁다는 느낌이 들어요'
,'0:0:0:0:0:0:0:1');
insert into  concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[family]','bbb@asianaidt.com','완전건강식!','1111',now(),200,3,0,0,'김치나베 국물이 너무 짜요 ㅠㅠㅠ 아쉬워요'
,'0:0:0:0:0:0:0:1');
insert into  concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[family]','abc@asianaidt.com','해장국으로제격','1111',now(),185,3,0,0,'1층에 해장국집있는데 진짜 맛있어요!! 그래서 살맛납니다 ㅎㅎ'
,'0:0:0:0:0:0:0:1');
insert into  concern_counseling (writer,email,subject,passwd,reg_date,readcount,ref,re_step,re_level,content,ip)
values('[family]','kka@asianaidt.com','별로에요','1111',now(),179,3,0,0,'한번 편의점가려먼 한 10분넘어 걸려요. 좀 불편합니다.'
,'0:0:0:0:0:0:0:1');






