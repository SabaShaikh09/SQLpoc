use mydb;

create table author(
   id int primary key,
   name varchar (100)
   );
 INSERT INTO author VALUES ('123','James Bond'); 
  INSERT INTO author VALUES ('113','James Joyce');
 INSERT INTO author VALUES ('109','John Milton');
 INSERT INTO author VALUES ('110','Lord Byron');
 INSERT INTO author VALUES ('166','Alexander Pope');
 INSERT INTO author VALUES ('176','Venerable Bede');
 INSERT INTO author VALUES ('144','James Joyce');
 INSERT INTO author VALUES ('217','Geoffrey Chaucer');
 INSERT INTO author VALUES ('299','Alexander Pope');
 INSERT INTO author VALUES ('230','Charles Dickens');
 INSERT INTO author VALUES ('189','Rabindranath Tagore');
 INSERT INTO author VALUES ('210','James Bond');
 INSERT INTO author VALUES ('192','Rabindranath Tagore');
 INSERT INTO author VALUES ('211','William Shakespeare');
 INSERT INTO author VALUES ('382','Cynewulf');
 INSERT INTO author VALUES ('453','James Bond');
 INSERT INTO author VALUES ('345','Charles Dickens');
 
 
create table user (
id int primary key,
name varchar (100)
);

select * from user;
INSERT INTO user VALUES ('101','Saba'); 
INSERT INTO user VALUES ('102','AliHasan'); 

create table posts(
id int primary key auto_increment,
name varchar(100),
authorid int ,
createdts datetime,
foreign key (authorid) references author(id)

); 
INSERT INTO posts VALUES ('11','Boz','345','1998-12-03 03-55-55');
INSERT INTO posts VALUES ('09','Diamonds are forever','453','1998-11-28 04-16-33');
INSERT INTO posts VALUES ('05','Indian National Poet','192','1997-12-13 00-55-34');
INSERT INTO posts VALUES ('14','ThunderBall','210','1999-10-19 12-55-06');
INSERT INTO posts VALUES ('06','The Author of Christ','382','1998-02-17 05-43-58');
INSERT INTO posts VALUES ('15','Father of English Drama','211','2000-08-27 07-45-33');
INSERT INTO posts VALUES ('18','You only live twice','123','2000-04-25 03-13-13');

select * from posts;





create table comment (
id int primary key auto_increment,
content varchar(1000),
postsid int ,
createdts datetime,
userid int ,
foreign key (postsid)  references posts(id),
foreign key (userid)  references user(id)


);

select * from comment;
INSERT INTO comment VALUES ('1','You Only Live Twice is the eleventh novel in Ian Flemings ','18','1998-12-03 03-55-55','101');
INSERT INTO comment VALUES ('2','Thunderball is the ninth book in Ian Flemings','14','1998-05-06 03-14-15','102');
INSERT INTO comment VALUES ('3','Diamonds Are Forever is the fourth novel by the British author ','09','2000-05-06 03-14-15','101');
INSERT INTO comment VALUES ('4','Great book ','09','1889-05-06 03-45-15','101');
INSERT INTO comment VALUES ('5','Great ','06','1889-10-06 03-12-12','101');
INSERT INTO comment VALUES ('6','Awesome ','14','1889-10-06 03-12-12','102');
INSERT INTO comment VALUES ('7','Good ','15','1889-10-06 03-12-12','102');
select * from author;

SELECT * FROM comment
WHERE id IN (SELECT id FROM comment WHERE createdts = (SELECT MAX(createdts) FROM comment))
ORDER BY createdts
 in(select id  from posts where name in(select name from author where name="James Bond" group by name)) limit 10;

   
   