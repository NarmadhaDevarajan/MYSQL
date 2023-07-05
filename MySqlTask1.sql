show databases;
create database IMDB;
use imdb;
create table Movie_Info(Movie_id int not null ,
						Movie_name varchar(30) not null primary key,
                        Media varchar(30) ,Genre varchar(30),
                         User varchar(30) not null,Reviews varchar(500),
                         Artist_Name varchar(30),Roles varchar(30),Skills varchar(30));
show tables;
desc Movie_Info;
create table Reviews(Movie_name varchar(30) not null primary key,foreign key(Movie_name) references Movie_Info(Movie_name),
					 User varchar(30) not null,Reviews varchar(500));
create table Artists(Movie_name varchar(30) not null primary key,foreign key(Movie_name) references Movie_Info(Movie_name),
					 Artist_Name varchar(30),Roles varchar(30),Skills varchar(30));
show tables;
insert into Movie_Info values("1001","Nayakan","Video","Drama/Crime","Nandhu","Excellent","Kamalhasan","Hero","Actor/Comedian/Villan");
insert into Movie_Info values("1002","PariyerumPerumal","Video","Drama","Gayathri","Good","Mari Selvaraj","Director","Director/Writer");
insert into Movie_Info values("1003","JaiBhim","Video","Mistery/Drama/Crime","Selva","Super","Surya","Hero","Actor/Comedian/Villan");
insert into Movie_Info values("1004","Soorarai Pottru","Image","Drama/Action","Deva","Wonderfull","Surya","Actor","Hero/Comedian/Villan/Producer");
insert into Movie_Info values("1005","96","Video","Drama/Romance","Priya","Best","Thrisha","Actress","Heroine/Comedian");
insert into Movie_Info values("1006","kaithi","Video","Action/Adventure/Crime","Vani","Good","Karthi","Hero","Actor/Comedian");
insert into Movie_Info values("1007","Asuran","Image","Drama/Action","Raja","Good","Vikram","Hero","Actor/Producer/Singer");
insert into Movie_Info values("1008","Anniyan","Video","Action/Drama/Crime","Yuvan","Excellent","Dhanush","Hero","Actor/Producer/Director");
select * from Movie_Info order by Movie_Id asc;















